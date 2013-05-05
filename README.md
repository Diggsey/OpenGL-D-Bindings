OpenGL-D-Bindings
=================

Up to date stand-alone opengl bindings for the D programming language


Generating:
-----------

The bindings are generated directly from the opengl specification. First the specification
is converted to XML format using https://bitbucket.org/alfonse/gl-xml-specs/overview. A
prebuilt XML file can be downloaded directly.

The generator is a simple C# program so will run on windows natively and on other
platforms with mono installed. It will look for "opengl.xml" and will output "gl.d" in the
current directory.


Using:
------

The simplest way to use it is just to include gl/gl.d in your project, and add the relevant
opengl library to your build path. You will then be able to use up to GL 1.1 with no
further initialisation, assuming you have a valid opengl context. To use later versions of
opengl, "loadGL" must be called.

import gl.gl;

// Windows, OpenGL 2.0, no extensions:
loadGL!(wglGetProcAddress, 2.0);

// X11, OpenGL 1.5, NV_vertex_program extension:
loadGL!(glXGetProcAddress, 1.5, "NV_vertex_program");
