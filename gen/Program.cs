using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace SpecToD
{
    class Program
    {
        static string[] keywords = {
            "abstract", "alias", "align", "asm", "assert", "auto", "body", "bool", "break", "byte", "case",
            "cast", "catch", "cdouble", "cent", "cfloat", "char", "class", "const", "continue", "creal",
            "dchar", "debug", "default", "delegate", "delete", "deprecated", "do", "double", "else", "enum",
            "export", "extern", "false", "final", "finally", "float", "for", "foreach", "foreach_reverse",
            "function", "goto", "idouble", "if", "ifloat", "immutable", "import", "in", "inout", "int",
            "interface", "invariant", "ireal", "is", "lazy", "long", "macro", "mixin", "module", "new",
            "nothrow", "null", "out", "override", "package", "pragma", "private", "protected", "public",
            "pure", "real", "ref", "return", "scope", "shared", "short", "static", "struct", "super",
            "switch", "synchronized", "template", "this", "throw", "true", "try", "typedef", "typeid",
            "typeof", "ubyte", "ucent", "uint", "ulong", "union", "unittest", "ushort", "version", "void",
            "volatile", "wchar", "while", "with", "__FILE__", "__MODULE__", "__LINE__", "__FUNCTION__",
            "__PRETTY_FUNCTION__", "__gshared", "__traits", "__vector", "__parameters"
            };

        static string[] structs = {
            "__GLsync",
            "_cl_context",
            "_cl_event"
            };

        static string[] aliases = {
            "uint       GLenum",
            "ubyte      GLboolean",
            "uint       GLbitfield",
            "byte       GLbyte",
            "short      GLshort",
            "int        GLint",
            "int        GLsizei",
            "ubyte      GLubyte",
            "ushort     GLushort",
            "uint       GLuint",
            "float      GLfloat",
            "float      GLclampf",
            "double     GLdouble",
            "double     GLclampd",
            "void       GLvoid",
            "char       GLchar",
            "ptrdiff_t  GLintptr",
            "ptrdiff_t  GLsizeiptr",
            "ptrdiff_t  GLintptrARB",
            "ptrdiff_t  GLsizeiptrARB",
            "char       GLcharARB",
            "uint       GLhandleARB",
            "ushort     GLhalfARB",
            "ushort     GLhalfNV",
            "long       GLint64EXT",
            "ulong      GLuint64EXT",
            "long       GLint64",
            "ulong      GLuint64",
            "__GLsync*  GLsync",
            "GLintptr   GLvdpauSurfaceNV",
            "GLint      GLfixed",
            "extern(System) void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROCARB",
            "extern(System) void function(GLuint id, GLenum category, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam)            GLDEBUGPROCAMD",
            "extern(System) void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROC",
            };

        static string safeName(string name)
        {
            while (keywords.Contains(name))
                name += "_";
            return name;
        }

        static void Main(string[] args)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("opengl.xml");

            StreamWriter writer = new StreamWriter("gl.d");

            Dictionary<string, string> typemap = new Dictionary<string, string>();

            XmlNodeList elems = doc.GetElementsByTagName("type-def");
            foreach (XmlElement elem in elems)
            {
                string dType = elem.GetAttribute("C-lang");
                dType = dType.Replace("const ", "").Replace(" const", "").Replace("const", "").Replace("struct ", "");
                typemap.Add(elem.GetAttribute("typename"), dType);
            }

            SortedDictionary<string, XmlElement> enumlist = new SortedDictionary<string,XmlElement>();
            Dictionary<string, XmlElement> enummap = new Dictionary<string, XmlElement>();
            elems = doc.GetElementsByTagName("enum");
            foreach (XmlElement elem in elems)
            {
                if (elem.HasAttribute("version"))
                    enumlist.Add(elem.GetAttribute("version") + ":" + elem.GetAttribute("name"), elem);
                else
                    enumlist.Add("EXT:" + elem.GetAttribute("name"), elem);
                enummap[elem.GetAttribute("name")] = elem;
            }

            writer.WriteLine("// Written in the D programming language.");
            writer.WriteLine("module gl.gl;");
            writer.WriteLine();
            writer.WriteLine("import std.algorithm;");
            writer.WriteLine("import std.traits;");
            writer.WriteLine();

            writer.WriteLine("// Opaque structs");
            foreach (string structt in structs)
                writer.WriteLine("struct " + structt + ";");
            writer.WriteLine();
            writer.WriteLine("// GL Types");
            foreach (string alias in aliases)
                writer.WriteLine("alias " + alias + ";");
            writer.WriteLine();

            writer.WriteLine("// GL constants");
            writer.WriteLine("enum {");
            int gapSize = 56;
            string prevVersion = null;
            foreach (XmlElement elem in enumlist.Values)
            {
                string version = elem.GetAttribute("version");
                if (version != prevVersion)
                {
                    writer.WriteLine();
                    if (version != "")
                        writer.WriteLine("\t// GL " + version);
                    else
                        writer.WriteLine("\t// GLEXT");
                    prevVersion = version;
                }

                string name = "GL_" + elem.GetAttribute("name");

                XmlElement elem2 = elem;
                while (elem2.HasAttribute("ref"))
                    elem2 = enummap[elem2.GetAttribute("ref")];

                string value = elem2.GetAttribute("value");

                writer.WriteLine("\t" + name.PadRight(gapSize) + " = " + value + ",");
            }
            writer.WriteLine("}");
            writer.WriteLine();
            writer.WriteLine("// GL functions");
            writer.WriteLine("extern(System) {");

            SortedDictionary<string, XmlElement> functionlist = new SortedDictionary<string, XmlElement>();
            elems = doc.GetElementsByTagName("function");
            foreach (XmlElement elem in elems)
            {
                string category = elem.GetAttribute("category");
                if (category.StartsWith("VERSION_"))
                    functionlist.Add(elem.GetAttribute("version") + ":" + elem.GetAttribute("name"), elem);
                else
                    functionlist.Add(elem.GetAttribute("category") + ":" + elem.GetAttribute("name"), elem);
            }

            bool hasOpened = false;
            prevVersion = null;
            List<string> loaderCode = new List<string>();
            foreach (XmlElement elem in functionlist.Values)
            {
                string version = elem.GetAttribute("category");
                if (version.StartsWith("VERSION_"))
                    version = elem.GetAttribute("version");

                if (version != prevVersion)
                {
                    writer.WriteLine();
                    if (version != "")
                    {
                        writer.WriteLine("\t// GL " + version);
                        decimal decver;
                        if (decimal.TryParse(version, out decver))
                        {
                            if (decver > 1.1m)
                            {
                                if (hasOpened)
                                    loaderCode.Add("\t\t}");
                                loaderCode.Add("\t\t// GL " + version);
                                loaderCode.Add("\t\tstatic if (glver >= " + decver + ") {");
                                hasOpened = true;
                            }
                        }
                        else
                        {
                            if (hasOpened)
                                loaderCode.Add("\t\t}");
                            loaderCode.Add("\t\t// GL " + version);
                            loaderCode.Add("\t\tstatic if (usingExt(`" + version + "`)) {");
                            hasOpened = true;
                        }
                    }
                    else
                    {
                        loaderCode.Add("\t// GLEXT");
                        writer.WriteLine("\t// GLEXT");
                    }
                    prevVersion = version;
                }

                string name = "gl" + elem.GetAttribute("name");
                string returnType = typemap[elem.GetAttribute("return")];
                if (returnType == "*")
                    returnType = "void";

                XmlNodeList paramnodes = elem.GetElementsByTagName("param");
                string paramlist = "";
                foreach (XmlElement paramelem in paramnodes)
                {
                    if (paramlist.Length > 0)
                        paramlist += ", ";
                    string paramtype = typemap[paramelem.GetAttribute("type")];
                    if (paramtype == "*")
                        paramtype = "void";

                    switch (paramelem.GetAttribute("kind"))
                    {
                        case "array":
                        case "reference":
                            if (paramelem.GetAttribute("input") == "true")
                                paramtype = "const(" + paramtype + ")";
                            paramtype += "*";
                            break;
                        case "value":
                            break;
                        default:
                            Console.WriteLine("Unrecognised parameter kind: " + paramelem.GetAttribute("kind"));
                            break;
                    }

                    paramlist += paramtype + " " + safeName(paramelem.GetAttribute("name"));
                }

                if (version == "1.0" || version == "1.1")
                {
                    writer.WriteLine("\t" + returnType + " " + name + "(" + paramlist + ");");
                }
                else
                {
                    loaderCode.Add("\t\t\tbindFunc!(" + name + ");");
                    writer.WriteLine("\t" + returnType + " function" + "(" + paramlist + ") " + name + ";");
                }
            }
            if (hasOpened)
                loaderCode.Add("\t\t}");

            writer.WriteLine("}");

            writer.WriteLine("// GL loader");
            writer.WriteLine("template loadGL(alias binder, double glver, extensions...) {");
            writer.WriteLine("\ttemplate bindFunc(alias fptr) {");
            writer.WriteLine("\t\tvoid bindFunc() {");
            writer.WriteLine("\t\t\tfptr = cast(typeof(fptr))binder(__traits(identifier, fptr).ptr);");
            writer.WriteLine("\t\t}");
            writer.WriteLine("\t}");
            writer.WriteLine("\tvoid loadGL() {");
            writer.WriteLine("\t\tstatic bool usingExt(string name) {");
            writer.WriteLine("\t\t\tstatic if (extensions.length) {");
            writer.WriteLine("\t\t\t\treturn [extensions[]].canFind(name);");
            writer.WriteLine("\t\t\t} else {");
            writer.WriteLine("\t\t\t\treturn false;");
            writer.WriteLine("\t\t\t}");
            writer.WriteLine("\t\t}");
            foreach (string line in loaderCode)
            {
                writer.WriteLine(line);
            }
            writer.WriteLine("\t}");
            writer.WriteLine("}");

            writer.Close();

        }
    }
}
