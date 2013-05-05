// Written in the D programming language.
module gl.gl;

import std.algorithm;

// Opaque structs
struct __GLsync;
struct _cl_context;
struct _cl_event;

// GL Types
alias uint       GLenum;
alias ubyte      GLboolean;
alias uint       GLbitfield;
alias byte       GLbyte;
alias short      GLshort;
alias int        GLint;
alias int        GLsizei;
alias ubyte      GLubyte;
alias ushort     GLushort;
alias uint       GLuint;
alias float      GLfloat;
alias float      GLclampf;
alias double     GLdouble;
alias double     GLclampd;
alias void       GLvoid;
alias char       GLchar;
alias ptrdiff_t  GLintptr;
alias ptrdiff_t  GLsizeiptr;
alias ptrdiff_t  GLintptrARB;
alias ptrdiff_t  GLsizeiptrARB;
alias char       GLcharARB;
alias uint       GLhandleARB;
alias ushort     GLhalfARB;
alias ushort     GLhalfNV;
alias long       GLint64EXT;
alias ulong      GLuint64EXT;
alias long       GLint64;
alias ulong      GLuint64;
alias __GLsync*  GLsync;
alias GLintptr   GLvdpauSurfaceNV;
alias GLint      GLfixed;
alias extern(System) void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROCARB;
alias extern(System) void function(GLuint id, GLenum category, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam)            GLDEBUGPROCAMD;
alias extern(System) void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* message, GLvoid* userParam) GLDEBUGPROC;

// GL constants
enum {

	// GL 1.1
	GL_2_BYTES                                               = 0x1407,
	GL_2D                                                    = 0x0600,
	GL_3_BYTES                                               = 0x1408,
	GL_3D                                                    = 0x0601,
	GL_3D_COLOR                                              = 0x0602,
	GL_3D_COLOR_TEXTURE                                      = 0x0603,
	GL_4_BYTES                                               = 0x1409,
	GL_4D_COLOR_TEXTURE                                      = 0x0604,
	GL_ACCUM                                                 = 0x0100,
	GL_ACCUM_ALPHA_BITS                                      = 0x0D5B,
	GL_ACCUM_BLUE_BITS                                       = 0x0D5A,
	GL_ACCUM_BUFFER_BIT                                      = 0x00000200,
	GL_ACCUM_CLEAR_VALUE                                     = 0x0B80,
	GL_ACCUM_GREEN_BITS                                      = 0x0D59,
	GL_ACCUM_RED_BITS                                        = 0x0D58,
	GL_ADD                                                   = 0x0104,
	GL_ALL_ATTRIB_BITS                                       = 0xFFFFFFFF,
	GL_ALPHA                                                 = 0x1906,
	GL_ALPHA_BIAS                                            = 0x0D1D,
	GL_ALPHA_BITS                                            = 0x0D55,
	GL_ALPHA_SCALE                                           = 0x0D1C,
	GL_ALPHA_TEST                                            = 0x0BC0,
	GL_ALPHA_TEST_FUNC                                       = 0x0BC1,
	GL_ALPHA_TEST_REF                                        = 0x0BC2,
	GL_ALPHA12                                               = 0x803D,
	GL_ALPHA16                                               = 0x803E,
	GL_ALPHA4                                                = 0x803B,
	GL_ALPHA8                                                = 0x803C,
	GL_ALWAYS                                                = 0x0207,
	GL_AMBIENT                                               = 0x1200,
	GL_AMBIENT_AND_DIFFUSE                                   = 0x1602,
	GL_AND                                                   = 0x1501,
	GL_AND_INVERTED                                          = 0x1504,
	GL_AND_REVERSE                                           = 0x1502,
	GL_ATTRIB_STACK_DEPTH                                    = 0x0BB0,
	GL_AUTO_NORMAL                                           = 0x0D80,
	GL_AUX_BUFFERS                                           = 0x0C00,
	GL_AUX0                                                  = 0x0409,
	GL_AUX1                                                  = 0x040A,
	GL_AUX2                                                  = 0x040B,
	GL_AUX3                                                  = 0x040C,
	GL_BACK                                                  = 0x0405,
	GL_BACK_LEFT                                             = 0x0402,
	GL_BACK_RIGHT                                            = 0x0403,
	GL_BITMAP                                                = 0x1A00,
	GL_BITMAP_TOKEN                                          = 0x0704,
	GL_BLEND                                                 = 0x0BE2,
	GL_BLEND_DST                                             = 0x0BE0,
	GL_BLEND_SRC                                             = 0x0BE1,
	GL_BLUE                                                  = 0x1905,
	GL_BLUE_BIAS                                             = 0x0D1B,
	GL_BLUE_BITS                                             = 0x0D54,
	GL_BLUE_SCALE                                            = 0x0D1A,
	GL_BYTE                                                  = 0x1400,
	GL_C3F_V3F                                               = 0x2A24,
	GL_C4F_N3F_V3F                                           = 0x2A26,
	GL_C4UB_V2F                                              = 0x2A22,
	GL_C4UB_V3F                                              = 0x2A23,
	GL_CCW                                                   = 0x0901,
	GL_CLAMP                                                 = 0x2900,
	GL_CLEAR                                                 = 0x1500,
	GL_CLIENT_ALL_ATTRIB_BITS                                = 0xFFFFFFFF,
	GL_CLIENT_ATTRIB_STACK_DEPTH                             = 0x0BB1,
	GL_CLIENT_PIXEL_STORE_BIT                                = 0x00000001,
	GL_CLIENT_VERTEX_ARRAY_BIT                               = 0x00000002,
	GL_CLIP_PLANE0                                           = 0x3000,
	GL_CLIP_PLANE1                                           = 0x3001,
	GL_CLIP_PLANE2                                           = 0x3002,
	GL_CLIP_PLANE3                                           = 0x3003,
	GL_CLIP_PLANE4                                           = 0x3004,
	GL_CLIP_PLANE5                                           = 0x3005,
	GL_COEFF                                                 = 0x0A00,
	GL_COLOR                                                 = 0x1800,
	GL_COLOR_ARRAY                                           = 0x8076,
	GL_COLOR_ARRAY_POINTER                                   = 0x8090,
	GL_COLOR_ARRAY_SIZE                                      = 0x8081,
	GL_COLOR_ARRAY_STRIDE                                    = 0x8083,
	GL_COLOR_ARRAY_TYPE                                      = 0x8082,
	GL_COLOR_BUFFER_BIT                                      = 0x00004000,
	GL_COLOR_CLEAR_VALUE                                     = 0x0C22,
	GL_COLOR_INDEX                                           = 0x1900,
	GL_COLOR_INDEXES                                         = 0x1603,
	GL_COLOR_LOGIC_OP                                        = 0x0BF2,
	GL_COLOR_MATERIAL                                        = 0x0B57,
	GL_COLOR_MATERIAL_FACE                                   = 0x0B55,
	GL_COLOR_MATERIAL_PARAMETER                              = 0x0B56,
	GL_COLOR_WRITEMASK                                       = 0x0C23,
	GL_COMPILE                                               = 0x1300,
	GL_COMPILE_AND_EXECUTE                                   = 0x1301,
	GL_CONSTANT_ATTENUATION                                  = 0x1207,
	GL_COPY                                                  = 0x1503,
	GL_COPY_INVERTED                                         = 0x150C,
	GL_COPY_PIXEL_TOKEN                                      = 0x0706,
	GL_CULL_FACE                                             = 0x0B44,
	GL_CULL_FACE_MODE                                        = 0x0B45,
	GL_CURRENT_BIT                                           = 0x00000001,
	GL_CURRENT_COLOR                                         = 0x0B00,
	GL_CURRENT_INDEX                                         = 0x0B01,
	GL_CURRENT_NORMAL                                        = 0x0B02,
	GL_CURRENT_RASTER_COLOR                                  = 0x0B04,
	GL_CURRENT_RASTER_DISTANCE                               = 0x0B09,
	GL_CURRENT_RASTER_INDEX                                  = 0x0B05,
	GL_CURRENT_RASTER_POSITION                               = 0x0B07,
	GL_CURRENT_RASTER_POSITION_VALID                         = 0x0B08,
	GL_CURRENT_RASTER_TEXTURE_COORDS                         = 0x0B06,
	GL_CURRENT_TEXTURE_COORDS                                = 0x0B03,
	GL_CW                                                    = 0x0900,
	GL_DECAL                                                 = 0x2101,
	GL_DECR                                                  = 0x1E03,
	GL_DEPTH                                                 = 0x1801,
	GL_DEPTH_BIAS                                            = 0x0D1F,
	GL_DEPTH_BITS                                            = 0x0D56,
	GL_DEPTH_BUFFER_BIT                                      = 0x00000100,
	GL_DEPTH_CLEAR_VALUE                                     = 0x0B73,
	GL_DEPTH_COMPONENT                                       = 0x1902,
	GL_DEPTH_FUNC                                            = 0x0B74,
	GL_DEPTH_RANGE                                           = 0x0B70,
	GL_DEPTH_SCALE                                           = 0x0D1E,
	GL_DEPTH_TEST                                            = 0x0B71,
	GL_DEPTH_WRITEMASK                                       = 0x0B72,
	GL_DIFFUSE                                               = 0x1201,
	GL_DITHER                                                = 0x0BD0,
	GL_DOMAIN                                                = 0x0A02,
	GL_DONT_CARE                                             = 0x1100,
	GL_DOUBLE                                                = 0x140A,
	GL_DOUBLEBUFFER                                          = 0x0C32,
	GL_DRAW_BUFFER                                           = 0x0C01,
	GL_DRAW_PIXEL_TOKEN                                      = 0x0705,
	GL_DST_ALPHA                                             = 0x0304,
	GL_DST_COLOR                                             = 0x0306,
	GL_EDGE_FLAG                                             = 0x0B43,
	GL_EDGE_FLAG_ARRAY                                       = 0x8079,
	GL_EDGE_FLAG_ARRAY_POINTER                               = 0x8093,
	GL_EDGE_FLAG_ARRAY_STRIDE                                = 0x808C,
	GL_EMISSION                                              = 0x1600,
	GL_ENABLE_BIT                                            = 0x00002000,
	GL_EQUAL                                                 = 0x0202,
	GL_EQUIV                                                 = 0x1509,
	GL_EVAL_BIT                                              = 0x00010000,
	GL_EXP                                                   = 0x0800,
	GL_EXP2                                                  = 0x0801,
	GL_EXTENSIONS                                            = 0x1F03,
	GL_EYE_LINEAR                                            = 0x2400,
	GL_EYE_PLANE                                             = 0x2502,
	GL_FALSE                                                 = 0,
	GL_FASTEST                                               = 0x1101,
	GL_FEEDBACK                                              = 0x1C01,
	GL_FEEDBACK_BUFFER_POINTER                               = 0x0DF0,
	GL_FEEDBACK_BUFFER_SIZE                                  = 0x0DF1,
	GL_FEEDBACK_BUFFER_TYPE                                  = 0x0DF2,
	GL_FILL                                                  = 0x1B02,
	GL_FLAT                                                  = 0x1D00,
	GL_FLOAT                                                 = 0x1406,
	GL_FOG                                                   = 0x0B60,
	GL_FOG_BIT                                               = 0x00000080,
	GL_FOG_COLOR                                             = 0x0B66,
	GL_FOG_DENSITY                                           = 0x0B62,
	GL_FOG_END                                               = 0x0B64,
	GL_FOG_HINT                                              = 0x0C54,
	GL_FOG_INDEX                                             = 0x0B61,
	GL_FOG_MODE                                              = 0x0B65,
	GL_FOG_START                                             = 0x0B63,
	GL_FRONT                                                 = 0x0404,
	GL_FRONT_AND_BACK                                        = 0x0408,
	GL_FRONT_FACE                                            = 0x0B46,
	GL_FRONT_LEFT                                            = 0x0400,
	GL_FRONT_RIGHT                                           = 0x0401,
	GL_GEQUAL                                                = 0x0206,
	GL_GREATER                                               = 0x0204,
	GL_GREEN                                                 = 0x1904,
	GL_GREEN_BIAS                                            = 0x0D19,
	GL_GREEN_BITS                                            = 0x0D53,
	GL_GREEN_SCALE                                           = 0x0D18,
	GL_HINT_BIT                                              = 0x00008000,
	GL_INCR                                                  = 0x1E02,
	GL_INDEX_ARRAY                                           = 0x8077,
	GL_INDEX_ARRAY_POINTER                                   = 0x8091,
	GL_INDEX_ARRAY_STRIDE                                    = 0x8086,
	GL_INDEX_ARRAY_TYPE                                      = 0x8085,
	GL_INDEX_BITS                                            = 0x0D51,
	GL_INDEX_CLEAR_VALUE                                     = 0x0C20,
	GL_INDEX_LOGIC_OP                                        = 0x0BF1,
	GL_INDEX_MODE                                            = 0x0C30,
	GL_INDEX_OFFSET                                          = 0x0D13,
	GL_INDEX_SHIFT                                           = 0x0D12,
	GL_INDEX_WRITEMASK                                       = 0x0C21,
	GL_INT                                                   = 0x1404,
	GL_INTENSITY                                             = 0x8049,
	GL_INTENSITY12                                           = 0x804C,
	GL_INTENSITY16                                           = 0x804D,
	GL_INTENSITY4                                            = 0x804A,
	GL_INTENSITY8                                            = 0x804B,
	GL_INVALID_ENUM                                          = 0x0500,
	GL_INVALID_OPERATION                                     = 0x0502,
	GL_INVALID_VALUE                                         = 0x0501,
	GL_INVERT                                                = 0x150A,
	GL_KEEP                                                  = 0x1E00,
	GL_LEFT                                                  = 0x0406,
	GL_LEQUAL                                                = 0x0203,
	GL_LESS                                                  = 0x0201,
	GL_LIGHT_MODEL_AMBIENT                                   = 0x0B53,
	GL_LIGHT_MODEL_LOCAL_VIEWER                              = 0x0B51,
	GL_LIGHT_MODEL_TWO_SIDE                                  = 0x0B52,
	GL_LIGHT0                                                = 0x4000,
	GL_LIGHT1                                                = 0x4001,
	GL_LIGHT2                                                = 0x4002,
	GL_LIGHT3                                                = 0x4003,
	GL_LIGHT4                                                = 0x4004,
	GL_LIGHT5                                                = 0x4005,
	GL_LIGHT6                                                = 0x4006,
	GL_LIGHT7                                                = 0x4007,
	GL_LIGHTING                                              = 0x0B50,
	GL_LIGHTING_BIT                                          = 0x00000040,
	GL_LINE                                                  = 0x1B01,
	GL_LINE_BIT                                              = 0x00000004,
	GL_LINE_LOOP                                             = 0x0002,
	GL_LINE_RESET_TOKEN                                      = 0x0707,
	GL_LINE_SMOOTH                                           = 0x0B20,
	GL_LINE_SMOOTH_HINT                                      = 0x0C52,
	GL_LINE_STIPPLE                                          = 0x0B24,
	GL_LINE_STIPPLE_PATTERN                                  = 0x0B25,
	GL_LINE_STIPPLE_REPEAT                                   = 0x0B26,
	GL_LINE_STRIP                                            = 0x0003,
	GL_LINE_TOKEN                                            = 0x0702,
	GL_LINE_WIDTH                                            = 0x0B21,
	GL_LINE_WIDTH_GRANULARITY                                = 0x0B23,
	GL_LINE_WIDTH_RANGE                                      = 0x0B22,
	GL_LINEAR                                                = 0x2601,
	GL_LINEAR_ATTENUATION                                    = 0x1208,
	GL_LINEAR_MIPMAP_LINEAR                                  = 0x2703,
	GL_LINEAR_MIPMAP_NEAREST                                 = 0x2701,
	GL_LINES                                                 = 0x0001,
	GL_LIST_BASE                                             = 0x0B32,
	GL_LIST_BIT                                              = 0x00020000,
	GL_LIST_INDEX                                            = 0x0B33,
	GL_LIST_MODE                                             = 0x0B30,
	GL_LOAD                                                  = 0x0101,
	GL_LOGIC_OP                                              = 0x0BF1,
	GL_LOGIC_OP_MODE                                         = 0x0BF0,
	GL_LUMINANCE                                             = 0x1909,
	GL_LUMINANCE_ALPHA                                       = 0x190A,
	GL_LUMINANCE12                                           = 0x8041,
	GL_LUMINANCE12_ALPHA12                                   = 0x8047,
	GL_LUMINANCE12_ALPHA4                                    = 0x8046,
	GL_LUMINANCE16                                           = 0x8042,
	GL_LUMINANCE16_ALPHA16                                   = 0x8048,
	GL_LUMINANCE4                                            = 0x803F,
	GL_LUMINANCE4_ALPHA4                                     = 0x8043,
	GL_LUMINANCE6_ALPHA2                                     = 0x8044,
	GL_LUMINANCE8                                            = 0x8040,
	GL_LUMINANCE8_ALPHA8                                     = 0x8045,
	GL_MAP_COLOR                                             = 0x0D10,
	GL_MAP_STENCIL                                           = 0x0D11,
	GL_MAP1_COLOR_4                                          = 0x0D90,
	GL_MAP1_GRID_DOMAIN                                      = 0x0DD0,
	GL_MAP1_GRID_SEGMENTS                                    = 0x0DD1,
	GL_MAP1_INDEX                                            = 0x0D91,
	GL_MAP1_NORMAL                                           = 0x0D92,
	GL_MAP1_TEXTURE_COORD_1                                  = 0x0D93,
	GL_MAP1_TEXTURE_COORD_2                                  = 0x0D94,
	GL_MAP1_TEXTURE_COORD_3                                  = 0x0D95,
	GL_MAP1_TEXTURE_COORD_4                                  = 0x0D96,
	GL_MAP1_VERTEX_3                                         = 0x0D97,
	GL_MAP1_VERTEX_4                                         = 0x0D98,
	GL_MAP2_COLOR_4                                          = 0x0DB0,
	GL_MAP2_GRID_DOMAIN                                      = 0x0DD2,
	GL_MAP2_GRID_SEGMENTS                                    = 0x0DD3,
	GL_MAP2_INDEX                                            = 0x0DB1,
	GL_MAP2_NORMAL                                           = 0x0DB2,
	GL_MAP2_TEXTURE_COORD_1                                  = 0x0DB3,
	GL_MAP2_TEXTURE_COORD_2                                  = 0x0DB4,
	GL_MAP2_TEXTURE_COORD_3                                  = 0x0DB5,
	GL_MAP2_TEXTURE_COORD_4                                  = 0x0DB6,
	GL_MAP2_VERTEX_3                                         = 0x0DB7,
	GL_MAP2_VERTEX_4                                         = 0x0DB8,
	GL_MATRIX_MODE                                           = 0x0BA0,
	GL_MAX_ATTRIB_STACK_DEPTH                                = 0x0D35,
	GL_MAX_CLIENT_ATTRIB_STACK_DEPTH                         = 0x0D3B,
	GL_MAX_CLIP_PLANES                                       = 0x0D32,
	GL_MAX_EVAL_ORDER                                        = 0x0D30,
	GL_MAX_LIGHTS                                            = 0x0D31,
	GL_MAX_LIST_NESTING                                      = 0x0B31,
	GL_MAX_MODELVIEW_STACK_DEPTH                             = 0x0D36,
	GL_MAX_NAME_STACK_DEPTH                                  = 0x0D37,
	GL_MAX_PIXEL_MAP_TABLE                                   = 0x0D34,
	GL_MAX_PROJECTION_STACK_DEPTH                            = 0x0D38,
	GL_MAX_TEXTURE_SIZE                                      = 0x0D33,
	GL_MAX_TEXTURE_STACK_DEPTH                               = 0x0D39,
	GL_MAX_VIEWPORT_DIMS                                     = 0x0D3A,
	GL_MODELVIEW                                             = 0x1700,
	GL_MODELVIEW_MATRIX                                      = 0x0BA6,
	GL_MODELVIEW_STACK_DEPTH                                 = 0x0BA3,
	GL_MODULATE                                              = 0x2100,
	GL_MULT                                                  = 0x0103,
	GL_N3F_V3F                                               = 0x2A25,
	GL_NAME_STACK_DEPTH                                      = 0x0D70,
	GL_NAND                                                  = 0x150E,
	GL_NEAREST                                               = 0x2600,
	GL_NEAREST_MIPMAP_LINEAR                                 = 0x2702,
	GL_NEAREST_MIPMAP_NEAREST                                = 0x2700,
	GL_NEVER                                                 = 0x0200,
	GL_NICEST                                                = 0x1102,
	GL_NO_ERROR                                              = 0,
	GL_NONE                                                  = 0,
	GL_NOOP                                                  = 0x1505,
	GL_NOR                                                   = 0x1508,
	GL_NORMAL_ARRAY                                          = 0x8075,
	GL_NORMAL_ARRAY_POINTER                                  = 0x808F,
	GL_NORMAL_ARRAY_STRIDE                                   = 0x807F,
	GL_NORMAL_ARRAY_TYPE                                     = 0x807E,
	GL_NORMALIZE                                             = 0x0BA1,
	GL_NOTEQUAL                                              = 0x0205,
	GL_OBJECT_LINEAR                                         = 0x2401,
	GL_OBJECT_PLANE                                          = 0x2501,
	GL_ONE                                                   = 1,
	GL_ONE_MINUS_DST_ALPHA                                   = 0x0305,
	GL_ONE_MINUS_DST_COLOR                                   = 0x0307,
	GL_ONE_MINUS_SRC_ALPHA                                   = 0x0303,
	GL_ONE_MINUS_SRC_COLOR                                   = 0x0301,
	GL_OR                                                    = 0x1507,
	GL_OR_INVERTED                                           = 0x150D,
	GL_OR_REVERSE                                            = 0x150B,
	GL_ORDER                                                 = 0x0A01,
	GL_OUT_OF_MEMORY                                         = 0x0505,
	GL_PACK_ALIGNMENT                                        = 0x0D05,
	GL_PACK_LSB_FIRST                                        = 0x0D01,
	GL_PACK_ROW_LENGTH                                       = 0x0D02,
	GL_PACK_SKIP_PIXELS                                      = 0x0D04,
	GL_PACK_SKIP_ROWS                                        = 0x0D03,
	GL_PACK_SWAP_BYTES                                       = 0x0D00,
	GL_PASS_THROUGH_TOKEN                                    = 0x0700,
	GL_PERSPECTIVE_CORRECTION_HINT                           = 0x0C50,
	GL_PIXEL_MAP_A_TO_A                                      = 0x0C79,
	GL_PIXEL_MAP_A_TO_A_SIZE                                 = 0x0CB9,
	GL_PIXEL_MAP_B_TO_B                                      = 0x0C78,
	GL_PIXEL_MAP_B_TO_B_SIZE                                 = 0x0CB8,
	GL_PIXEL_MAP_G_TO_G                                      = 0x0C77,
	GL_PIXEL_MAP_G_TO_G_SIZE                                 = 0x0CB7,
	GL_PIXEL_MAP_I_TO_A                                      = 0x0C75,
	GL_PIXEL_MAP_I_TO_A_SIZE                                 = 0x0CB5,
	GL_PIXEL_MAP_I_TO_B                                      = 0x0C74,
	GL_PIXEL_MAP_I_TO_B_SIZE                                 = 0x0CB4,
	GL_PIXEL_MAP_I_TO_G                                      = 0x0C73,
	GL_PIXEL_MAP_I_TO_G_SIZE                                 = 0x0CB3,
	GL_PIXEL_MAP_I_TO_I                                      = 0x0C70,
	GL_PIXEL_MAP_I_TO_I_SIZE                                 = 0x0CB0,
	GL_PIXEL_MAP_I_TO_R                                      = 0x0C72,
	GL_PIXEL_MAP_I_TO_R_SIZE                                 = 0x0CB2,
	GL_PIXEL_MAP_R_TO_R                                      = 0x0C76,
	GL_PIXEL_MAP_R_TO_R_SIZE                                 = 0x0CB6,
	GL_PIXEL_MAP_S_TO_S                                      = 0x0C71,
	GL_PIXEL_MAP_S_TO_S_SIZE                                 = 0x0CB1,
	GL_PIXEL_MODE_BIT                                        = 0x00000020,
	GL_POINT                                                 = 0x1B00,
	GL_POINT_BIT                                             = 0x00000002,
	GL_POINT_SIZE                                            = 0x0B11,
	GL_POINT_SIZE_GRANULARITY                                = 0x0B13,
	GL_POINT_SIZE_RANGE                                      = 0x0B12,
	GL_POINT_SMOOTH                                          = 0x0B10,
	GL_POINT_SMOOTH_HINT                                     = 0x0C51,
	GL_POINT_TOKEN                                           = 0x0701,
	GL_POINTS                                                = 0x0000,
	GL_POLYGON                                               = 0x0009,
	GL_POLYGON_BIT                                           = 0x00000008,
	GL_POLYGON_MODE                                          = 0x0B40,
	GL_POLYGON_OFFSET_FACTOR                                 = 0x8038,
	GL_POLYGON_OFFSET_FILL                                   = 0x8037,
	GL_POLYGON_OFFSET_LINE                                   = 0x2A02,
	GL_POLYGON_OFFSET_POINT                                  = 0x2A01,
	GL_POLYGON_OFFSET_UNITS                                  = 0x2A00,
	GL_POLYGON_SMOOTH                                        = 0x0B41,
	GL_POLYGON_SMOOTH_HINT                                   = 0x0C53,
	GL_POLYGON_STIPPLE                                       = 0x0B42,
	GL_POLYGON_STIPPLE_BIT                                   = 0x00000010,
	GL_POLYGON_TOKEN                                         = 0x0703,
	GL_POSITION                                              = 0x1203,
	GL_PROJECTION                                            = 0x1701,
	GL_PROJECTION_MATRIX                                     = 0x0BA7,
	GL_PROJECTION_STACK_DEPTH                                = 0x0BA4,
	GL_PROXY_TEXTURE_1D                                      = 0x8063,
	GL_PROXY_TEXTURE_2D                                      = 0x8064,
	GL_Q                                                     = 0x2003,
	GL_QUAD_STRIP                                            = 0x0008,
	GL_QUADRATIC_ATTENUATION                                 = 0x1209,
	GL_QUADS                                                 = 0x0007,
	GL_R                                                     = 0x2002,
	GL_R3_G3_B2                                              = 0x2A10,
	GL_READ_BUFFER                                           = 0x0C02,
	GL_RED                                                   = 0x1903,
	GL_RED_BIAS                                              = 0x0D15,
	GL_RED_BITS                                              = 0x0D52,
	GL_RED_SCALE                                             = 0x0D14,
	GL_RENDER                                                = 0x1C00,
	GL_RENDER_MODE                                           = 0x0C40,
	GL_RENDERER                                              = 0x1F01,
	GL_REPEAT                                                = 0x2901,
	GL_REPLACE                                               = 0x1E01,
	GL_RETURN                                                = 0x0102,
	GL_RGB                                                   = 0x1907,
	GL_RGB10                                                 = 0x8052,
	GL_RGB10_A2                                              = 0x8059,
	GL_RGB12                                                 = 0x8053,
	GL_RGB16                                                 = 0x8054,
	GL_RGB4                                                  = 0x804F,
	GL_RGB5                                                  = 0x8050,
	GL_RGB5_A1                                               = 0x8057,
	GL_RGB8                                                  = 0x8051,
	GL_RGBA                                                  = 0x1908,
	GL_RGBA_MODE                                             = 0x0C31,
	GL_RGBA12                                                = 0x805A,
	GL_RGBA16                                                = 0x805B,
	GL_RGBA2                                                 = 0x8055,
	GL_RGBA4                                                 = 0x8056,
	GL_RGBA8                                                 = 0x8058,
	GL_RIGHT                                                 = 0x0407,
	GL_S                                                     = 0x2000,
	GL_SCISSOR_BIT                                           = 0x00080000,
	GL_SCISSOR_BOX                                           = 0x0C10,
	GL_SCISSOR_TEST                                          = 0x0C11,
	GL_SELECT                                                = 0x1C02,
	GL_SELECTION_BUFFER_POINTER                              = 0x0DF3,
	GL_SELECTION_BUFFER_SIZE                                 = 0x0DF4,
	GL_SET                                                   = 0x150F,
	GL_SHADE_MODEL                                           = 0x0B54,
	GL_SHININESS                                             = 0x1601,
	GL_SHORT                                                 = 0x1402,
	GL_SMOOTH                                                = 0x1D01,
	GL_SPECULAR                                              = 0x1202,
	GL_SPHERE_MAP                                            = 0x2402,
	GL_SPOT_CUTOFF                                           = 0x1206,
	GL_SPOT_DIRECTION                                        = 0x1204,
	GL_SPOT_EXPONENT                                         = 0x1205,
	GL_SRC_ALPHA                                             = 0x0302,
	GL_SRC_ALPHA_SATURATE                                    = 0x0308,
	GL_SRC_COLOR                                             = 0x0300,
	GL_STENCIL                                               = 0x1802,
	GL_STENCIL_BITS                                          = 0x0D57,
	GL_STENCIL_BUFFER_BIT                                    = 0x00000400,
	GL_STENCIL_CLEAR_VALUE                                   = 0x0B91,
	GL_STENCIL_FAIL                                          = 0x0B94,
	GL_STENCIL_FUNC                                          = 0x0B92,
	GL_STENCIL_INDEX                                         = 0x1901,
	GL_STENCIL_PASS_DEPTH_FAIL                               = 0x0B95,
	GL_STENCIL_PASS_DEPTH_PASS                               = 0x0B96,
	GL_STENCIL_REF                                           = 0x0B97,
	GL_STENCIL_TEST                                          = 0x0B90,
	GL_STENCIL_VALUE_MASK                                    = 0x0B93,
	GL_STENCIL_WRITEMASK                                     = 0x0B98,
	GL_STEREO                                                = 0x0C33,
	GL_SUBPIXEL_BITS                                         = 0x0D50,
	GL_T                                                     = 0x2001,
	GL_T2F_C3F_V3F                                           = 0x2A2A,
	GL_T2F_C4F_N3F_V3F                                       = 0x2A2C,
	GL_T2F_C4UB_V3F                                          = 0x2A29,
	GL_T2F_N3F_V3F                                           = 0x2A2B,
	GL_T2F_V3F                                               = 0x2A27,
	GL_T4F_C4F_N3F_V4F                                       = 0x2A2D,
	GL_T4F_V4F                                               = 0x2A28,
	GL_TEXTURE                                               = 0x1702,
	GL_TEXTURE_1D                                            = 0x0DE0,
	GL_TEXTURE_2D                                            = 0x0DE1,
	GL_TEXTURE_ALPHA_SIZE                                    = 0x805F,
	GL_TEXTURE_BINDING_1D                                    = 0x8068,
	GL_TEXTURE_BINDING_2D                                    = 0x8069,
	GL_TEXTURE_BIT                                           = 0x00040000,
	GL_TEXTURE_BLUE_SIZE                                     = 0x805E,
	GL_TEXTURE_BORDER                                        = 0x1005,
	GL_TEXTURE_BORDER_COLOR                                  = 0x1004,
	GL_TEXTURE_COMPONENTS                                    = 0x1003,
	GL_TEXTURE_COORD_ARRAY                                   = 0x8078,
	GL_TEXTURE_COORD_ARRAY_POINTER                           = 0x8092,
	GL_TEXTURE_COORD_ARRAY_SIZE                              = 0x8088,
	GL_TEXTURE_COORD_ARRAY_STRIDE                            = 0x808A,
	GL_TEXTURE_COORD_ARRAY_TYPE                              = 0x8089,
	GL_TEXTURE_ENV                                           = 0x2300,
	GL_TEXTURE_ENV_COLOR                                     = 0x2201,
	GL_TEXTURE_ENV_MODE                                      = 0x2200,
	GL_TEXTURE_GEN_MODE                                      = 0x2500,
	GL_TEXTURE_GEN_Q                                         = 0x0C63,
	GL_TEXTURE_GEN_R                                         = 0x0C62,
	GL_TEXTURE_GEN_S                                         = 0x0C60,
	GL_TEXTURE_GEN_T                                         = 0x0C61,
	GL_TEXTURE_GREEN_SIZE                                    = 0x805D,
	GL_TEXTURE_HEIGHT                                        = 0x1001,
	GL_TEXTURE_INTENSITY_SIZE                                = 0x8061,
	GL_TEXTURE_INTERNAL_FORMAT                               = 0x1003,
	GL_TEXTURE_LUMINANCE_SIZE                                = 0x8060,
	GL_TEXTURE_MAG_FILTER                                    = 0x2800,
	GL_TEXTURE_MATRIX                                        = 0x0BA8,
	GL_TEXTURE_MIN_FILTER                                    = 0x2801,
	GL_TEXTURE_PRIORITY                                      = 0x8066,
	GL_TEXTURE_RED_SIZE                                      = 0x805C,
	GL_TEXTURE_RESIDENT                                      = 0x8067,
	GL_TEXTURE_STACK_DEPTH                                   = 0x0BA5,
	GL_TEXTURE_WIDTH                                         = 0x1000,
	GL_TEXTURE_WRAP_S                                        = 0x2802,
	GL_TEXTURE_WRAP_T                                        = 0x2803,
	GL_TRANSFORM_BIT                                         = 0x00001000,
	GL_TRIANGLE_FAN                                          = 0x0006,
	GL_TRIANGLE_STRIP                                        = 0x0005,
	GL_TRIANGLES                                             = 0x0004,
	GL_TRUE                                                  = 1,
	GL_UNPACK_ALIGNMENT                                      = 0x0CF5,
	GL_UNPACK_LSB_FIRST                                      = 0x0CF1,
	GL_UNPACK_ROW_LENGTH                                     = 0x0CF2,
	GL_UNPACK_SKIP_PIXELS                                    = 0x0CF4,
	GL_UNPACK_SKIP_ROWS                                      = 0x0CF3,
	GL_UNPACK_SWAP_BYTES                                     = 0x0CF0,
	GL_UNSIGNED_BYTE                                         = 0x1401,
	GL_UNSIGNED_INT                                          = 0x1405,
	GL_UNSIGNED_SHORT                                        = 0x1403,
	GL_V2F                                                   = 0x2A20,
	GL_V3F                                                   = 0x2A21,
	GL_VENDOR                                                = 0x1F00,
	GL_VERSION                                               = 0x1F02,
	GL_VERTEX_ARRAY                                          = 0x8074,
	GL_VERTEX_ARRAY_POINTER                                  = 0x808E,
	GL_VERTEX_ARRAY_SIZE                                     = 0x807A,
	GL_VERTEX_ARRAY_STRIDE                                   = 0x807C,
	GL_VERTEX_ARRAY_TYPE                                     = 0x807B,
	GL_VIEWPORT                                              = 0x0BA2,
	GL_VIEWPORT_BIT                                          = 0x00000800,
	GL_XOR                                                   = 0x1506,
	GL_ZERO                                                  = 0,
	GL_ZOOM_X                                                = 0x0D16,
	GL_ZOOM_Y                                                = 0x0D17,

	// GL 1.2
	GL_ALIASED_LINE_WIDTH_RANGE                              = 0x846E,
	GL_ALIASED_POINT_SIZE_RANGE                              = 0x846D,
	GL_BGR                                                   = 0x80E0,
	GL_BGRA                                                  = 0x80E1,
	GL_CLAMP_TO_EDGE                                         = 0x812F,
	GL_LIGHT_MODEL_COLOR_CONTROL                             = 0x81F8,
	GL_MAX_3D_TEXTURE_SIZE                                   = 0x8073,
	GL_MAX_ELEMENTS_INDICES                                  = 0x80E9,
	GL_MAX_ELEMENTS_VERTICES                                 = 0x80E8,
	GL_PACK_IMAGE_HEIGHT                                     = 0x806C,
	GL_PACK_SKIP_IMAGES                                      = 0x806B,
	GL_PROXY_TEXTURE_3D                                      = 0x8070,
	GL_RESCALE_NORMAL                                        = 0x803A,
	GL_SEPARATE_SPECULAR_COLOR                               = 0x81FA,
	GL_SINGLE_COLOR                                          = 0x81F9,
	GL_SMOOTH_LINE_WIDTH_GRANULARITY                         = 0x0B23,
	GL_SMOOTH_LINE_WIDTH_RANGE                               = 0x0B22,
	GL_SMOOTH_POINT_SIZE_GRANULARITY                         = 0x0B13,
	GL_SMOOTH_POINT_SIZE_RANGE                               = 0x0B12,
	GL_TEXTURE_3D                                            = 0x806F,
	GL_TEXTURE_BASE_LEVEL                                    = 0x813C,
	GL_TEXTURE_BINDING_3D                                    = 0x806A,
	GL_TEXTURE_DEPTH                                         = 0x8071,
	GL_TEXTURE_MAX_LEVEL                                     = 0x813D,
	GL_TEXTURE_MAX_LOD                                       = 0x813B,
	GL_TEXTURE_MIN_LOD                                       = 0x813A,
	GL_TEXTURE_WRAP_R                                        = 0x8072,
	GL_UNPACK_IMAGE_HEIGHT                                   = 0x806E,
	GL_UNPACK_SKIP_IMAGES                                    = 0x806D,
	GL_UNSIGNED_BYTE_2_3_3_REV                               = 0x8362,
	GL_UNSIGNED_BYTE_3_3_2                                   = 0x8032,
	GL_UNSIGNED_INT_10_10_10_2                               = 0x8036,
	GL_UNSIGNED_INT_2_10_10_10_REV                           = 0x8368,
	GL_UNSIGNED_INT_8_8_8_8                                  = 0x8035,
	GL_UNSIGNED_INT_8_8_8_8_REV                              = 0x8367,
	GL_UNSIGNED_SHORT_1_5_5_5_REV                            = 0x8366,
	GL_UNSIGNED_SHORT_4_4_4_4                                = 0x8033,
	GL_UNSIGNED_SHORT_4_4_4_4_REV                            = 0x8365,
	GL_UNSIGNED_SHORT_5_5_5_1                                = 0x8034,
	GL_UNSIGNED_SHORT_5_6_5                                  = 0x8363,
	GL_UNSIGNED_SHORT_5_6_5_REV                              = 0x8364,

	// GL 1.3
	GL_ACTIVE_TEXTURE                                        = 0x84E0,
	GL_ADD_SIGNED                                            = 0x8574,
	GL_CLAMP_TO_BORDER                                       = 0x812D,
	GL_CLIENT_ACTIVE_TEXTURE                                 = 0x84E1,
	GL_COMBINE                                               = 0x8570,
	GL_COMBINE_ALPHA                                         = 0x8572,
	GL_COMBINE_RGB                                           = 0x8571,
	GL_COMPRESSED_ALPHA                                      = 0x84E9,
	GL_COMPRESSED_INTENSITY                                  = 0x84EC,
	GL_COMPRESSED_LUMINANCE                                  = 0x84EA,
	GL_COMPRESSED_LUMINANCE_ALPHA                            = 0x84EB,
	GL_COMPRESSED_RGB                                        = 0x84ED,
	GL_COMPRESSED_RGBA                                       = 0x84EE,
	GL_COMPRESSED_TEXTURE_FORMATS                            = 0x86A3,
	GL_CONSTANT                                              = 0x8576,
	GL_DOT3_RGB                                              = 0x86AE,
	GL_DOT3_RGBA                                             = 0x86AF,
	GL_INTERPOLATE                                           = 0x8575,
	GL_MAX_CUBE_MAP_TEXTURE_SIZE                             = 0x851C,
	GL_MAX_TEXTURE_UNITS                                     = 0x84E2,
	GL_MULTISAMPLE                                           = 0x809D,
	GL_MULTISAMPLE_BIT                                       = 0x20000000,
	GL_NORMAL_MAP                                            = 0x8511,
	GL_NUM_COMPRESSED_TEXTURE_FORMATS                        = 0x86A2,
	GL_OPERAND0_ALPHA                                        = 0x8598,
	GL_OPERAND0_RGB                                          = 0x8590,
	GL_OPERAND1_ALPHA                                        = 0x8599,
	GL_OPERAND1_RGB                                          = 0x8591,
	GL_OPERAND2_ALPHA                                        = 0x859A,
	GL_OPERAND2_RGB                                          = 0x8592,
	GL_PREVIOUS                                              = 0x8578,
	GL_PRIMARY_COLOR                                         = 0x8577,
	GL_PROXY_TEXTURE_CUBE_MAP                                = 0x851B,
	GL_REFLECTION_MAP                                        = 0x8512,
	GL_RGB_SCALE                                             = 0x8573,
	GL_SAMPLE_ALPHA_TO_COVERAGE                              = 0x809E,
	GL_SAMPLE_ALPHA_TO_ONE                                   = 0x809F,
	GL_SAMPLE_BUFFERS                                        = 0x80A8,
	GL_SAMPLE_COVERAGE                                       = 0x80A0,
	GL_SAMPLE_COVERAGE_INVERT                                = 0x80AB,
	GL_SAMPLE_COVERAGE_VALUE                                 = 0x80AA,
	GL_SAMPLES                                               = 0x80A9,
	GL_SOURCE0_ALPHA                                         = 0x8588,
	GL_SOURCE0_RGB                                           = 0x8580,
	GL_SOURCE1_ALPHA                                         = 0x8589,
	GL_SOURCE1_RGB                                           = 0x8581,
	GL_SOURCE2_ALPHA                                         = 0x858A,
	GL_SOURCE2_RGB                                           = 0x8582,
	GL_SUBTRACT                                              = 0x84E7,
	GL_TEXTURE_BINDING_CUBE_MAP                              = 0x8514,
	GL_TEXTURE_COMPRESSED                                    = 0x86A1,
	GL_TEXTURE_COMPRESSED_IMAGE_SIZE                         = 0x86A0,
	GL_TEXTURE_COMPRESSION_HINT                              = 0x84EF,
	GL_TEXTURE_CUBE_MAP                                      = 0x8513,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_X                           = 0x8516,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                           = 0x8518,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                           = 0x851A,
	GL_TEXTURE_CUBE_MAP_POSITIVE_X                           = 0x8515,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Y                           = 0x8517,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Z                           = 0x8519,
	GL_TEXTURE0                                              = 0x84C0,
	GL_TEXTURE1                                              = 0x84C1,
	GL_TEXTURE10                                             = 0x84CA,
	GL_TEXTURE11                                             = 0x84CB,
	GL_TEXTURE12                                             = 0x84CC,
	GL_TEXTURE13                                             = 0x84CD,
	GL_TEXTURE14                                             = 0x84CE,
	GL_TEXTURE15                                             = 0x84CF,
	GL_TEXTURE16                                             = 0x84D0,
	GL_TEXTURE17                                             = 0x84D1,
	GL_TEXTURE18                                             = 0x84D2,
	GL_TEXTURE19                                             = 0x84D3,
	GL_TEXTURE2                                              = 0x84C2,
	GL_TEXTURE20                                             = 0x84D4,
	GL_TEXTURE21                                             = 0x84D5,
	GL_TEXTURE22                                             = 0x84D6,
	GL_TEXTURE23                                             = 0x84D7,
	GL_TEXTURE24                                             = 0x84D8,
	GL_TEXTURE25                                             = 0x84D9,
	GL_TEXTURE26                                             = 0x84DA,
	GL_TEXTURE27                                             = 0x84DB,
	GL_TEXTURE28                                             = 0x84DC,
	GL_TEXTURE29                                             = 0x84DD,
	GL_TEXTURE3                                              = 0x84C3,
	GL_TEXTURE30                                             = 0x84DE,
	GL_TEXTURE31                                             = 0x84DF,
	GL_TEXTURE4                                              = 0x84C4,
	GL_TEXTURE5                                              = 0x84C5,
	GL_TEXTURE6                                              = 0x84C6,
	GL_TEXTURE7                                              = 0x84C7,
	GL_TEXTURE8                                              = 0x84C8,
	GL_TEXTURE9                                              = 0x84C9,
	GL_TRANSPOSE_COLOR_MATRIX                                = 0x84E6,
	GL_TRANSPOSE_MODELVIEW_MATRIX                            = 0x84E3,
	GL_TRANSPOSE_PROJECTION_MATRIX                           = 0x84E4,
	GL_TRANSPOSE_TEXTURE_MATRIX                              = 0x84E5,

	// GL 1.4
	GL_BLEND_DST_ALPHA                                       = 0x80CA,
	GL_BLEND_DST_RGB                                         = 0x80C8,
	GL_BLEND_SRC_ALPHA                                       = 0x80CB,
	GL_BLEND_SRC_RGB                                         = 0x80C9,
	GL_COLOR_SUM                                             = 0x8458,
	GL_COMPARE_R_TO_TEXTURE                                  = 0x884E,
	GL_CURRENT_FOG_COORDINATE                                = 0x8453,
	GL_CURRENT_SECONDARY_COLOR                               = 0x8459,
	GL_DECR_WRAP                                             = 0x8508,
	GL_DEPTH_COMPONENT16                                     = 0x81A5,
	GL_DEPTH_COMPONENT24                                     = 0x81A6,
	GL_DEPTH_COMPONENT32                                     = 0x81A7,
	GL_DEPTH_TEXTURE_MODE                                    = 0x884B,
	GL_FOG_COORDINATE                                        = 0x8451,
	GL_FOG_COORDINATE_ARRAY                                  = 0x8457,
	GL_FOG_COORDINATE_ARRAY_POINTER                          = 0x8456,
	GL_FOG_COORDINATE_ARRAY_STRIDE                           = 0x8455,
	GL_FOG_COORDINATE_ARRAY_TYPE                             = 0x8454,
	GL_FOG_COORDINATE_SOURCE                                 = 0x8450,
	GL_FRAGMENT_DEPTH                                        = 0x8452,
	GL_GENERATE_MIPMAP                                       = 0x8191,
	GL_GENERATE_MIPMAP_HINT                                  = 0x8192,
	GL_INCR_WRAP                                             = 0x8507,
	GL_MAX_TEXTURE_LOD_BIAS                                  = 0x84FD,
	GL_MIRRORED_REPEAT                                       = 0x8370,
	GL_POINT_DISTANCE_ATTENUATION                            = 0x8129,
	GL_POINT_FADE_THRESHOLD_SIZE                             = 0x8128,
	GL_POINT_SIZE_MAX                                        = 0x8127,
	GL_POINT_SIZE_MIN                                        = 0x8126,
	GL_SECONDARY_COLOR_ARRAY                                 = 0x845E,
	GL_SECONDARY_COLOR_ARRAY_POINTER                         = 0x845D,
	GL_SECONDARY_COLOR_ARRAY_SIZE                            = 0x845A,
	GL_SECONDARY_COLOR_ARRAY_STRIDE                          = 0x845C,
	GL_SECONDARY_COLOR_ARRAY_TYPE                            = 0x845B,
	GL_TEXTURE_COMPARE_FUNC                                  = 0x884D,
	GL_TEXTURE_COMPARE_MODE                                  = 0x884C,
	GL_TEXTURE_DEPTH_SIZE                                    = 0x884A,
	GL_TEXTURE_FILTER_CONTROL                                = 0x8500,
	GL_TEXTURE_LOD_BIAS                                      = 0x8501,

	// GL 1.5
	GL_ARRAY_BUFFER                                          = 0x8892,
	GL_ARRAY_BUFFER_BINDING                                  = 0x8894,
	GL_BUFFER_ACCESS                                         = 0x88BB,
	GL_BUFFER_MAP_POINTER                                    = 0x88BD,
	GL_BUFFER_MAPPED                                         = 0x88BC,
	GL_BUFFER_SIZE                                           = 0x8764,
	GL_BUFFER_USAGE                                          = 0x8765,
	GL_COLOR_ARRAY_BUFFER_BINDING                            = 0x8898,
	GL_CURRENT_FOG_COORD                                     = 0x8453,
	GL_CURRENT_QUERY                                         = 0x8865,
	GL_DYNAMIC_COPY                                          = 0x88EA,
	GL_DYNAMIC_DRAW                                          = 0x88E8,
	GL_DYNAMIC_READ                                          = 0x88E9,
	GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                        = 0x889B,
	GL_ELEMENT_ARRAY_BUFFER                                  = 0x8893,
	GL_ELEMENT_ARRAY_BUFFER_BINDING                          = 0x8895,
	GL_FOG_COORD                                             = 0x8451,
	GL_FOG_COORD_ARRAY                                       = 0x8457,
	GL_FOG_COORD_ARRAY_BUFFER_BINDING                        = 0x889D,
	GL_FOG_COORD_ARRAY_POINTER                               = 0x8456,
	GL_FOG_COORD_ARRAY_STRIDE                                = 0x8455,
	GL_FOG_COORD_ARRAY_TYPE                                  = 0x8454,
	GL_FOG_COORD_SRC                                         = 0x8450,
	GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                   = 0x889D,
	GL_INDEX_ARRAY_BUFFER_BINDING                            = 0x8899,
	GL_NORMAL_ARRAY_BUFFER_BINDING                           = 0x8897,
	GL_QUERY_COUNTER_BITS                                    = 0x8864,
	GL_QUERY_RESULT                                          = 0x8866,
	GL_QUERY_RESULT_AVAILABLE                                = 0x8867,
	GL_READ_ONLY                                             = 0x88B8,
	GL_READ_WRITE                                            = 0x88BA,
	GL_SAMPLES_PASSED                                        = 0x8914,
	GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                  = 0x889C,
	GL_SRC0_ALPHA                                            = 0x8588,
	GL_SRC0_RGB                                              = 0x8580,
	GL_SRC1_ALPHA                                            = 0x8589,
	GL_SRC1_RGB                                              = 0x8581,
	GL_SRC2_ALPHA                                            = 0x858A,
	GL_SRC2_RGB                                              = 0x8582,
	GL_STATIC_COPY                                           = 0x88E6,
	GL_STATIC_DRAW                                           = 0x88E4,
	GL_STATIC_READ                                           = 0x88E5,
	GL_STREAM_COPY                                           = 0x88E2,
	GL_STREAM_DRAW                                           = 0x88E0,
	GL_STREAM_READ                                           = 0x88E1,
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                    = 0x889A,
	GL_VERTEX_ARRAY_BUFFER_BINDING                           = 0x8896,
	GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                    = 0x889F,
	GL_WEIGHT_ARRAY_BUFFER_BINDING                           = 0x889E,
	GL_WRITE_ONLY                                            = 0x88B9,

	// GL 2.0
	GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                           = 0x8B8A,
	GL_ACTIVE_ATTRIBUTES                                     = 0x8B89,
	GL_ACTIVE_UNIFORM_MAX_LENGTH                             = 0x8B87,
	GL_ACTIVE_UNIFORMS                                       = 0x8B86,
	GL_ATTACHED_SHADERS                                      = 0x8B85,
	GL_BLEND_EQUATION_ALPHA                                  = 0x883D,
	GL_BLEND_EQUATION_RGB                                    = 0x8009,
	GL_BOOL                                                  = 0x8B56,
	GL_BOOL_VEC2                                             = 0x8B57,
	GL_BOOL_VEC3                                             = 0x8B58,
	GL_BOOL_VEC4                                             = 0x8B59,
	GL_COMPILE_STATUS                                        = 0x8B81,
	GL_COORD_REPLACE                                         = 0x8862,
	GL_CURRENT_PROGRAM                                       = 0x8B8D,
	GL_CURRENT_VERTEX_ATTRIB                                 = 0x8626,
	GL_DELETE_STATUS                                         = 0x8B80,
	GL_DRAW_BUFFER0                                          = 0x8825,
	GL_DRAW_BUFFER1                                          = 0x8826,
	GL_DRAW_BUFFER10                                         = 0x882F,
	GL_DRAW_BUFFER11                                         = 0x8830,
	GL_DRAW_BUFFER12                                         = 0x8831,
	GL_DRAW_BUFFER13                                         = 0x8832,
	GL_DRAW_BUFFER14                                         = 0x8833,
	GL_DRAW_BUFFER15                                         = 0x8834,
	GL_DRAW_BUFFER2                                          = 0x8827,
	GL_DRAW_BUFFER3                                          = 0x8828,
	GL_DRAW_BUFFER4                                          = 0x8829,
	GL_DRAW_BUFFER5                                          = 0x882A,
	GL_DRAW_BUFFER6                                          = 0x882B,
	GL_DRAW_BUFFER7                                          = 0x882C,
	GL_DRAW_BUFFER8                                          = 0x882D,
	GL_DRAW_BUFFER9                                          = 0x882E,
	GL_FLOAT_MAT2                                            = 0x8B5A,
	GL_FLOAT_MAT3                                            = 0x8B5B,
	GL_FLOAT_MAT4                                            = 0x8B5C,
	GL_FLOAT_VEC2                                            = 0x8B50,
	GL_FLOAT_VEC3                                            = 0x8B51,
	GL_FLOAT_VEC4                                            = 0x8B52,
	GL_FRAGMENT_SHADER                                       = 0x8B30,
	GL_FRAGMENT_SHADER_DERIVATIVE_HINT                       = 0x8B8B,
	GL_INFO_LOG_LENGTH                                       = 0x8B84,
	GL_INT_VEC2                                              = 0x8B53,
	GL_INT_VEC3                                              = 0x8B54,
	GL_INT_VEC4                                              = 0x8B55,
	GL_LINK_STATUS                                           = 0x8B82,
	GL_LOWER_LEFT                                            = 0x8CA1,
	GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                      = 0x8B4D,
	GL_MAX_DRAW_BUFFERS                                      = 0x8824,
	GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                       = 0x8B49,
	GL_MAX_TEXTURE_COORDS                                    = 0x8871,
	GL_MAX_TEXTURE_IMAGE_UNITS                               = 0x8872,
	GL_MAX_VARYING_FLOATS                                    = 0x8B4B,
	GL_MAX_VERTEX_ATTRIBS                                    = 0x8869,
	GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                        = 0x8B4C,
	GL_MAX_VERTEX_UNIFORM_COMPONENTS                         = 0x8B4A,
	GL_POINT_SPRITE                                          = 0x8861,
	GL_POINT_SPRITE_COORD_ORIGIN                             = 0x8CA0,
	GL_SAMPLER_1D                                            = 0x8B5D,
	GL_SAMPLER_1D_SHADOW                                     = 0x8B61,
	GL_SAMPLER_2D                                            = 0x8B5E,
	GL_SAMPLER_2D_SHADOW                                     = 0x8B62,
	GL_SAMPLER_3D                                            = 0x8B5F,
	GL_SAMPLER_CUBE                                          = 0x8B60,
	GL_SHADER_SOURCE_LENGTH                                  = 0x8B88,
	GL_SHADER_TYPE                                           = 0x8B4F,
	GL_SHADING_LANGUAGE_VERSION                              = 0x8B8C,
	GL_STENCIL_BACK_FAIL                                     = 0x8801,
	GL_STENCIL_BACK_FUNC                                     = 0x8800,
	GL_STENCIL_BACK_PASS_DEPTH_FAIL                          = 0x8802,
	GL_STENCIL_BACK_PASS_DEPTH_PASS                          = 0x8803,
	GL_STENCIL_BACK_REF                                      = 0x8CA3,
	GL_STENCIL_BACK_VALUE_MASK                               = 0x8CA4,
	GL_STENCIL_BACK_WRITEMASK                                = 0x8CA5,
	GL_UPPER_LEFT                                            = 0x8CA2,
	GL_VALIDATE_STATUS                                       = 0x8B83,
	GL_VERTEX_ATTRIB_ARRAY_ENABLED                           = 0x8622,
	GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                        = 0x886A,
	GL_VERTEX_ATTRIB_ARRAY_POINTER                           = 0x8645,
	GL_VERTEX_ATTRIB_ARRAY_SIZE                              = 0x8623,
	GL_VERTEX_ATTRIB_ARRAY_STRIDE                            = 0x8624,
	GL_VERTEX_ATTRIB_ARRAY_TYPE                              = 0x8625,
	GL_VERTEX_PROGRAM_POINT_SIZE                             = 0x8642,
	GL_VERTEX_PROGRAM_TWO_SIDE                               = 0x8643,
	GL_VERTEX_SHADER                                         = 0x8B31,

	// GL 2.1
	GL_COMPRESSED_SLUMINANCE                                 = 0x8C4A,
	GL_COMPRESSED_SLUMINANCE_ALPHA                           = 0x8C4B,
	GL_COMPRESSED_SRGB                                       = 0x8C48,
	GL_COMPRESSED_SRGB_ALPHA                                 = 0x8C49,
	GL_CURRENT_RASTER_SECONDARY_COLOR                        = 0x845F,
	GL_FLOAT_MAT2x3                                          = 0x8B65,
	GL_FLOAT_MAT2x4                                          = 0x8B66,
	GL_FLOAT_MAT3x2                                          = 0x8B67,
	GL_FLOAT_MAT3x4                                          = 0x8B68,
	GL_FLOAT_MAT4x2                                          = 0x8B69,
	GL_FLOAT_MAT4x3                                          = 0x8B6A,
	GL_PIXEL_PACK_BUFFER                                     = 0x88EB,
	GL_PIXEL_PACK_BUFFER_BINDING                             = 0x88ED,
	GL_PIXEL_UNPACK_BUFFER                                   = 0x88EC,
	GL_PIXEL_UNPACK_BUFFER_BINDING                           = 0x88EF,
	GL_SLUMINANCE                                            = 0x8C46,
	GL_SLUMINANCE_ALPHA                                      = 0x8C44,
	GL_SLUMINANCE8                                           = 0x8C47,
	GL_SLUMINANCE8_ALPHA8                                    = 0x8C45,
	GL_SRGB                                                  = 0x8C40,
	GL_SRGB_ALPHA                                            = 0x8C42,
	GL_SRGB8                                                 = 0x8C41,
	GL_SRGB8_ALPHA8                                          = 0x8C43,

	// GL 3.0
	GL_ALPHA_INTEGER                                         = 0x8D97,
	GL_BGR_INTEGER                                           = 0x8D9A,
	GL_BGRA_INTEGER                                          = 0x8D9B,
	GL_BLUE_INTEGER                                          = 0x8D96,
	GL_BUFFER_ACCESS_FLAGS                                   = 0x911F,
	GL_BUFFER_MAP_LENGTH                                     = 0x9120,
	GL_BUFFER_MAP_OFFSET                                     = 0x9121,
	GL_CLAMP_FRAGMENT_COLOR                                  = 0x891B,
	GL_CLAMP_READ_COLOR                                      = 0x891C,
	GL_CLAMP_VERTEX_COLOR                                    = 0x891A,
	GL_CLIP_DISTANCE0                                        = 0x3000,
	GL_CLIP_DISTANCE1                                        = 0x3001,
	GL_CLIP_DISTANCE2                                        = 0x3002,
	GL_CLIP_DISTANCE3                                        = 0x3003,
	GL_CLIP_DISTANCE4                                        = 0x3004,
	GL_CLIP_DISTANCE5                                        = 0x3005,
	GL_CLIP_DISTANCE6                                        = 0x3006,
	GL_CLIP_DISTANCE7                                        = 0x3007,
	GL_COLOR_ATTACHMENT0                                     = 0x8CE0,
	GL_COLOR_ATTACHMENT1                                     = 0x8CE1,
	GL_COLOR_ATTACHMENT10                                    = 0x8CEA,
	GL_COLOR_ATTACHMENT11                                    = 0x8CEB,
	GL_COLOR_ATTACHMENT12                                    = 0x8CEC,
	GL_COLOR_ATTACHMENT13                                    = 0x8CED,
	GL_COLOR_ATTACHMENT14                                    = 0x8CEE,
	GL_COLOR_ATTACHMENT15                                    = 0x8CEF,
	GL_COLOR_ATTACHMENT2                                     = 0x8CE2,
	GL_COLOR_ATTACHMENT3                                     = 0x8CE3,
	GL_COLOR_ATTACHMENT4                                     = 0x8CE4,
	GL_COLOR_ATTACHMENT5                                     = 0x8CE5,
	GL_COLOR_ATTACHMENT6                                     = 0x8CE6,
	GL_COLOR_ATTACHMENT7                                     = 0x8CE7,
	GL_COLOR_ATTACHMENT8                                     = 0x8CE8,
	GL_COLOR_ATTACHMENT9                                     = 0x8CE9,
	GL_COMPARE_REF_TO_TEXTURE                                = 0x884E,
	GL_COMPRESSED_RED                                        = 0x8225,
	GL_COMPRESSED_RED_RGTC1                                  = 0x8DBB,
	GL_COMPRESSED_RG                                         = 0x8226,
	GL_COMPRESSED_RG_RGTC2                                   = 0x8DBD,
	GL_COMPRESSED_SIGNED_RED_RGTC1                           = 0x8DBC,
	GL_COMPRESSED_SIGNED_RG_RGTC2                            = 0x8DBE,
	GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT                   = 0x0001,
	GL_CONTEXT_FLAGS                                         = 0x821E,
	GL_DEPTH_ATTACHMENT                                      = 0x8D00,
	GL_DEPTH_COMPONENT32F                                    = 0x8CAC,
	GL_DEPTH_STENCIL                                         = 0x84F9,
	GL_DEPTH_STENCIL_ATTACHMENT                              = 0x821A,
	GL_DEPTH24_STENCIL8                                      = 0x88F0,
	GL_DEPTH32F_STENCIL8                                     = 0x8CAD,
	GL_DRAW_FRAMEBUFFER                                      = 0x8CA9,
	GL_DRAW_FRAMEBUFFER_BINDING                              = 0x8CA6,
	GL_FIXED_ONLY                                            = 0x891D,
	GL_FLOAT_32_UNSIGNED_INT_24_8_REV                        = 0x8DAD,
	GL_FRAMEBUFFER                                           = 0x8D40,
	GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE                     = 0x8215,
	GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE                      = 0x8214,
	GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING                 = 0x8210,
	GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE                 = 0x8211,
	GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE                     = 0x8216,
	GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE                     = 0x8213,
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME                    = 0x8CD1,
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE                    = 0x8CD0,
	GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE                       = 0x8212,
	GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE                   = 0x8217,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE          = 0x8CD3,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER                  = 0x8CD4,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL                  = 0x8CD2,
	GL_FRAMEBUFFER_BINDING                                   = 0x8CA6,
	GL_FRAMEBUFFER_COMPLETE                                  = 0x8CD5,
	GL_FRAMEBUFFER_DEFAULT                                   = 0x8218,
	GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT                     = 0x8CD6,
	GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER                    = 0x8CDB,
	GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT             = 0x8CD7,
	GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE                    = 0x8D56,
	GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER                    = 0x8CDC,
	GL_FRAMEBUFFER_SRGB                                      = 0x8DB9,
	GL_FRAMEBUFFER_UNDEFINED                                 = 0x8219,
	GL_FRAMEBUFFER_UNSUPPORTED                               = 0x8CDD,
	GL_GREEN_INTEGER                                         = 0x8D95,
	GL_HALF_FLOAT                                            = 0x140B,
	GL_INDEX                                                 = 0x8222,
	GL_INT_SAMPLER_1D                                        = 0x8DC9,
	GL_INT_SAMPLER_1D_ARRAY                                  = 0x8DCE,
	GL_INT_SAMPLER_2D                                        = 0x8DCA,
	GL_INT_SAMPLER_2D_ARRAY                                  = 0x8DCF,
	GL_INT_SAMPLER_3D                                        = 0x8DCB,
	GL_INT_SAMPLER_CUBE                                      = 0x8DCC,
	GL_INTERLEAVED_ATTRIBS                                   = 0x8C8C,
	GL_INVALID_FRAMEBUFFER_OPERATION                         = 0x0506,
	GL_MAJOR_VERSION                                         = 0x821B,
	GL_MAP_FLUSH_EXPLICIT_BIT                                = 0x0010,
	GL_MAP_INVALIDATE_BUFFER_BIT                             = 0x0008,
	GL_MAP_INVALIDATE_RANGE_BIT                              = 0x0004,
	GL_MAP_READ_BIT                                          = 0x0001,
	GL_MAP_UNSYNCHRONIZED_BIT                                = 0x0020,
	GL_MAP_WRITE_BIT                                         = 0x0002,
	GL_MAX_ARRAY_TEXTURE_LAYERS                              = 0x88FF,
	GL_MAX_CLIP_DISTANCES                                    = 0x0D32,
	GL_MAX_COLOR_ATTACHMENTS                                 = 0x8CDF,
	GL_MAX_PROGRAM_TEXEL_OFFSET                              = 0x8905,
	GL_MAX_RENDERBUFFER_SIZE                                 = 0x84E8,
	GL_MAX_SAMPLES                                           = 0x8D57,
	GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS         = 0x8C8A,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS               = 0x8C8B,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS            = 0x8C80,
	GL_MAX_VARYING_COMPONENTS                                = 0x8B4B,
	GL_MIN_PROGRAM_TEXEL_OFFSET                              = 0x8904,
	GL_MINOR_VERSION                                         = 0x821C,
	GL_NUM_EXTENSIONS                                        = 0x821D,
	GL_PRIMITIVES_GENERATED                                  = 0x8C87,
	GL_PROXY_TEXTURE_1D_ARRAY                                = 0x8C19,
	GL_PROXY_TEXTURE_2D_ARRAY                                = 0x8C1B,
	GL_QUERY_BY_REGION_NO_WAIT                               = 0x8E16,
	GL_QUERY_BY_REGION_WAIT                                  = 0x8E15,
	GL_QUERY_NO_WAIT                                         = 0x8E14,
	GL_QUERY_WAIT                                            = 0x8E13,
	GL_R11F_G11F_B10F                                        = 0x8C3A,
	GL_R16                                                   = 0x822A,
	GL_R16F                                                  = 0x822D,
	GL_R16I                                                  = 0x8233,
	GL_R16UI                                                 = 0x8234,
	GL_R32F                                                  = 0x822E,
	GL_R32I                                                  = 0x8235,
	GL_R32UI                                                 = 0x8236,
	GL_R8                                                    = 0x8229,
	GL_R8I                                                   = 0x8231,
	GL_R8UI                                                  = 0x8232,
	GL_RASTERIZER_DISCARD                                    = 0x8C89,
	GL_READ_FRAMEBUFFER                                      = 0x8CA8,
	GL_READ_FRAMEBUFFER_BINDING                              = 0x8CAA,
	GL_RED_INTEGER                                           = 0x8D94,
	GL_RENDERBUFFER                                          = 0x8D41,
	GL_RENDERBUFFER_ALPHA_SIZE                               = 0x8D53,
	GL_RENDERBUFFER_BINDING                                  = 0x8CA7,
	GL_RENDERBUFFER_BLUE_SIZE                                = 0x8D52,
	GL_RENDERBUFFER_DEPTH_SIZE                               = 0x8D54,
	GL_RENDERBUFFER_GREEN_SIZE                               = 0x8D51,
	GL_RENDERBUFFER_HEIGHT                                   = 0x8D43,
	GL_RENDERBUFFER_INTERNAL_FORMAT                          = 0x8D44,
	GL_RENDERBUFFER_RED_SIZE                                 = 0x8D50,
	GL_RENDERBUFFER_SAMPLES                                  = 0x8CAB,
	GL_RENDERBUFFER_STENCIL_SIZE                             = 0x8D55,
	GL_RENDERBUFFER_WIDTH                                    = 0x8D42,
	GL_RG                                                    = 0x8227,
	GL_RG_INTEGER                                            = 0x8228,
	GL_RG16                                                  = 0x822C,
	GL_RG16F                                                 = 0x822F,
	GL_RG16I                                                 = 0x8239,
	GL_RG16UI                                                = 0x823A,
	GL_RG32F                                                 = 0x8230,
	GL_RG32I                                                 = 0x823B,
	GL_RG32UI                                                = 0x823C,
	GL_RG8                                                   = 0x822B,
	GL_RG8I                                                  = 0x8237,
	GL_RG8UI                                                 = 0x8238,
	GL_RGB_INTEGER                                           = 0x8D98,
	GL_RGB16F                                                = 0x881B,
	GL_RGB16I                                                = 0x8D89,
	GL_RGB16UI                                               = 0x8D77,
	GL_RGB32F                                                = 0x8815,
	GL_RGB32I                                                = 0x8D83,
	GL_RGB32UI                                               = 0x8D71,
	GL_RGB8I                                                 = 0x8D8F,
	GL_RGB8UI                                                = 0x8D7D,
	GL_RGB9_E5                                               = 0x8C3D,
	GL_RGBA_INTEGER                                          = 0x8D99,
	GL_RGBA16F                                               = 0x881A,
	GL_RGBA16I                                               = 0x8D88,
	GL_RGBA16UI                                              = 0x8D76,
	GL_RGBA32F                                               = 0x8814,
	GL_RGBA32I                                               = 0x8D82,
	GL_RGBA32UI                                              = 0x8D70,
	GL_RGBA8I                                                = 0x8D8E,
	GL_RGBA8UI                                               = 0x8D7C,
	GL_SAMPLER_1D_ARRAY                                      = 0x8DC0,
	GL_SAMPLER_1D_ARRAY_SHADOW                               = 0x8DC3,
	GL_SAMPLER_2D_ARRAY                                      = 0x8DC1,
	GL_SAMPLER_2D_ARRAY_SHADOW                               = 0x8DC4,
	GL_SAMPLER_CUBE_SHADOW                                   = 0x8DC5,
	GL_SEPARATE_ATTRIBS                                      = 0x8C8D,
	GL_STENCIL_ATTACHMENT                                    = 0x8D20,
	GL_STENCIL_INDEX1                                        = 0x8D46,
	GL_STENCIL_INDEX16                                       = 0x8D49,
	GL_STENCIL_INDEX4                                        = 0x8D47,
	GL_STENCIL_INDEX8                                        = 0x8D48,
	GL_TEXTURE_1D_ARRAY                                      = 0x8C18,
	GL_TEXTURE_2D_ARRAY                                      = 0x8C1A,
	GL_TEXTURE_ALPHA_TYPE                                    = 0x8C13,
	GL_TEXTURE_BINDING_1D_ARRAY                              = 0x8C1C,
	GL_TEXTURE_BINDING_2D_ARRAY                              = 0x8C1D,
	GL_TEXTURE_BLUE_TYPE                                     = 0x8C12,
	GL_TEXTURE_DEPTH_TYPE                                    = 0x8C16,
	GL_TEXTURE_GREEN_TYPE                                    = 0x8C11,
	GL_TEXTURE_INTENSITY_TYPE                                = 0x8C15,
	GL_TEXTURE_LUMINANCE_TYPE                                = 0x8C14,
	GL_TEXTURE_RED_TYPE                                      = 0x8C10,
	GL_TEXTURE_SHARED_SIZE                                   = 0x8C3F,
	GL_TEXTURE_STENCIL_SIZE                                  = 0x88F1,
	GL_TRANSFORM_FEEDBACK_BUFFER                             = 0x8C8E,
	GL_TRANSFORM_FEEDBACK_BUFFER_BINDING                     = 0x8C8F,
	GL_TRANSFORM_FEEDBACK_BUFFER_MODE                        = 0x8C7F,
	GL_TRANSFORM_FEEDBACK_BUFFER_SIZE                        = 0x8C85,
	GL_TRANSFORM_FEEDBACK_BUFFER_START                       = 0x8C84,
	GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN                 = 0x8C88,
	GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH                 = 0x8C76,
	GL_TRANSFORM_FEEDBACK_VARYINGS                           = 0x8C83,
	GL_UNSIGNED_INT_10F_11F_11F_REV                          = 0x8C3B,
	GL_UNSIGNED_INT_24_8                                     = 0x84FA,
	GL_UNSIGNED_INT_5_9_9_9_REV                              = 0x8C3E,
	GL_UNSIGNED_INT_SAMPLER_1D                               = 0x8DD1,
	GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                         = 0x8DD6,
	GL_UNSIGNED_INT_SAMPLER_2D                               = 0x8DD2,
	GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                         = 0x8DD7,
	GL_UNSIGNED_INT_SAMPLER_3D                               = 0x8DD3,
	GL_UNSIGNED_INT_SAMPLER_CUBE                             = 0x8DD4,
	GL_UNSIGNED_INT_VEC2                                     = 0x8DC6,
	GL_UNSIGNED_INT_VEC3                                     = 0x8DC7,
	GL_UNSIGNED_INT_VEC4                                     = 0x8DC8,
	GL_UNSIGNED_NORMALIZED                                   = 0x8C17,
	GL_VERTEX_ARRAY_BINDING                                  = 0x85B5,
	GL_VERTEX_ATTRIB_ARRAY_INTEGER                           = 0x88FD,

	// GL 3.1
	GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH                  = 0x8A35,
	GL_ACTIVE_UNIFORM_BLOCKS                                 = 0x8A36,
	GL_COPY_READ_BUFFER                                      = 0x8F36,
	GL_COPY_WRITE_BUFFER                                     = 0x8F37,
	GL_INT_SAMPLER_2D_RECT                                   = 0x8DCD,
	GL_INT_SAMPLER_BUFFER                                    = 0x8DD0,
	GL_INVALID_INDEX                                         = 0xFFFFFFFF,
	GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS              = 0x8A33,
	GL_MAX_COMBINED_UNIFORM_BLOCKS                           = 0x8A2E,
	GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS                = 0x8A31,
	GL_MAX_FRAGMENT_UNIFORM_BLOCKS                           = 0x8A2D,
	GL_MAX_RECTANGLE_TEXTURE_SIZE                            = 0x84F8,
	GL_MAX_TEXTURE_BUFFER_SIZE                               = 0x8C2B,
	GL_MAX_UNIFORM_BLOCK_SIZE                                = 0x8A30,
	GL_MAX_UNIFORM_BUFFER_BINDINGS                           = 0x8A2F,
	GL_MAX_VERTEX_UNIFORM_BLOCKS                             = 0x8A2B,
	GL_PRIMITIVE_RESTART                                     = 0x8F9D,
	GL_PRIMITIVE_RESTART_INDEX                               = 0x8F9E,
	GL_PROXY_TEXTURE_RECTANGLE                               = 0x84F7,
	GL_R16_SNORM                                             = 0x8F98,
	GL_R8_SNORM                                              = 0x8F94,
	GL_RED_SNORM                                             = 0x8F90,
	GL_RG_SNORM                                              = 0x8F91,
	GL_RG16_SNORM                                            = 0x8F99,
	GL_RG8_SNORM                                             = 0x8F95,
	GL_RGB_SNORM                                             = 0x8F92,
	GL_RGB16_SNORM                                           = 0x8F9A,
	GL_RGB8_SNORM                                            = 0x8F96,
	GL_RGBA_SNORM                                            = 0x8F93,
	GL_RGBA16_SNORM                                          = 0x8F9B,
	GL_RGBA8_SNORM                                           = 0x8F97,
	GL_SAMPLER_2D_RECT                                       = 0x8B63,
	GL_SAMPLER_2D_RECT_SHADOW                                = 0x8B64,
	GL_SAMPLER_BUFFER                                        = 0x8DC2,
	GL_SIGNED_NORMALIZED                                     = 0x8F9C,
	GL_TEXTURE_BINDING_BUFFER                                = 0x8C2C,
	GL_TEXTURE_BINDING_RECTANGLE                             = 0x84F6,
	GL_TEXTURE_BUFFER                                        = 0x8C2A,
	GL_TEXTURE_BUFFER_DATA_STORE_BINDING                     = 0x8C2D,
	GL_TEXTURE_RECTANGLE                                     = 0x84F5,
	GL_UNIFORM_ARRAY_STRIDE                                  = 0x8A3C,
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES                  = 0x8A43,
	GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                         = 0x8A42,
	GL_UNIFORM_BLOCK_BINDING                                 = 0x8A3F,
	GL_UNIFORM_BLOCK_DATA_SIZE                               = 0x8A40,
	GL_UNIFORM_BLOCK_INDEX                                   = 0x8A3A,
	GL_UNIFORM_BLOCK_NAME_LENGTH                             = 0x8A41,
	GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER           = 0x8A46,
	GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER             = 0x8A44,
	GL_UNIFORM_BUFFER                                        = 0x8A11,
	GL_UNIFORM_BUFFER_BINDING                                = 0x8A28,
	GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                       = 0x8A34,
	GL_UNIFORM_BUFFER_SIZE                                   = 0x8A2A,
	GL_UNIFORM_BUFFER_START                                  = 0x8A29,
	GL_UNIFORM_IS_ROW_MAJOR                                  = 0x8A3E,
	GL_UNIFORM_MATRIX_STRIDE                                 = 0x8A3D,
	GL_UNIFORM_NAME_LENGTH                                   = 0x8A39,
	GL_UNIFORM_OFFSET                                        = 0x8A3B,
	GL_UNIFORM_SIZE                                          = 0x8A38,
	GL_UNIFORM_TYPE                                          = 0x8A37,
	GL_UNSIGNED_INT_SAMPLER_2D_RECT                          = 0x8DD5,
	GL_UNSIGNED_INT_SAMPLER_BUFFER                           = 0x8DD8,

	// GL 3.2
	GL_ALREADY_SIGNALED                                      = 0x911A,
	GL_CONDITION_SATISFIED                                   = 0x911C,
	GL_CONTEXT_COMPATIBILITY_PROFILE_BIT                     = 0x00000002,
	GL_CONTEXT_CORE_PROFILE_BIT                              = 0x00000001,
	GL_CONTEXT_PROFILE_MASK                                  = 0x9126,
	GL_DEPTH_CLAMP                                           = 0x864F,
	GL_FIRST_VERTEX_CONVENTION                               = 0x8E4D,
	GL_FRAMEBUFFER_ATTACHMENT_LAYERED                        = 0x8DA7,
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS                  = 0x8DA8,
	GL_GEOMETRY_INPUT_TYPE                                   = 0x8917,
	GL_GEOMETRY_OUTPUT_TYPE                                  = 0x8918,
	GL_GEOMETRY_SHADER                                       = 0x8DD9,
	GL_GEOMETRY_VERTICES_OUT                                 = 0x8916,
	GL_INT_SAMPLER_2D_MULTISAMPLE                            = 0x9109,
	GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                      = 0x910C,
	GL_LAST_VERTEX_CONVENTION                                = 0x8E4E,
	GL_LINE_STRIP_ADJACENCY                                  = 0x000B,
	GL_LINES_ADJACENCY                                       = 0x000A,
	GL_MAX_COLOR_TEXTURE_SAMPLES                             = 0x910E,
	GL_MAX_DEPTH_TEXTURE_SAMPLES                             = 0x910F,
	GL_MAX_FRAGMENT_INPUT_COMPONENTS                         = 0x9125,
	GL_MAX_GEOMETRY_INPUT_COMPONENTS                         = 0x9123,
	GL_MAX_GEOMETRY_OUTPUT_COMPONENTS                        = 0x9124,
	GL_MAX_GEOMETRY_OUTPUT_VERTICES                          = 0x8DE0,
	GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                      = 0x8C29,
	GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS                  = 0x8DE1,
	GL_MAX_GEOMETRY_UNIFORM_COMPONENTS                       = 0x8DDF,
	GL_MAX_INTEGER_SAMPLES                                   = 0x9110,
	GL_MAX_SAMPLE_MASK_WORDS                                 = 0x8E59,
	GL_MAX_SERVER_WAIT_TIMEOUT                               = 0x9111,
	GL_MAX_VERTEX_OUTPUT_COMPONENTS                          = 0x9122,
	GL_OBJECT_TYPE                                           = 0x9112,
	GL_PROGRAM_POINT_SIZE                                    = 0x8642,
	GL_PROVOKING_VERTEX                                      = 0x8E4F,
	GL_PROXY_TEXTURE_2D_MULTISAMPLE                          = 0x9101,
	GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY                    = 0x9103,
	GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION              = 0x8E4C,
	GL_SAMPLE_MASK                                           = 0x8E51,
	GL_SAMPLE_MASK_VALUE                                     = 0x8E52,
	GL_SAMPLE_POSITION                                       = 0x8E50,
	GL_SAMPLER_2D_MULTISAMPLE                                = 0x9108,
	GL_SAMPLER_2D_MULTISAMPLE_ARRAY                          = 0x910B,
	GL_SIGNALED                                              = 0x9119,
	GL_SYNC_CONDITION                                        = 0x9113,
	GL_SYNC_FENCE                                            = 0x9116,
	GL_SYNC_FLAGS                                            = 0x9115,
	GL_SYNC_FLUSH_COMMANDS_BIT                               = 0x00000001,
	GL_SYNC_GPU_COMMANDS_COMPLETE                            = 0x9117,
	GL_SYNC_STATUS                                           = 0x9114,
	GL_TEXTURE_2D_MULTISAMPLE                                = 0x9100,
	GL_TEXTURE_2D_MULTISAMPLE_ARRAY                          = 0x9102,
	GL_TEXTURE_BINDING_2D_MULTISAMPLE                        = 0x9104,
	GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY                  = 0x9105,
	GL_TEXTURE_CUBE_MAP_SEAMLESS                             = 0x884F,
	GL_TEXTURE_FIXED_SAMPLE_LOCATIONS                        = 0x9107,
	GL_TEXTURE_SAMPLES                                       = 0x9106,
	GL_TIMEOUT_EXPIRED                                       = 0x911B,
	GL_TIMEOUT_IGNORED                                       = 0xFFFFFFFFFFFFFFFF,
	GL_TRIANGLE_STRIP_ADJACENCY                              = 0x000D,
	GL_TRIANGLES_ADJACENCY                                   = 0x000C,
	GL_UNSIGNALED                                            = 0x9118,
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE                   = 0x910A,
	GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY             = 0x910D,
	GL_WAIT_FAILED                                           = 0x911D,

	// GL 3.3
	GL_ANY_SAMPLES_PASSED                                    = 0x8C2F,
	GL_INT_2_10_10_10_REV                                    = 0x8D9F,
	GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                          = 0x88FC,
	GL_ONE_MINUS_SRC1_ALPHA                                  = 0x88FB,
	GL_ONE_MINUS_SRC1_COLOR                                  = 0x88FA,
	GL_RGB10_A2UI                                            = 0x906F,
	GL_SAMPLER_BINDING                                       = 0x8919,
	GL_SRC1_COLOR                                            = 0x88F9,
	GL_TEXTURE_SWIZZLE_A                                     = 0x8E45,
	GL_TEXTURE_SWIZZLE_B                                     = 0x8E44,
	GL_TEXTURE_SWIZZLE_G                                     = 0x8E43,
	GL_TEXTURE_SWIZZLE_R                                     = 0x8E42,
	GL_TEXTURE_SWIZZLE_RGBA                                  = 0x8E46,
	GL_TIME_ELAPSED                                          = 0x88BF,
	GL_TIMESTAMP                                             = 0x8E28,
	GL_VERTEX_ATTRIB_ARRAY_DIVISOR                           = 0x88FE,

	// GL 4.0
	GL_ACTIVE_SUBROUTINE_MAX_LENGTH                          = 0x8E48,
	GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                   = 0x8E47,
	GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH                  = 0x8E49,
	GL_ACTIVE_SUBROUTINE_UNIFORMS                            = 0x8DE6,
	GL_ACTIVE_SUBROUTINES                                    = 0x8DE5,
	GL_COMPATIBLE_SUBROUTINES                                = 0x8E4B,
	GL_DOUBLE_MAT2                                           = 0x8F46,
	GL_DOUBLE_MAT2x3                                         = 0x8F49,
	GL_DOUBLE_MAT2x4                                         = 0x8F4A,
	GL_DOUBLE_MAT3                                           = 0x8F47,
	GL_DOUBLE_MAT3x2                                         = 0x8F4B,
	GL_DOUBLE_MAT3x4                                         = 0x8F4C,
	GL_DOUBLE_MAT4                                           = 0x8F48,
	GL_DOUBLE_MAT4x2                                         = 0x8F4D,
	GL_DOUBLE_MAT4x3                                         = 0x8F4E,
	GL_DOUBLE_VEC2                                           = 0x8FFC,
	GL_DOUBLE_VEC3                                           = 0x8FFD,
	GL_DOUBLE_VEC4                                           = 0x8FFE,
	GL_DRAW_INDIRECT_BUFFER                                  = 0x8F3F,
	GL_DRAW_INDIRECT_BUFFER_BINDING                          = 0x8F43,
	GL_FRACTIONAL_EVEN                                       = 0x8E7C,
	GL_FRACTIONAL_ODD                                        = 0x8E7B,
	GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                    = 0x8E5D,
	GL_GEOMETRY_SHADER_INVOCATIONS                           = 0x887F,
	GL_INT_SAMPLER_CUBE_MAP_ARRAY                            = 0x900E,
	GL_ISOLINES                                              = 0x8E7A,
	GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS          = 0x8E1E,
	GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS       = 0x8E1F,
	GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                     = 0x8E5C,
	GL_MAX_GEOMETRY_SHADER_INVOCATIONS                       = 0x8E5A,
	GL_MAX_PATCH_VERTICES                                    = 0x8E7D,
	GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS                 = 0x8F9F,
	GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                     = 0x8E5F,
	GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                      = 0x8DE8,
	GL_MAX_SUBROUTINES                                       = 0x8DE7,
	GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                     = 0x886C,
	GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS                    = 0x8E83,
	GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS                  = 0x8E81,
	GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS              = 0x8E85,
	GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                       = 0x8E89,
	GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS                   = 0x8E7F,
	GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS                  = 0x886D,
	GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS                 = 0x8E86,
	GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS               = 0x8E82,
	GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS                    = 0x8E8A,
	GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS                = 0x8E80,
	GL_MAX_TESS_GEN_LEVEL                                    = 0x8E7E,
	GL_MAX_TESS_PATCH_COMPONENTS                             = 0x8E84,
	GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                        = 0x8E70,
	GL_MAX_VERTEX_STREAMS                                    = 0x8E71,
	GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                     = 0x8E5B,
	GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                     = 0x8E5E,
	GL_MIN_SAMPLE_SHADING_VALUE                              = 0x8C37,
	GL_NUM_COMPATIBLE_SUBROUTINES                            = 0x8E4A,
	GL_PATCH_DEFAULT_INNER_LEVEL                             = 0x8E73,
	GL_PATCH_DEFAULT_OUTER_LEVEL                             = 0x8E74,
	GL_PATCH_VERTICES                                        = 0x8E72,
	GL_PATCHES                                               = 0x000E,
	GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                          = 0x900B,
	GL_SAMPLE_SHADING                                        = 0x8C36,
	GL_SAMPLER_CUBE_MAP_ARRAY                                = 0x900C,
	GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                         = 0x900D,
	GL_TESS_CONTROL_OUTPUT_VERTICES                          = 0x8E75,
	GL_TESS_CONTROL_SHADER                                   = 0x8E88,
	GL_TESS_EVALUATION_SHADER                                = 0x8E87,
	GL_TESS_GEN_MODE                                         = 0x8E76,
	GL_TESS_GEN_POINT_MODE                                   = 0x8E79,
	GL_TESS_GEN_SPACING                                      = 0x8E77,
	GL_TESS_GEN_VERTEX_ORDER                                 = 0x8E78,
	GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                        = 0x900A,
	GL_TEXTURE_CUBE_MAP_ARRAY                                = 0x9009,
	GL_TRANSFORM_FEEDBACK                                    = 0x8E22,
	GL_TRANSFORM_FEEDBACK_BINDING                            = 0x8E25,
	GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE                      = 0x8E24,
	GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED                      = 0x8E23,
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER       = 0x84F0,
	GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER    = 0x84F1,
	GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                   = 0x900F,

	// GL 4.1
	GL_ACTIVE_PROGRAM                                        = 0x8259,
	GL_ALL_SHADER_BITS                                       = 0xFFFFFFFF,
	GL_FIXED                                                 = 0x140C,
	GL_FRAGMENT_SHADER_BIT                                   = 0x00000002,
	GL_GEOMETRY_SHADER_BIT                                   = 0x00000004,
	GL_HIGH_FLOAT                                            = 0x8DF2,
	GL_HIGH_INT                                              = 0x8DF5,
	GL_IMPLEMENTATION_COLOR_READ_FORMAT                      = 0x8B9B,
	GL_IMPLEMENTATION_COLOR_READ_TYPE                        = 0x8B9A,
	GL_LAYER_PROVOKING_VERTEX                                = 0x825E,
	GL_LOW_FLOAT                                             = 0x8DF0,
	GL_LOW_INT                                               = 0x8DF3,
	GL_MAX_FRAGMENT_UNIFORM_VECTORS                          = 0x8DFD,
	GL_MAX_VARYING_VECTORS                                   = 0x8DFC,
	GL_MAX_VERTEX_UNIFORM_VECTORS                            = 0x8DFB,
	GL_MAX_VIEWPORTS                                         = 0x825B,
	GL_MEDIUM_FLOAT                                          = 0x8DF1,
	GL_MEDIUM_INT                                            = 0x8DF4,
	GL_NUM_PROGRAM_BINARY_FORMATS                            = 0x87FE,
	GL_NUM_SHADER_BINARY_FORMATS                             = 0x8DF9,
	GL_PROGRAM_BINARY_FORMATS                                = 0x87FF,
	GL_PROGRAM_BINARY_LENGTH                                 = 0x8741,
	GL_PROGRAM_BINARY_RETRIEVABLE_HINT                       = 0x8257,
	GL_PROGRAM_PIPELINE_BINDING                              = 0x825A,
	GL_PROGRAM_SEPARABLE                                     = 0x8258,
	GL_RGB565                                                = 0x8D62,
	GL_SHADER_BINARY_FORMATS                                 = 0x8DF8,
	GL_SHADER_COMPILER                                       = 0x8DFA,
	GL_TESS_CONTROL_SHADER_BIT                               = 0x00000008,
	GL_TESS_EVALUATION_SHADER_BIT                            = 0x00000010,
	GL_UNDEFINED_VERTEX                                      = 0x8260,
	GL_VERTEX_SHADER_BIT                                     = 0x00000001,
	GL_VIEWPORT_BOUNDS_RANGE                                 = 0x825D,
	GL_VIEWPORT_INDEX_PROVOKING_VERTEX                       = 0x825F,
	GL_VIEWPORT_SUBPIXEL_BITS                                = 0x825C,

	// GL 4.2
	GL_ACTIVE_ATOMIC_COUNTER_BUFFERS                         = 0x92D9,
	GL_ALL_BARRIER_BITS                                      = 0xFFFFFFFF,
	GL_ATOMIC_COUNTER_BARRIER_BIT                            = 0x00001000,
	GL_ATOMIC_COUNTER_BUFFER                                 = 0x92C0,
	GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES   = 0x92C6,
	GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS          = 0x92C5,
	GL_ATOMIC_COUNTER_BUFFER_BINDING                         = 0x92C1,
	GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE                       = 0x92C4,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER   = 0x92CB,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER   = 0x92CA,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER = 0x92C8,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = 0x92C9,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER     = 0x92C7,
	GL_ATOMIC_COUNTER_BUFFER_SIZE                            = 0x92C3,
	GL_ATOMIC_COUNTER_BUFFER_START                           = 0x92C2,
	GL_BUFFER_UPDATE_BARRIER_BIT                             = 0x00000200,
	GL_COMMAND_BARRIER_BIT                                   = 0x00000040,
	GL_ELEMENT_ARRAY_BARRIER_BIT                             = 0x00000002,
	GL_FRAMEBUFFER_BARRIER_BIT                               = 0x00000400,
	GL_IMAGE_1D                                              = 0x904C,
	GL_IMAGE_1D_ARRAY                                        = 0x9052,
	GL_IMAGE_2D                                              = 0x904D,
	GL_IMAGE_2D_ARRAY                                        = 0x9053,
	GL_IMAGE_2D_MULTISAMPLE                                  = 0x9055,
	GL_IMAGE_2D_MULTISAMPLE_ARRAY                            = 0x9056,
	GL_IMAGE_2D_RECT                                         = 0x904F,
	GL_IMAGE_3D                                              = 0x904E,
	GL_IMAGE_BINDING_ACCESS                                  = 0x8F3E,
	GL_IMAGE_BINDING_FORMAT                                  = 0x906E,
	GL_IMAGE_BINDING_LAYER                                   = 0x8F3D,
	GL_IMAGE_BINDING_LAYERED                                 = 0x8F3C,
	GL_IMAGE_BINDING_LEVEL                                   = 0x8F3B,
	GL_IMAGE_BINDING_NAME                                    = 0x8F3A,
	GL_IMAGE_BUFFER                                          = 0x9051,
	GL_IMAGE_CUBE                                            = 0x9050,
	GL_IMAGE_CUBE_MAP_ARRAY                                  = 0x9054,
	GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                   = 0x90C9,
	GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                    = 0x90C8,
	GL_IMAGE_FORMAT_COMPATIBILITY_TYPE                       = 0x90C7,
	GL_INT_IMAGE_1D                                          = 0x9057,
	GL_INT_IMAGE_1D_ARRAY                                    = 0x905D,
	GL_INT_IMAGE_2D                                          = 0x9058,
	GL_INT_IMAGE_2D_ARRAY                                    = 0x905E,
	GL_INT_IMAGE_2D_MULTISAMPLE                              = 0x9060,
	GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY                        = 0x9061,
	GL_INT_IMAGE_2D_RECT                                     = 0x905A,
	GL_INT_IMAGE_3D                                          = 0x9059,
	GL_INT_IMAGE_BUFFER                                      = 0x905C,
	GL_INT_IMAGE_CUBE                                        = 0x905B,
	GL_INT_IMAGE_CUBE_MAP_ARRAY                              = 0x905F,
	GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                    = 0x92DC,
	GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE                        = 0x92D8,
	GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                   = 0x92D1,
	GL_MAX_COMBINED_ATOMIC_COUNTERS                          = 0x92D7,
	GL_MAX_COMBINED_IMAGE_UNIFORMS                           = 0x90CF,
	GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS         = 0x8F39,
	GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                   = 0x92D0,
	GL_MAX_FRAGMENT_ATOMIC_COUNTERS                          = 0x92D6,
	GL_MAX_FRAGMENT_IMAGE_UNIFORMS                           = 0x90CE,
	GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                   = 0x92CF,
	GL_MAX_GEOMETRY_ATOMIC_COUNTERS                          = 0x92D5,
	GL_MAX_GEOMETRY_IMAGE_UNIFORMS                           = 0x90CD,
	GL_MAX_IMAGE_SAMPLES                                     = 0x906D,
	GL_MAX_IMAGE_UNITS                                       = 0x8F38,
	GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS               = 0x92CD,
	GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS                      = 0x92D3,
	GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS                       = 0x90CB,
	GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS            = 0x92CE,
	GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS                   = 0x92D4,
	GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS                    = 0x90CC,
	GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                     = 0x92CC,
	GL_MAX_VERTEX_ATOMIC_COUNTERS                            = 0x92D2,
	GL_MAX_VERTEX_IMAGE_UNIFORMS                             = 0x90CA,
	GL_MIN_MAP_BUFFER_ALIGNMENT                              = 0x90BC,
	GL_NUM_SAMPLE_COUNTS                                     = 0x9380,
	GL_PACK_COMPRESSED_BLOCK_DEPTH                           = 0x912D,
	GL_PACK_COMPRESSED_BLOCK_HEIGHT                          = 0x912C,
	GL_PACK_COMPRESSED_BLOCK_SIZE                            = 0x912E,
	GL_PACK_COMPRESSED_BLOCK_WIDTH                           = 0x912B,
	GL_PIXEL_BUFFER_BARRIER_BIT                              = 0x00000080,
	GL_SHADER_IMAGE_ACCESS_BARRIER_BIT                       = 0x00000020,
	GL_TEXTURE_FETCH_BARRIER_BIT                             = 0x00000008,
	GL_TEXTURE_IMMUTABLE_FORMAT                              = 0x912F,
	GL_TEXTURE_UPDATE_BARRIER_BIT                            = 0x00000100,
	GL_TRANSFORM_FEEDBACK_BARRIER_BIT                        = 0x00000800,
	GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                   = 0x92DA,
	GL_UNIFORM_BARRIER_BIT                                   = 0x00000004,
	GL_UNPACK_COMPRESSED_BLOCK_DEPTH                         = 0x9129,
	GL_UNPACK_COMPRESSED_BLOCK_HEIGHT                        = 0x9128,
	GL_UNPACK_COMPRESSED_BLOCK_SIZE                          = 0x912A,
	GL_UNPACK_COMPRESSED_BLOCK_WIDTH                         = 0x9127,
	GL_UNSIGNED_INT_ATOMIC_COUNTER                           = 0x92DB,
	GL_UNSIGNED_INT_IMAGE_1D                                 = 0x9062,
	GL_UNSIGNED_INT_IMAGE_1D_ARRAY                           = 0x9068,
	GL_UNSIGNED_INT_IMAGE_2D                                 = 0x9063,
	GL_UNSIGNED_INT_IMAGE_2D_ARRAY                           = 0x9069,
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                     = 0x906B,
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY               = 0x906C,
	GL_UNSIGNED_INT_IMAGE_2D_RECT                            = 0x9065,
	GL_UNSIGNED_INT_IMAGE_3D                                 = 0x9064,
	GL_UNSIGNED_INT_IMAGE_BUFFER                             = 0x9067,
	GL_UNSIGNED_INT_IMAGE_CUBE                               = 0x9066,
	GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                     = 0x906A,
	GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT                       = 0x00000001,

	// GL 4.3
	GL_ACTIVE_RESOURCES                                      = 0x92F5,
	GL_ACTIVE_VARIABLES                                      = 0x9305,
	GL_ANY_SAMPLES_PASSED_CONSERVATIVE                       = 0x8D6A,
	GL_ARRAY_SIZE                                            = 0x92FB,
	GL_ARRAY_STRIDE                                          = 0x92FE,
	GL_ATOMIC_COUNTER_BUFFER_INDEX                           = 0x9301,
	GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER    = 0x90ED,
	GL_AUTO_GENERATE_MIPMAP                                  = 0x8295,
	GL_BLOCK_INDEX                                           = 0x92FD,
	GL_BUFFER                                                = 0x82E0,
	GL_BUFFER_BINDING                                        = 0x9302,
	GL_BUFFER_DATA_SIZE                                      = 0x9303,
	GL_BUFFER_VARIABLE                                       = 0x92E5,
	GL_CAVEAT_SUPPORT                                        = 0x82B8,
	GL_CLEAR_BUFFER                                          = 0x82B4,
	GL_COLOR_COMPONENTS                                      = 0x8283,
	GL_COLOR_ENCODING                                        = 0x8296,
	GL_COLOR_RENDERABLE                                      = 0x8286,
	GL_COMPRESSED_R11_EAC                                    = 0x9270,
	GL_COMPRESSED_RG11_EAC                                   = 0x9272,
	GL_COMPRESSED_RGB8_ETC2                                  = 0x9274,
	GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2              = 0x9276,
	GL_COMPRESSED_RGBA8_ETC2_EAC                             = 0x9278,
	GL_COMPRESSED_SIGNED_R11_EAC                             = 0x9271,
	GL_COMPRESSED_SIGNED_RG11_EAC                            = 0x9273,
	GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                      = 0x9279,
	GL_COMPRESSED_SRGB8_ETC2                                 = 0x9275,
	GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2             = 0x9277,
	GL_COMPUTE_LOCAL_WORK_SIZE                               = 0x8267,
	GL_COMPUTE_SHADER                                        = 0x91B9,
	GL_COMPUTE_SUBROUTINE                                    = 0x92ED,
	GL_COMPUTE_SUBROUTINE_UNIFORM                            = 0x92F3,
	GL_COMPUTE_TEXTURE                                       = 0x82A0,
	GL_CONTEXT_FLAG_DEBUG_BIT                                = 0x00000002,
	GL_DEBUG_CALLBACK_FUNCTION                               = 0x8244,
	GL_DEBUG_CALLBACK_USER_PARAM                             = 0x8245,
	GL_DEBUG_GROUP_STACK_DEPTH                               = 0x826D,
	GL_DEBUG_LOGGED_MESSAGES                                 = 0x9145,
	GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                      = 0x8243,
	GL_DEBUG_OUTPUT                                          = 0x92E0,
	GL_DEBUG_OUTPUT_SYNCHRONOUS                              = 0x8242,
	GL_DEBUG_SEVERITY_HIGH                                   = 0x9146,
	GL_DEBUG_SEVERITY_LOW                                    = 0x9148,
	GL_DEBUG_SEVERITY_MEDIUM                                 = 0x9147,
	GL_DEBUG_SEVERITY_NOTIFICATION                           = 0x826B,
	GL_DEBUG_SOURCE_API                                      = 0x8246,
	GL_DEBUG_SOURCE_APPLICATION                              = 0x824A,
	GL_DEBUG_SOURCE_OTHER                                    = 0x824B,
	GL_DEBUG_SOURCE_SHADER_COMPILER                          = 0x8248,
	GL_DEBUG_SOURCE_THIRD_PARTY                              = 0x8249,
	GL_DEBUG_SOURCE_WINDOW_SYSTEM                            = 0x8247,
	GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR                        = 0x824D,
	GL_DEBUG_TYPE_ERROR                                      = 0x824C,
	GL_DEBUG_TYPE_MARKER                                     = 0x8268,
	GL_DEBUG_TYPE_OTHER                                      = 0x8251,
	GL_DEBUG_TYPE_PERFORMANCE                                = 0x8250,
	GL_DEBUG_TYPE_POP_GROUP                                  = 0x826A,
	GL_DEBUG_TYPE_PORTABILITY                                = 0x824F,
	GL_DEBUG_TYPE_PUSH_GROUP                                 = 0x8269,
	GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR                         = 0x824E,
	GL_DEPTH_COMPONENTS                                      = 0x8284,
	GL_DEPTH_RENDERABLE                                      = 0x8287,
	GL_DEPTH_STENCIL_TEXTURE_MODE                            = 0x90EA,
	GL_DISPATCH_INDIRECT_BUFFER                              = 0x90EE,
	GL_DISPATCH_INDIRECT_BUFFER_BINDING                      = 0x90EF,
	GL_DISPLAY_LIST                                          = 0x82E7,
	GL_FILTER                                                = 0x829A,
	GL_FRAGMENT_SUBROUTINE                                   = 0x92EC,
	GL_FRAGMENT_SUBROUTINE_UNIFORM                           = 0x92F2,
	GL_FRAGMENT_TEXTURE                                      = 0x829F,
	GL_FRAMEBUFFER_BLEND                                     = 0x828B,
	GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS            = 0x9314,
	GL_FRAMEBUFFER_DEFAULT_HEIGHT                            = 0x9311,
	GL_FRAMEBUFFER_DEFAULT_LAYERS                            = 0x9312,
	GL_FRAMEBUFFER_DEFAULT_SAMPLES                           = 0x9313,
	GL_FRAMEBUFFER_DEFAULT_WIDTH                             = 0x9310,
	GL_FRAMEBUFFER_RENDERABLE                                = 0x8289,
	GL_FRAMEBUFFER_RENDERABLE_LAYERED                        = 0x828A,
	GL_FULL_SUPPORT                                          = 0x82B7,
	GL_GEOMETRY_SUBROUTINE                                   = 0x92EB,
	GL_GEOMETRY_SUBROUTINE_UNIFORM                           = 0x92F1,
	GL_GEOMETRY_TEXTURE                                      = 0x829E,
	GL_GET_TEXTURE_IMAGE_FORMAT                              = 0x8291,
	GL_GET_TEXTURE_IMAGE_TYPE                                = 0x8292,
	GL_IMAGE_CLASS_1_X_16                                    = 0x82BE,
	GL_IMAGE_CLASS_1_X_32                                    = 0x82BB,
	GL_IMAGE_CLASS_1_X_8                                     = 0x82C1,
	GL_IMAGE_CLASS_10_10_10_2                                = 0x82C3,
	GL_IMAGE_CLASS_11_11_10                                  = 0x82C2,
	GL_IMAGE_CLASS_2_X_16                                    = 0x82BD,
	GL_IMAGE_CLASS_2_X_32                                    = 0x82BA,
	GL_IMAGE_CLASS_2_X_8                                     = 0x82C0,
	GL_IMAGE_CLASS_4_X_16                                    = 0x82BC,
	GL_IMAGE_CLASS_4_X_32                                    = 0x82B9,
	GL_IMAGE_CLASS_4_X_8                                     = 0x82BF,
	GL_IMAGE_COMPATIBILITY_CLASS                             = 0x82A8,
	GL_IMAGE_PIXEL_FORMAT                                    = 0x82A9,
	GL_IMAGE_PIXEL_TYPE                                      = 0x82AA,
	GL_IMAGE_TEXEL_SIZE                                      = 0x82A7,
	GL_INTERNALFORMAT_ALPHA_SIZE                             = 0x8274,
	GL_INTERNALFORMAT_ALPHA_TYPE                             = 0x827B,
	GL_INTERNALFORMAT_BLUE_SIZE                              = 0x8273,
	GL_INTERNALFORMAT_BLUE_TYPE                              = 0x827A,
	GL_INTERNALFORMAT_DEPTH_SIZE                             = 0x8275,
	GL_INTERNALFORMAT_DEPTH_TYPE                             = 0x827C,
	GL_INTERNALFORMAT_GREEN_SIZE                             = 0x8272,
	GL_INTERNALFORMAT_GREEN_TYPE                             = 0x8279,
	GL_INTERNALFORMAT_PREFERRED                              = 0x8270,
	GL_INTERNALFORMAT_RED_SIZE                               = 0x8271,
	GL_INTERNALFORMAT_RED_TYPE                               = 0x8278,
	GL_INTERNALFORMAT_SHARED_SIZE                            = 0x8277,
	GL_INTERNALFORMAT_STENCIL_SIZE                           = 0x8276,
	GL_INTERNALFORMAT_STENCIL_TYPE                           = 0x827D,
	GL_INTERNALFORMAT_SUPPORTED                              = 0x826F,
	GL_IS_PER_PATCH                                          = 0x92E7,
	GL_IS_ROW_MAJOR                                          = 0x9300,
	GL_LOCATION                                              = 0x930E,
	GL_LOCATION_INDEX                                        = 0x930F,
	GL_MANUAL_GENERATE_MIPMAP                                = 0x8294,
	GL_MATRIX_STRIDE                                         = 0x92FF,
	GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS               = 0x8266,
	GL_MAX_COMBINED_DIMENSIONS                               = 0x8282,
	GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES                  = 0x8F39,
	GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                    = 0x90DC,
	GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                    = 0x8264,
	GL_MAX_COMPUTE_ATOMIC_COUNTERS                           = 0x8265,
	GL_MAX_COMPUTE_IMAGE_UNIFORMS                            = 0x91BD,
	GL_MAX_COMPUTE_LOCAL_INVOCATIONS                         = 0x90EB,
	GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                     = 0x90DB,
	GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                        = 0x8262,
	GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                       = 0x91BC,
	GL_MAX_COMPUTE_UNIFORM_BLOCKS                            = 0x91BB,
	GL_MAX_COMPUTE_UNIFORM_COMPONENTS                        = 0x8263,
	GL_MAX_COMPUTE_WORK_GROUP_COUNT                          = 0x91BE,
	GL_MAX_COMPUTE_WORK_GROUP_SIZE                           = 0x91BF,
	GL_MAX_DEBUG_GROUP_STACK_DEPTH                           = 0x826C,
	GL_MAX_DEBUG_LOGGED_MESSAGES                             = 0x9144,
	GL_MAX_DEBUG_MESSAGE_LENGTH                              = 0x9143,
	GL_MAX_DEPTH                                             = 0x8280,
	GL_MAX_ELEMENT_INDEX                                     = 0x8D6B,
	GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                    = 0x90DA,
	GL_MAX_FRAMEBUFFER_HEIGHT                                = 0x9316,
	GL_MAX_FRAMEBUFFER_LAYERS                                = 0x9317,
	GL_MAX_FRAMEBUFFER_SAMPLES                               = 0x9318,
	GL_MAX_FRAMEBUFFER_WIDTH                                 = 0x9315,
	GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                    = 0x90D7,
	GL_MAX_HEIGHT                                            = 0x827F,
	GL_MAX_LABEL_LENGTH                                      = 0x82E8,
	GL_MAX_LAYERS                                            = 0x8281,
	GL_MAX_NAME_LENGTH                                       = 0x92F6,
	GL_MAX_NUM_ACTIVE_VARIABLES                              = 0x92F7,
	GL_MAX_NUM_COMPATIBLE_SUBROUTINES                        = 0x92F8,
	GL_MAX_SHADER_STORAGE_BLOCK_SIZE                         = 0x90DE,
	GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                    = 0x90DD,
	GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS                = 0x90D8,
	GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS             = 0x90D9,
	GL_MAX_UNIFORM_LOCATIONS                                 = 0x826E,
	GL_MAX_VERTEX_ATTRIB_BINDINGS                            = 0x82DA,
	GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                     = 0x82D9,
	GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                      = 0x90D6,
	GL_MAX_WIDTH                                             = 0x827E,
	GL_MIPMAP                                                = 0x8293,
	GL_NAME_LENGTH                                           = 0x92F9,
	GL_NUM_ACTIVE_VARIABLES                                  = 0x9304,
	GL_NUM_SHADING_LANGUAGE_VERSIONS                         = 0x82E9,
	GL_OFFSET                                                = 0x92FC,
	GL_PRIMITIVE_RESTART_FIXED_INDEX                         = 0x8D69,
	GL_PROGRAM                                               = 0x82E2,
	GL_PROGRAM_INPUT                                         = 0x92E3,
	GL_PROGRAM_OUTPUT                                        = 0x92E4,
	GL_PROGRAM_PIPELINE                                      = 0x82E4,
	GL_QUERY                                                 = 0x82E3,
	GL_READ_PIXELS                                           = 0x828C,
	GL_READ_PIXELS_FORMAT                                    = 0x828D,
	GL_READ_PIXELS_TYPE                                      = 0x828E,
	GL_REFERENCED_BY_COMPUTE_SHADER                          = 0x930B,
	GL_REFERENCED_BY_FRAGMENT_SHADER                         = 0x930A,
	GL_REFERENCED_BY_GEOMETRY_SHADER                         = 0x9309,
	GL_REFERENCED_BY_TESS_CONTROL_SHADER                     = 0x9307,
	GL_REFERENCED_BY_TESS_EVALUATION_SHADER                  = 0x9308,
	GL_REFERENCED_BY_VERTEX_SHADER                           = 0x9306,
	GL_SAMPLER                                               = 0x82E6,
	GL_SHADER                                                = 0x82E1,
	GL_SHADER_IMAGE_ATOMIC                                   = 0x82A6,
	GL_SHADER_IMAGE_LOAD                                     = 0x82A4,
	GL_SHADER_IMAGE_STORE                                    = 0x82A5,
	GL_SHADER_STORAGE_BARRIER_BIT                            = 0x2000,
	GL_SHADER_STORAGE_BLOCK                                  = 0x92E6,
	GL_SHADER_STORAGE_BUFFER                                 = 0x90D2,
	GL_SHADER_STORAGE_BUFFER_BINDING                         = 0x90D3,
	GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT                = 0x90DF,
	GL_SHADER_STORAGE_BUFFER_SIZE                            = 0x90D5,
	GL_SHADER_STORAGE_BUFFER_START                           = 0x90D4,
	GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                   = 0x82AC,
	GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE                  = 0x82AE,
	GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST                 = 0x82AD,
	GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE                = 0x82AF,
	GL_SRGB_READ                                             = 0x8297,
	GL_SRGB_WRITE                                            = 0x8298,
	GL_STACK_OVERFLOW                                        = 0x0503,
	GL_STACK_UNDERFLOW                                       = 0x0504,
	GL_STENCIL_COMPONENTS                                    = 0x8285,
	GL_STENCIL_RENDERABLE                                    = 0x8288,
	GL_TESS_CONTROL_SUBROUTINE                               = 0x92E9,
	GL_TESS_CONTROL_SUBROUTINE_UNIFORM                       = 0x92EF,
	GL_TESS_CONTROL_TEXTURE                                  = 0x829C,
	GL_TESS_EVALUATION_SUBROUTINE                            = 0x92EA,
	GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                    = 0x92F0,
	GL_TESS_EVALUATION_TEXTURE                               = 0x829D,
	GL_TEXTURE_BUFFER_OFFSET                                 = 0x919D,
	GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                       = 0x919F,
	GL_TEXTURE_BUFFER_SIZE                                   = 0x919E,
	GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                       = 0x82B2,
	GL_TEXTURE_COMPRESSED_BLOCK_SIZE                         = 0x82B3,
	GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                        = 0x82B1,
	GL_TEXTURE_GATHER                                        = 0x82A2,
	GL_TEXTURE_GATHER_SHADOW                                 = 0x82A3,
	GL_TEXTURE_IMAGE_FORMAT                                  = 0x828F,
	GL_TEXTURE_IMAGE_TYPE                                    = 0x8290,
	GL_TEXTURE_IMMUTABLE_LEVELS                              = 0x82DF,
	GL_TEXTURE_SHADOW                                        = 0x82A1,
	GL_TEXTURE_VIEW                                          = 0x82B5,
	GL_TEXTURE_VIEW_MIN_LAYER                                = 0x82DD,
	GL_TEXTURE_VIEW_MIN_LEVEL                                = 0x82DB,
	GL_TEXTURE_VIEW_NUM_LAYERS                               = 0x82DE,
	GL_TEXTURE_VIEW_NUM_LEVELS                               = 0x82DC,
	GL_TOP_LEVEL_ARRAY_SIZE                                  = 0x930C,
	GL_TOP_LEVEL_ARRAY_STRIDE                                = 0x930D,
	GL_TRANSFORM_FEEDBACK_VARYING                            = 0x92F4,
	GL_TYPE                                                  = 0x92FA,
	GL_UNIFORM                                               = 0x92E1,
	GL_UNIFORM_BLOCK                                         = 0x92E2,
	GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER            = 0x90EC,
	GL_VERTEX_ATTRIB_ARRAY_LONG                              = 0x874E,
	GL_VERTEX_ATTRIB_BINDING                                 = 0x82D4,
	GL_VERTEX_ATTRIB_RELATIVE_OFFSET                         = 0x82D5,
	GL_VERTEX_BINDING_DIVISOR                                = 0x82D6,
	GL_VERTEX_BINDING_OFFSET                                 = 0x82D7,
	GL_VERTEX_BINDING_STRIDE                                 = 0x82D8,
	GL_VERTEX_SUBROUTINE                                     = 0x92E8,
	GL_VERTEX_SUBROUTINE_UNIFORM                             = 0x92EE,
	GL_VERTEX_TEXTURE                                        = 0x829B,
	GL_VIEW_CLASS_128_BITS                                   = 0x82C4,
	GL_VIEW_CLASS_16_BITS                                    = 0x82CA,
	GL_VIEW_CLASS_24_BITS                                    = 0x82C9,
	GL_VIEW_CLASS_32_BITS                                    = 0x82C8,
	GL_VIEW_CLASS_48_BITS                                    = 0x82C7,
	GL_VIEW_CLASS_64_BITS                                    = 0x82C6,
	GL_VIEW_CLASS_8_BITS                                     = 0x82CB,
	GL_VIEW_CLASS_96_BITS                                    = 0x82C5,
	GL_VIEW_CLASS_BPTC_FLOAT                                 = 0x82D3,
	GL_VIEW_CLASS_BPTC_UNORM                                 = 0x82D2,
	GL_VIEW_CLASS_RGTC1_RED                                  = 0x82D0,
	GL_VIEW_CLASS_RGTC2_RG                                   = 0x82D1,
	GL_VIEW_CLASS_S3TC_DXT1_RGB                              = 0x82CC,
	GL_VIEW_CLASS_S3TC_DXT1_RGBA                             = 0x82CD,
	GL_VIEW_CLASS_S3TC_DXT3_RGBA                             = 0x82CE,
	GL_VIEW_CLASS_S3TC_DXT5_RGBA                             = 0x82CF,
	GL_VIEW_COMPATIBILITY_CLASS                              = 0x82B6,

	// GLEXT
	GL_1PASS_EXT                                             = 0x80A1,
	GL_1PASS_SGIS                                            = 0x80A1,
	GL_2PASS_0_EXT                                           = 0x80A2,
	GL_2PASS_0_SGIS                                          = 0x80A2,
	GL_2PASS_1_EXT                                           = 0x80A3,
	GL_2PASS_1_SGIS                                          = 0x80A3,
	GL_2X_BIT_ATI                                            = 0x00000001,
	GL_422_AVERAGE_EXT                                       = 0x80CE,
	GL_422_EXT                                               = 0x80CC,
	GL_422_REV_AVERAGE_EXT                                   = 0x80CF,
	GL_422_REV_EXT                                           = 0x80CD,
	GL_4PASS_0_EXT                                           = 0x80A4,
	GL_4PASS_0_SGIS                                          = 0x80A4,
	GL_4PASS_1_EXT                                           = 0x80A5,
	GL_4PASS_1_SGIS                                          = 0x80A5,
	GL_4PASS_2_EXT                                           = 0x80A6,
	GL_4PASS_2_SGIS                                          = 0x80A6,
	GL_4PASS_3_EXT                                           = 0x80A7,
	GL_4PASS_3_SGIS                                          = 0x80A7,
	GL_4X_BIT_ATI                                            = 0x00000002,
	GL_8X_BIT_ATI                                            = 0x00000004,
	GL_ABGR_EXT                                              = 0x8000,
	GL_ACCUM_ADJACENT_PAIRS_NV                               = 0x90AD,
	GL_ACTIVE_PROGRAM_EXT                                    = 0x8B8D,
	GL_ACTIVE_STENCIL_FACE_EXT                               = 0x8911,
	GL_ACTIVE_TEXTURE_ARB                                    = 0x84E0,
	GL_ACTIVE_VARYING_MAX_LENGTH_NV                          = 0x8C82,
	GL_ACTIVE_VARYINGS_NV                                    = 0x8C81,
	GL_ACTIVE_VERTEX_UNITS_ARB                               = 0x86A5,
	GL_ADD_ATI                                               = 0x8963,
	GL_ADD_SIGNED_ARB                                        = 0x8574,
	GL_ADD_SIGNED_EXT                                        = 0x8574,
	GL_ADJACENT_PAIRS_NV                                     = 0x90AE,
	GL_AFFINE_2D_NV                                          = 0x9092,
	GL_AFFINE_3D_NV                                          = 0x9094,
	GL_ALL_BARRIER_BITS_EXT                                  = 0xFFFFFFFF,
	GL_ALL_COMPLETED_NV                                      = 0x84F2,
	GL_ALLOW_DRAW_FRG_HINT_PGI                               = 0x1A210,
	GL_ALLOW_DRAW_MEM_HINT_PGI                               = 0x1A211,
	GL_ALLOW_DRAW_OBJ_HINT_PGI                               = 0x1A20E,
	GL_ALLOW_DRAW_WIN_HINT_PGI                               = 0x1A20F,
	GL_ALPHA_FLOAT16_APPLE                                   = 0x881C,
	GL_ALPHA_FLOAT16_ATI                                     = 0x881C,
	GL_ALPHA_FLOAT32_APPLE                                   = 0x8816,
	GL_ALPHA_FLOAT32_ATI                                     = 0x8816,
	GL_ALPHA_INTEGER_EXT                                     = 0x8D97,
	GL_ALPHA_MAX_CLAMP_INGR                                  = 0x8567,
	GL_ALPHA_MAX_SGIX                                        = 0x8321,
	GL_ALPHA_MIN_CLAMP_INGR                                  = 0x8563,
	GL_ALPHA_MIN_SGIX                                        = 0x8320,
	GL_ALPHA_SNORM                                           = 0x9010,
	GL_ALPHA12_EXT                                           = 0x803D,
	GL_ALPHA16_EXT                                           = 0x803E,
	GL_ALPHA16_SNORM                                         = 0x9018,
	GL_ALPHA16F_ARB                                          = 0x881C,
	GL_ALPHA16I_EXT                                          = 0x8D8A,
	GL_ALPHA16UI_EXT                                         = 0x8D78,
	GL_ALPHA32F_ARB                                          = 0x8816,
	GL_ALPHA32I_EXT                                          = 0x8D84,
	GL_ALPHA32UI_EXT                                         = 0x8D72,
	GL_ALPHA4_EXT                                            = 0x803B,
	GL_ALPHA8_EXT                                            = 0x803C,
	GL_ALPHA8_SNORM                                          = 0x9014,
	GL_ALPHA8I_EXT                                           = 0x8D90,
	GL_ALPHA8UI_EXT                                          = 0x8D7E,
	GL_ALWAYS_FAST_HINT_PGI                                  = 0x1A20C,
	GL_ALWAYS_SOFT_HINT_PGI                                  = 0x1A20D,
	GL_ARC_TO_NV                                             = 0xFE,
	GL_ARRAY_BUFFER_ARB                                      = 0x8892,
	GL_ARRAY_BUFFER_BINDING_ARB                              = 0x8894,
	GL_ARRAY_ELEMENT_LOCK_COUNT_EXT                          = 0x81A9,
	GL_ARRAY_ELEMENT_LOCK_FIRST_EXT                          = 0x81A8,
	GL_ARRAY_OBJECT_BUFFER_ATI                               = 0x8766,
	GL_ARRAY_OBJECT_OFFSET_ATI                               = 0x8767,
	GL_ASYNC_DRAW_PIXELS_SGIX                                = 0x835D,
	GL_ASYNC_HISTOGRAM_SGIX                                  = 0x832C,
	GL_ASYNC_MARKER_SGIX                                     = 0x8329,
	GL_ASYNC_READ_PIXELS_SGIX                                = 0x835E,
	GL_ASYNC_TEX_IMAGE_SGIX                                  = 0x835C,
	GL_ATOMIC_COUNTER_BARRIER_BIT_EXT                        = 0x00001000,
	GL_ATTENUATION_EXT                                       = 0x834D,
	GL_ATTRIB_ARRAY_POINTER_NV                               = 0x8645,
	GL_ATTRIB_ARRAY_SIZE_NV                                  = 0x8623,
	GL_ATTRIB_ARRAY_STRIDE_NV                                = 0x8624,
	GL_ATTRIB_ARRAY_TYPE_NV                                  = 0x8625,
	GL_AUX_DEPTH_STENCIL_APPLE                               = 0x8A14,
	GL_AVERAGE_EXT                                           = 0x8335,
	GL_AVERAGE_HP                                            = 0x8160,
	GL_BACK_NORMALS_HINT_PGI                                 = 0x1A223,
	GL_BACK_PRIMARY_COLOR_NV                                 = 0x8C77,
	GL_BACK_SECONDARY_COLOR_NV                               = 0x8C78,
	GL_BEVEL_NV                                              = 0x90A6,
	GL_BGR_EXT                                               = 0x80E0,
	GL_BGR_INTEGER_EXT                                       = 0x8D9A,
	GL_BGRA_EXT                                              = 0x80E1,
	GL_BGRA_INTEGER_EXT                                      = 0x8D9B,
	GL_BIAS_BIT_ATI                                          = 0x00000008,
	GL_BIAS_BY_NEGATIVE_ONE_HALF_NV                          = 0x8541,
	GL_BINORMAL_ARRAY_EXT                                    = 0x843A,
	GL_BINORMAL_ARRAY_POINTER_EXT                            = 0x8443,
	GL_BINORMAL_ARRAY_STRIDE_EXT                             = 0x8441,
	GL_BINORMAL_ARRAY_TYPE_EXT                               = 0x8440,
	GL_BLEND_COLOR                                           = 0x8005,
	GL_BLEND_COLOR_EXT                                       = 0x8005,
	GL_BLEND_DST_ALPHA_EXT                                   = 0x80CA,
	GL_BLEND_DST_RGB_EXT                                     = 0x80C8,
	GL_BLEND_EQUATION                                        = 0x8009,
	GL_BLEND_EQUATION_ALPHA_EXT                              = 0x883D,
	GL_BLEND_EQUATION_EXT                                    = 0x8009,
	GL_BLEND_EQUATION_RGB_EXT                                = 0x8009,
	GL_BLEND_SRC_ALPHA_EXT                                   = 0x80CB,
	GL_BLEND_SRC_RGB_EXT                                     = 0x80C9,
	GL_BLUE_BIT_ATI                                          = 0x00000004,
	GL_BLUE_INTEGER_EXT                                      = 0x8D96,
	GL_BLUE_MAX_CLAMP_INGR                                   = 0x8566,
	GL_BLUE_MIN_CLAMP_INGR                                   = 0x8562,
	GL_BOLD_BIT_NV                                           = 0x01,
	GL_BOOL_ARB                                              = 0x8B56,
	GL_BOOL_VEC2_ARB                                         = 0x8B57,
	GL_BOOL_VEC3_ARB                                         = 0x8B58,
	GL_BOOL_VEC4_ARB                                         = 0x8B59,
	GL_BOUNDING_BOX_NV                                       = 0x908D,
	GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV                     = 0x909C,
	GL_BUFFER_ACCESS_ARB                                     = 0x88BB,
	GL_BUFFER_FLUSHING_UNMAP_APPLE                           = 0x8A13,
	GL_BUFFER_GPU_ADDRESS_NV                                 = 0x8F1D,
	GL_BUFFER_MAP_POINTER_ARB                                = 0x88BD,
	GL_BUFFER_MAPPED_ARB                                     = 0x88BC,
	GL_BUFFER_OBJECT_APPLE                                   = 0x85B3,
	GL_BUFFER_SERIALIZED_MODIFY_APPLE                        = 0x8A12,
	GL_BUFFER_SIZE_ARB                                       = 0x8764,
	GL_BUFFER_UPDATE_BARRIER_BIT_EXT                         = 0x00000200,
	GL_BUFFER_USAGE_ARB                                      = 0x8765,
	GL_BUMP_ENVMAP_ATI                                       = 0x877B,
	GL_BUMP_NUM_TEX_UNITS_ATI                                = 0x8777,
	GL_BUMP_ROT_MATRIX_ATI                                   = 0x8775,
	GL_BUMP_ROT_MATRIX_SIZE_ATI                              = 0x8776,
	GL_BUMP_TARGET_ATI                                       = 0x877C,
	GL_BUMP_TEX_UNITS_ATI                                    = 0x8778,
	GL_CALLIGRAPHIC_FRAGMENT_SGIX                            = 0x8183,
	GL_CIRCULAR_CCW_ARC_TO_NV                                = 0xF8,
	GL_CIRCULAR_CW_ARC_TO_NV                                 = 0xFA,
	GL_CIRCULAR_TANGENT_ARC_TO_NV                            = 0xFC,
	GL_CLAMP_FRAGMENT_COLOR_ARB                              = 0x891B,
	GL_CLAMP_READ_COLOR_ARB                                  = 0x891C,
	GL_CLAMP_TO_BORDER_ARB                                   = 0x812D,
	GL_CLAMP_TO_BORDER_SGIS                                  = 0x812D,
	GL_CLAMP_TO_EDGE_SGIS                                    = 0x812F,
	GL_CLAMP_VERTEX_COLOR_ARB                                = 0x891A,
	GL_CLIENT_ACTIVE_TEXTURE_ARB                             = 0x84E1,
	GL_CLIP_DISTANCE_NV                                      = 0x8C7A,
	GL_CLIP_FAR_HINT_PGI                                     = 0x1A221,
	GL_CLIP_NEAR_HINT_PGI                                    = 0x1A220,
	GL_CLIP_VOLUME_CLIPPING_HINT_EXT                         = 0x80F0,
	GL_CLOSE_PATH_NV                                         = 0x00,
	GL_CMYK_EXT                                              = 0x800C,
	GL_CMYKA_EXT                                             = 0x800D,
	GL_CND_ATI                                               = 0x896A,
	GL_CND0_ATI                                              = 0x896B,
	GL_COLOR_ALPHA_PAIRING_ATI                               = 0x8975,
	GL_COLOR_ARRAY_ADDRESS_NV                                = 0x8F23,
	GL_COLOR_ARRAY_BUFFER_BINDING_ARB                        = 0x8898,
	GL_COLOR_ARRAY_COUNT_EXT                                 = 0x8084,
	GL_COLOR_ARRAY_EXT                                       = 0x8076,
	GL_COLOR_ARRAY_LENGTH_NV                                 = 0x8F2D,
	GL_COLOR_ARRAY_LIST_IBM                                  = 103072,
	GL_COLOR_ARRAY_LIST_STRIDE_IBM                           = 103082,
	GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL                   = 0x83F7,
	GL_COLOR_ARRAY_POINTER_EXT                               = 0x8090,
	GL_COLOR_ARRAY_SIZE_EXT                                  = 0x8081,
	GL_COLOR_ARRAY_STRIDE_EXT                                = 0x8083,
	GL_COLOR_ARRAY_TYPE_EXT                                  = 0x8082,
	GL_COLOR_ATTACHMENT0_EXT                                 = 0x8CE0,
	GL_COLOR_ATTACHMENT1_EXT                                 = 0x8CE1,
	GL_COLOR_ATTACHMENT10_EXT                                = 0x8CEA,
	GL_COLOR_ATTACHMENT11_EXT                                = 0x8CEB,
	GL_COLOR_ATTACHMENT12_EXT                                = 0x8CEC,
	GL_COLOR_ATTACHMENT13_EXT                                = 0x8CED,
	GL_COLOR_ATTACHMENT14_EXT                                = 0x8CEE,
	GL_COLOR_ATTACHMENT15_EXT                                = 0x8CEF,
	GL_COLOR_ATTACHMENT2_EXT                                 = 0x8CE2,
	GL_COLOR_ATTACHMENT3_EXT                                 = 0x8CE3,
	GL_COLOR_ATTACHMENT4_EXT                                 = 0x8CE4,
	GL_COLOR_ATTACHMENT5_EXT                                 = 0x8CE5,
	GL_COLOR_ATTACHMENT6_EXT                                 = 0x8CE6,
	GL_COLOR_ATTACHMENT7_EXT                                 = 0x8CE7,
	GL_COLOR_ATTACHMENT8_EXT                                 = 0x8CE8,
	GL_COLOR_ATTACHMENT9_EXT                                 = 0x8CE9,
	GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI                       = 0x8835,
	GL_COLOR_FLOAT_APPLE                                     = 0x8A0F,
	GL_COLOR_INDEX1_EXT                                      = 0x80E2,
	GL_COLOR_INDEX12_EXT                                     = 0x80E6,
	GL_COLOR_INDEX16_EXT                                     = 0x80E7,
	GL_COLOR_INDEX2_EXT                                      = 0x80E3,
	GL_COLOR_INDEX4_EXT                                      = 0x80E4,
	GL_COLOR_INDEX8_EXT                                      = 0x80E5,
	GL_COLOR_MATRIX                                          = 0x80B1,
	GL_COLOR_MATRIX_SGI                                      = 0x80B1,
	GL_COLOR_MATRIX_STACK_DEPTH                              = 0x80B2,
	GL_COLOR_MATRIX_STACK_DEPTH_SGI                          = 0x80B2,
	GL_COLOR_SAMPLES_NV                                      = 0x8E20,
	GL_COLOR_SUM_ARB                                         = 0x8458,
	GL_COLOR_SUM_CLAMP_NV                                    = 0x854F,
	GL_COLOR_SUM_EXT                                         = 0x8458,
	GL_COLOR_TABLE                                           = 0x80D0,
	GL_COLOR_TABLE_ALPHA_SIZE                                = 0x80DD,
	GL_COLOR_TABLE_ALPHA_SIZE_SGI                            = 0x80DD,
	GL_COLOR_TABLE_BIAS                                      = 0x80D7,
	GL_COLOR_TABLE_BIAS_SGI                                  = 0x80D7,
	GL_COLOR_TABLE_BLUE_SIZE                                 = 0x80DC,
	GL_COLOR_TABLE_BLUE_SIZE_SGI                             = 0x80DC,
	GL_COLOR_TABLE_FORMAT                                    = 0x80D8,
	GL_COLOR_TABLE_FORMAT_SGI                                = 0x80D8,
	GL_COLOR_TABLE_GREEN_SIZE                                = 0x80DB,
	GL_COLOR_TABLE_GREEN_SIZE_SGI                            = 0x80DB,
	GL_COLOR_TABLE_INTENSITY_SIZE                            = 0x80DF,
	GL_COLOR_TABLE_INTENSITY_SIZE_SGI                        = 0x80DF,
	GL_COLOR_TABLE_LUMINANCE_SIZE                            = 0x80DE,
	GL_COLOR_TABLE_LUMINANCE_SIZE_SGI                        = 0x80DE,
	GL_COLOR_TABLE_RED_SIZE                                  = 0x80DA,
	GL_COLOR_TABLE_RED_SIZE_SGI                              = 0x80DA,
	GL_COLOR_TABLE_SCALE                                     = 0x80D6,
	GL_COLOR_TABLE_SCALE_SGI                                 = 0x80D6,
	GL_COLOR_TABLE_SGI                                       = 0x80D0,
	GL_COLOR_TABLE_WIDTH                                     = 0x80D9,
	GL_COLOR_TABLE_WIDTH_SGI                                 = 0x80D9,
	GL_COLOR3_BIT_PGI                                        = 0x00010000,
	GL_COLOR4_BIT_PGI                                        = 0x00020000,
	GL_COMBINE_ALPHA_ARB                                     = 0x8572,
	GL_COMBINE_ALPHA_EXT                                     = 0x8572,
	GL_COMBINE_ARB                                           = 0x8570,
	GL_COMBINE_EXT                                           = 0x8570,
	GL_COMBINE_RGB_ARB                                       = 0x8571,
	GL_COMBINE_RGB_EXT                                       = 0x8571,
	GL_COMBINE4_NV                                           = 0x8503,
	GL_COMBINER_AB_DOT_PRODUCT_NV                            = 0x8545,
	GL_COMBINER_AB_OUTPUT_NV                                 = 0x854A,
	GL_COMBINER_BIAS_NV                                      = 0x8549,
	GL_COMBINER_CD_DOT_PRODUCT_NV                            = 0x8546,
	GL_COMBINER_CD_OUTPUT_NV                                 = 0x854B,
	GL_COMBINER_COMPONENT_USAGE_NV                           = 0x8544,
	GL_COMBINER_INPUT_NV                                     = 0x8542,
	GL_COMBINER_MAPPING_NV                                   = 0x8543,
	GL_COMBINER_MUX_SUM_NV                                   = 0x8547,
	GL_COMBINER_SCALE_NV                                     = 0x8548,
	GL_COMBINER_SUM_OUTPUT_NV                                = 0x854C,
	GL_COMBINER0_NV                                          = 0x8550,
	GL_COMBINER1_NV                                          = 0x8551,
	GL_COMBINER2_NV                                          = 0x8552,
	GL_COMBINER3_NV                                          = 0x8553,
	GL_COMBINER4_NV                                          = 0x8554,
	GL_COMBINER5_NV                                          = 0x8555,
	GL_COMBINER6_NV                                          = 0x8556,
	GL_COMBINER7_NV                                          = 0x8557,
	GL_COMMAND_BARRIER_BIT_EXT                               = 0x00000040,
	GL_COMP_BIT_ATI                                          = 0x00000002,
	GL_COMPARE_R_TO_TEXTURE_ARB                              = 0x884E,
	GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT                      = 0x884E,
	GL_COMPRESSED_ALPHA_ARB                                  = 0x84E9,
	GL_COMPRESSED_INTENSITY_ARB                              = 0x84EC,
	GL_COMPRESSED_LUMINANCE_ALPHA_ARB                        = 0x84EB,
	GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT                  = 0x8C72,
	GL_COMPRESSED_LUMINANCE_ARB                              = 0x84EA,
	GL_COMPRESSED_LUMINANCE_LATC1_EXT                        = 0x8C70,
	GL_COMPRESSED_RED_GREEN_RGTC2_EXT                        = 0x8DBD,
	GL_COMPRESSED_RED_RGTC1_EXT                              = 0x8DBB,
	GL_COMPRESSED_RGB_ARB                                    = 0x84ED,
	GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB                  = 0x8E8E,
	GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB                = 0x8E8F,
	GL_COMPRESSED_RGB_FXT1_3DFX                              = 0x86B0,
	GL_COMPRESSED_RGB_S3TC_DXT1_EXT                          = 0x83F0,
	GL_COMPRESSED_RGBA_ARB                                   = 0x84EE,
	GL_COMPRESSED_RGBA_ASTC_10x10_KHR                        = 0x93BB,
	GL_COMPRESSED_RGBA_ASTC_10x5_KHR                         = 0x93B8,
	GL_COMPRESSED_RGBA_ASTC_10x6_KHR                         = 0x93B9,
	GL_COMPRESSED_RGBA_ASTC_10x8_KHR                         = 0x93BA,
	GL_COMPRESSED_RGBA_ASTC_12x10_KHR                        = 0x93BC,
	GL_COMPRESSED_RGBA_ASTC_12x12_KHR                        = 0x93BD,
	GL_COMPRESSED_RGBA_ASTC_4x4_KHR                          = 0x93B0,
	GL_COMPRESSED_RGBA_ASTC_5x4_KHR                          = 0x93B1,
	GL_COMPRESSED_RGBA_ASTC_5x5_KHR                          = 0x93B2,
	GL_COMPRESSED_RGBA_ASTC_6x5_KHR                          = 0x93B3,
	GL_COMPRESSED_RGBA_ASTC_6x6_KHR                          = 0x93B4,
	GL_COMPRESSED_RGBA_ASTC_8x5_KHR                          = 0x93B5,
	GL_COMPRESSED_RGBA_ASTC_8x6_KHR                          = 0x93B6,
	GL_COMPRESSED_RGBA_ASTC_8x8_KHR                          = 0x93B7,
	GL_COMPRESSED_RGBA_BPTC_UNORM_ARB                        = 0x8E8C,
	GL_COMPRESSED_RGBA_FXT1_3DFX                             = 0x86B1,
	GL_COMPRESSED_RGBA_S3TC_DXT1_EXT                         = 0x83F1,
	GL_COMPRESSED_RGBA_S3TC_DXT3_EXT                         = 0x83F2,
	GL_COMPRESSED_RGBA_S3TC_DXT5_EXT                         = 0x83F3,
	GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT           = 0x8C73,
	GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT                 = 0x8C71,
	GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT                 = 0x8DBE,
	GL_COMPRESSED_SIGNED_RED_RGTC1_EXT                       = 0x8DBC,
	GL_COMPRESSED_SLUMINANCE_ALPHA_EXT                       = 0x8C4B,
	GL_COMPRESSED_SLUMINANCE_EXT                             = 0x8C4A,
	GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB                  = 0x8E8D,
	GL_COMPRESSED_SRGB_ALPHA_EXT                             = 0x8C49,
	GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT                   = 0x8C4D,
	GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT                   = 0x8C4E,
	GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT                   = 0x8C4F,
	GL_COMPRESSED_SRGB_EXT                                   = 0x8C48,
	GL_COMPRESSED_SRGB_S3TC_DXT1_EXT                         = 0x8C4C,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR                = 0x93DB,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR                 = 0x93D8,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR                 = 0x93D9,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR                 = 0x93DA,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR                = 0x93DC,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR                = 0x93DD,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR                  = 0x93D0,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR                  = 0x93D1,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR                  = 0x93D2,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR                  = 0x93D3,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR                  = 0x93D4,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR                  = 0x93D5,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR                  = 0x93D6,
	GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR                  = 0x93D7,
	GL_COMPRESSED_TEXTURE_FORMATS_ARB                        = 0x86A3,
	GL_COMPUTE_SHADER_BIT                                    = 0x00000020,
	GL_CON_0_ATI                                             = 0x8941,
	GL_CON_1_ATI                                             = 0x8942,
	GL_CON_10_ATI                                            = 0x894B,
	GL_CON_11_ATI                                            = 0x894C,
	GL_CON_12_ATI                                            = 0x894D,
	GL_CON_13_ATI                                            = 0x894E,
	GL_CON_14_ATI                                            = 0x894F,
	GL_CON_15_ATI                                            = 0x8950,
	GL_CON_16_ATI                                            = 0x8951,
	GL_CON_17_ATI                                            = 0x8952,
	GL_CON_18_ATI                                            = 0x8953,
	GL_CON_19_ATI                                            = 0x8954,
	GL_CON_2_ATI                                             = 0x8943,
	GL_CON_20_ATI                                            = 0x8955,
	GL_CON_21_ATI                                            = 0x8956,
	GL_CON_22_ATI                                            = 0x8957,
	GL_CON_23_ATI                                            = 0x8958,
	GL_CON_24_ATI                                            = 0x8959,
	GL_CON_25_ATI                                            = 0x895A,
	GL_CON_26_ATI                                            = 0x895B,
	GL_CON_27_ATI                                            = 0x895C,
	GL_CON_28_ATI                                            = 0x895D,
	GL_CON_29_ATI                                            = 0x895E,
	GL_CON_3_ATI                                             = 0x8944,
	GL_CON_30_ATI                                            = 0x895F,
	GL_CON_31_ATI                                            = 0x8960,
	GL_CON_4_ATI                                             = 0x8945,
	GL_CON_5_ATI                                             = 0x8946,
	GL_CON_6_ATI                                             = 0x8947,
	GL_CON_7_ATI                                             = 0x8948,
	GL_CON_8_ATI                                             = 0x8949,
	GL_CON_9_ATI                                             = 0x894A,
	GL_CONSERVE_MEMORY_HINT_PGI                              = 0x1A1FD,
	GL_CONST_EYE_NV                                          = 0x86E5,
	GL_CONSTANT_ALPHA                                        = 0x8003,
	GL_CONSTANT_ALPHA_EXT                                    = 0x8003,
	GL_CONSTANT_ARB                                          = 0x8576,
	GL_CONSTANT_BORDER                                       = 0x8151,
	GL_CONSTANT_BORDER_HP                                    = 0x8151,
	GL_CONSTANT_COLOR                                        = 0x8001,
	GL_CONSTANT_COLOR_EXT                                    = 0x8001,
	GL_CONSTANT_COLOR0_NV                                    = 0x852A,
	GL_CONSTANT_COLOR1_NV                                    = 0x852B,
	GL_CONSTANT_EXT                                          = 0x8576,
	GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB                    = 0x00000004,
	GL_CONTINUOUS_AMD                                        = 0x9007,
	GL_CONVEX_HULL_NV                                        = 0x908B,
	GL_CONVOLUTION_1D                                        = 0x8010,
	GL_CONVOLUTION_1D_EXT                                    = 0x8010,
	GL_CONVOLUTION_2D                                        = 0x8011,
	GL_CONVOLUTION_2D_EXT                                    = 0x8011,
	GL_CONVOLUTION_BORDER_COLOR                              = 0x8154,
	GL_CONVOLUTION_BORDER_COLOR_HP                           = 0x8154,
	GL_CONVOLUTION_BORDER_MODE                               = 0x8013,
	GL_CONVOLUTION_BORDER_MODE_EXT                           = 0x8013,
	GL_CONVOLUTION_FILTER_BIAS                               = 0x8015,
	GL_CONVOLUTION_FILTER_BIAS_EXT                           = 0x8015,
	GL_CONVOLUTION_FILTER_SCALE                              = 0x8014,
	GL_CONVOLUTION_FILTER_SCALE_EXT                          = 0x8014,
	GL_CONVOLUTION_FORMAT                                    = 0x8017,
	GL_CONVOLUTION_FORMAT_EXT                                = 0x8017,
	GL_CONVOLUTION_HEIGHT                                    = 0x8019,
	GL_CONVOLUTION_HEIGHT_EXT                                = 0x8019,
	GL_CONVOLUTION_HINT_SGIX                                 = 0x8316,
	GL_CONVOLUTION_WIDTH                                     = 0x8018,
	GL_CONVOLUTION_WIDTH_EXT                                 = 0x8018,
	GL_COORD_REPLACE_ARB                                     = 0x8862,
	GL_COORD_REPLACE_NV                                      = 0x8862,
	GL_COPY_READ_BUFFER_BINDING                              = 0x8F36,
	GL_COPY_WRITE_BUFFER_BINDING                             = 0x8F37,
	GL_COUNT_DOWN_NV                                         = 0x9089,
	GL_COUNT_UP_NV                                           = 0x9088,
	GL_COUNTER_RANGE_AMD                                     = 0x8BC1,
	GL_COUNTER_TYPE_AMD                                      = 0x8BC0,
	GL_COVERAGE_SAMPLES_NV                                   = 0x80A9,
	GL_CUBIC_CURVE_TO_NV                                     = 0x0C,
	GL_CUBIC_EXT                                             = 0x8334,
	GL_CUBIC_HP                                              = 0x815F,
	GL_CULL_FRAGMENT_NV                                      = 0x86E7,
	GL_CULL_MODES_NV                                         = 0x86E0,
	GL_CULL_VERTEX_EXT                                       = 0x81AA,
	GL_CULL_VERTEX_EYE_POSITION_EXT                          = 0x81AB,
	GL_CULL_VERTEX_IBM                                       = 103050,
	GL_CULL_VERTEX_OBJECT_POSITION_EXT                       = 0x81AC,
	GL_CURRENT_ATTRIB_NV                                     = 0x8626,
	GL_CURRENT_BINORMAL_EXT                                  = 0x843C,
	GL_CURRENT_FOG_COORDINATE_EXT                            = 0x8453,
	GL_CURRENT_MATRIX_ARB                                    = 0x8641,
	GL_CURRENT_MATRIX_INDEX_ARB                              = 0x8845,
	GL_CURRENT_MATRIX_NV                                     = 0x8641,
	GL_CURRENT_MATRIX_STACK_DEPTH_ARB                        = 0x8640,
	GL_CURRENT_MATRIX_STACK_DEPTH_NV                         = 0x8640,
	GL_CURRENT_OCCLUSION_QUERY_ID_NV                         = 0x8865,
	GL_CURRENT_PALETTE_MATRIX_ARB                            = 0x8843,
	GL_CURRENT_QUERY_ARB                                     = 0x8865,
	GL_CURRENT_RASTER_NORMAL_SGIX                            = 0x8406,
	GL_CURRENT_SECONDARY_COLOR_EXT                           = 0x8459,
	GL_CURRENT_TANGENT_EXT                                   = 0x843B,
	GL_CURRENT_TIME_NV                                       = 0x8E28,
	GL_CURRENT_VERTEX_ATTRIB_ARB                             = 0x8626,
	GL_CURRENT_VERTEX_EXT                                    = 0x87E2,
	GL_CURRENT_VERTEX_WEIGHT_EXT                             = 0x850B,
	GL_CURRENT_WEIGHT_ARB                                    = 0x86A8,
	GL_DATA_BUFFER_AMD                                       = 0x9151,
	GL_DEBUG_CALLBACK_FUNCTION_ARB                           = 0x8244,
	GL_DEBUG_CALLBACK_USER_PARAM_ARB                         = 0x8245,
	GL_DEBUG_CATEGORY_API_ERROR_AMD                          = 0x9149,
	GL_DEBUG_CATEGORY_APPLICATION_AMD                        = 0x914F,
	GL_DEBUG_CATEGORY_DEPRECATION_AMD                        = 0x914B,
	GL_DEBUG_CATEGORY_OTHER_AMD                              = 0x9150,
	GL_DEBUG_CATEGORY_PERFORMANCE_AMD                        = 0x914D,
	GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD                    = 0x914E,
	GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD                 = 0x914C,
	GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD                      = 0x914A,
	GL_DEBUG_LOGGED_MESSAGES_AMD                             = 0x9145,
	GL_DEBUG_LOGGED_MESSAGES_ARB                             = 0x9145,
	GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB                  = 0x8243,
	GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB                          = 0x8242,
	GL_DEBUG_SEVERITY_HIGH_AMD                               = 0x9146,
	GL_DEBUG_SEVERITY_HIGH_ARB                               = 0x9146,
	GL_DEBUG_SEVERITY_LOW_AMD                                = 0x9148,
	GL_DEBUG_SEVERITY_LOW_ARB                                = 0x9148,
	GL_DEBUG_SEVERITY_MEDIUM_AMD                             = 0x9147,
	GL_DEBUG_SEVERITY_MEDIUM_ARB                             = 0x9147,
	GL_DEBUG_SOURCE_API_ARB                                  = 0x8246,
	GL_DEBUG_SOURCE_APPLICATION_ARB                          = 0x824A,
	GL_DEBUG_SOURCE_OTHER_ARB                                = 0x824B,
	GL_DEBUG_SOURCE_SHADER_COMPILER_ARB                      = 0x8248,
	GL_DEBUG_SOURCE_THIRD_PARTY_ARB                          = 0x8249,
	GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB                        = 0x8247,
	GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB                    = 0x824D,
	GL_DEBUG_TYPE_ERROR_ARB                                  = 0x824C,
	GL_DEBUG_TYPE_OTHER_ARB                                  = 0x8251,
	GL_DEBUG_TYPE_PERFORMANCE_ARB                            = 0x8250,
	GL_DEBUG_TYPE_PORTABILITY_ARB                            = 0x824F,
	GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB                     = 0x824E,
	GL_DECODE_EXT                                            = 0x8A49,
	GL_DECR_WRAP_EXT                                         = 0x8508,
	GL_DEFORMATIONS_MASK_SGIX                                = 0x8196,
	GL_DEPENDENT_AR_TEXTURE_2D_NV                            = 0x86E9,
	GL_DEPENDENT_GB_TEXTURE_2D_NV                            = 0x86EA,
	GL_DEPENDENT_HILO_TEXTURE_2D_NV                          = 0x8858,
	GL_DEPENDENT_RGB_TEXTURE_3D_NV                           = 0x8859,
	GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV                     = 0x885A,
	GL_DEPTH_ATTACHMENT_EXT                                  = 0x8D00,
	GL_DEPTH_BOUNDS_EXT                                      = 0x8891,
	GL_DEPTH_BOUNDS_TEST_EXT                                 = 0x8890,
	GL_DEPTH_BUFFER_FLOAT_MODE_NV                            = 0x8DAF,
	GL_DEPTH_CLAMP_FAR_AMD                                   = 0x901F,
	GL_DEPTH_CLAMP_NEAR_AMD                                  = 0x901E,
	GL_DEPTH_CLAMP_NV                                        = 0x864F,
	GL_DEPTH_COMPONENT16_ARB                                 = 0x81A5,
	GL_DEPTH_COMPONENT16_SGIX                                = 0x81A5,
	GL_DEPTH_COMPONENT24_ARB                                 = 0x81A6,
	GL_DEPTH_COMPONENT24_SGIX                                = 0x81A6,
	GL_DEPTH_COMPONENT32_ARB                                 = 0x81A7,
	GL_DEPTH_COMPONENT32_SGIX                                = 0x81A7,
	GL_DEPTH_COMPONENT32F_NV                                 = 0x8DAB,
	GL_DEPTH_PASS_INSTRUMENT_COUNTERS_SGIX                   = 0x8311,
	GL_DEPTH_PASS_INSTRUMENT_MAX_SGIX                        = 0x8312,
	GL_DEPTH_PASS_INSTRUMENT_SGIX                            = 0x8310,
	GL_DEPTH_STENCIL_EXT                                     = 0x84F9,
	GL_DEPTH_STENCIL_NV                                      = 0x84F9,
	GL_DEPTH_STENCIL_TO_BGRA_NV                              = 0x886F,
	GL_DEPTH_STENCIL_TO_RGBA_NV                              = 0x886E,
	GL_DEPTH_TEXTURE_MODE_ARB                                = 0x884B,
	GL_DEPTH24_STENCIL8_EXT                                  = 0x88F0,
	GL_DEPTH32F_STENCIL8_NV                                  = 0x8DAC,
	GL_DETAIL_TEXTURE_2D_BINDING_SGIS                        = 0x8096,
	GL_DETAIL_TEXTURE_2D_SGIS                                = 0x8095,
	GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS                       = 0x809C,
	GL_DETAIL_TEXTURE_LEVEL_SGIS                             = 0x809A,
	GL_DETAIL_TEXTURE_MODE_SGIS                              = 0x809B,
	GL_DISCARD_ATI                                           = 0x8763,
	GL_DISCARD_NV                                            = 0x8530,
	GL_DISCRETE_AMD                                          = 0x9006,
	GL_DISTANCE_ATTENUATION_EXT                              = 0x8129,
	GL_DISTANCE_ATTENUATION_SGIS                             = 0x8129,
	GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV                   = 0x885D,
	GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV             = 0x86F3,
	GL_DOT_PRODUCT_DEPTH_REPLACE_NV                          = 0x86ED,
	GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV                       = 0x86F1,
	GL_DOT_PRODUCT_NV                                        = 0x86EC,
	GL_DOT_PRODUCT_PASS_THROUGH_NV                           = 0x885B,
	GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV                       = 0x86F2,
	GL_DOT_PRODUCT_TEXTURE_1D_NV                             = 0x885C,
	GL_DOT_PRODUCT_TEXTURE_2D_NV                             = 0x86EE,
	GL_DOT_PRODUCT_TEXTURE_3D_NV                             = 0x86EF,
	GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV                       = 0x86F0,
	GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV                      = 0x864E,
	GL_DOT2_ADD_ATI                                          = 0x896C,
	GL_DOT3_ATI                                              = 0x8966,
	GL_DOT3_RGB_ARB                                          = 0x86AE,
	GL_DOT3_RGB_EXT                                          = 0x8740,
	GL_DOT3_RGBA_ARB                                         = 0x86AF,
	GL_DOT3_RGBA_EXT                                         = 0x8741,
	GL_DOT4_ATI                                              = 0x8967,
	GL_DOUBLE_MAT2_EXT                                       = 0x8F46,
	GL_DOUBLE_MAT2x3_EXT                                     = 0x8F49,
	GL_DOUBLE_MAT2x4_EXT                                     = 0x8F4A,
	GL_DOUBLE_MAT3_EXT                                       = 0x8F47,
	GL_DOUBLE_MAT3x2_EXT                                     = 0x8F4B,
	GL_DOUBLE_MAT3x4_EXT                                     = 0x8F4C,
	GL_DOUBLE_MAT4_EXT                                       = 0x8F48,
	GL_DOUBLE_MAT4x2_EXT                                     = 0x8F4D,
	GL_DOUBLE_MAT4x3_EXT                                     = 0x8F4E,
	GL_DOUBLE_VEC2_EXT                                       = 0x8FFC,
	GL_DOUBLE_VEC3_EXT                                       = 0x8FFD,
	GL_DOUBLE_VEC4_EXT                                       = 0x8FFE,
	GL_DRAW_BUFFER0_ARB                                      = 0x8825,
	GL_DRAW_BUFFER0_ATI                                      = 0x8825,
	GL_DRAW_BUFFER1_ARB                                      = 0x8826,
	GL_DRAW_BUFFER1_ATI                                      = 0x8826,
	GL_DRAW_BUFFER10_ARB                                     = 0x882F,
	GL_DRAW_BUFFER10_ATI                                     = 0x882F,
	GL_DRAW_BUFFER11_ARB                                     = 0x8830,
	GL_DRAW_BUFFER11_ATI                                     = 0x8830,
	GL_DRAW_BUFFER12_ARB                                     = 0x8831,
	GL_DRAW_BUFFER12_ATI                                     = 0x8831,
	GL_DRAW_BUFFER13_ARB                                     = 0x8832,
	GL_DRAW_BUFFER13_ATI                                     = 0x8832,
	GL_DRAW_BUFFER14_ARB                                     = 0x8833,
	GL_DRAW_BUFFER14_ATI                                     = 0x8833,
	GL_DRAW_BUFFER15_ARB                                     = 0x8834,
	GL_DRAW_BUFFER15_ATI                                     = 0x8834,
	GL_DRAW_BUFFER2_ARB                                      = 0x8827,
	GL_DRAW_BUFFER2_ATI                                      = 0x8827,
	GL_DRAW_BUFFER3_ARB                                      = 0x8828,
	GL_DRAW_BUFFER3_ATI                                      = 0x8828,
	GL_DRAW_BUFFER4_ARB                                      = 0x8829,
	GL_DRAW_BUFFER4_ATI                                      = 0x8829,
	GL_DRAW_BUFFER5_ARB                                      = 0x882A,
	GL_DRAW_BUFFER5_ATI                                      = 0x882A,
	GL_DRAW_BUFFER6_ARB                                      = 0x882B,
	GL_DRAW_BUFFER6_ATI                                      = 0x882B,
	GL_DRAW_BUFFER7_ARB                                      = 0x882C,
	GL_DRAW_BUFFER7_ATI                                      = 0x882C,
	GL_DRAW_BUFFER8_ARB                                      = 0x882D,
	GL_DRAW_BUFFER8_ATI                                      = 0x882D,
	GL_DRAW_BUFFER9_ARB                                      = 0x882E,
	GL_DRAW_BUFFER9_ATI                                      = 0x882E,
	GL_DRAW_FRAMEBUFFER_BINDING_EXT                          = 0x8CA6,
	GL_DRAW_FRAMEBUFFER_EXT                                  = 0x8CA9,
	GL_DRAW_INDIRECT_ADDRESS_NV                              = 0x8F41,
	GL_DRAW_INDIRECT_LENGTH_NV                               = 0x8F42,
	GL_DRAW_INDIRECT_UNIFIED_NV                              = 0x8F40,
	GL_DRAW_PIXELS_APPLE                                     = 0x8A0A,
	GL_DS_BIAS_NV                                            = 0x8716,
	GL_DS_SCALE_NV                                           = 0x8710,
	GL_DSDT_MAG_INTENSITY_NV                                 = 0x86DC,
	GL_DSDT_MAG_NV                                           = 0x86F6,
	GL_DSDT_MAG_VIB_NV                                       = 0x86F7,
	GL_DSDT_NV                                               = 0x86F5,
	GL_DSDT8_MAG8_INTENSITY8_NV                              = 0x870B,
	GL_DSDT8_MAG8_NV                                         = 0x870A,
	GL_DSDT8_NV                                              = 0x8709,
	GL_DT_BIAS_NV                                            = 0x8717,
	GL_DT_SCALE_NV                                           = 0x8711,
	GL_DU8DV8_ATI                                            = 0x877A,
	GL_DUAL_ALPHA12_SGIS                                     = 0x8112,
	GL_DUAL_ALPHA16_SGIS                                     = 0x8113,
	GL_DUAL_ALPHA4_SGIS                                      = 0x8110,
	GL_DUAL_ALPHA8_SGIS                                      = 0x8111,
	GL_DUAL_INTENSITY12_SGIS                                 = 0x811A,
	GL_DUAL_INTENSITY16_SGIS                                 = 0x811B,
	GL_DUAL_INTENSITY4_SGIS                                  = 0x8118,
	GL_DUAL_INTENSITY8_SGIS                                  = 0x8119,
	GL_DUAL_LUMINANCE_ALPHA4_SGIS                            = 0x811C,
	GL_DUAL_LUMINANCE_ALPHA8_SGIS                            = 0x811D,
	GL_DUAL_LUMINANCE12_SGIS                                 = 0x8116,
	GL_DUAL_LUMINANCE16_SGIS                                 = 0x8117,
	GL_DUAL_LUMINANCE4_SGIS                                  = 0x8114,
	GL_DUAL_LUMINANCE8_SGIS                                  = 0x8115,
	GL_DUAL_TEXTURE_SELECT_SGIS                              = 0x8124,
	GL_DUDV_ATI                                              = 0x8779,
	GL_DUP_FIRST_CUBIC_CURVE_TO_NV                           = 0xF2,
	GL_DUP_LAST_CUBIC_CURVE_TO_NV                            = 0xF4,
	GL_DYNAMIC_ATI                                           = 0x8761,
	GL_DYNAMIC_COPY_ARB                                      = 0x88EA,
	GL_DYNAMIC_DRAW_ARB                                      = 0x88E8,
	GL_DYNAMIC_READ_ARB                                      = 0x88E9,
	GL_E_TIMES_F_NV                                          = 0x8531,
	GL_EDGE_FLAG_ARRAY_ADDRESS_NV                            = 0x8F26,
	GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB                    = 0x889B,
	GL_EDGE_FLAG_ARRAY_COUNT_EXT                             = 0x808D,
	GL_EDGE_FLAG_ARRAY_EXT                                   = 0x8079,
	GL_EDGE_FLAG_ARRAY_LENGTH_NV                             = 0x8F30,
	GL_EDGE_FLAG_ARRAY_LIST_IBM                              = 103075,
	GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM                       = 103085,
	GL_EDGE_FLAG_ARRAY_POINTER_EXT                           = 0x8093,
	GL_EDGE_FLAG_ARRAY_STRIDE_EXT                            = 0x808C,
	GL_EDGEFLAG_BIT_PGI                                      = 0x00040000,
	GL_EIGHTH_BIT_ATI                                        = 0x00000020,
	GL_ELEMENT_ARRAY_ADDRESS_NV                              = 0x8F29,
	GL_ELEMENT_ARRAY_APPLE                                   = 0x8A0C,
	GL_ELEMENT_ARRAY_ATI                                     = 0x8768,
	GL_ELEMENT_ARRAY_BARRIER_BIT_EXT                         = 0x00000002,
	GL_ELEMENT_ARRAY_BUFFER_ARB                              = 0x8893,
	GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB                      = 0x8895,
	GL_ELEMENT_ARRAY_LENGTH_NV                               = 0x8F33,
	GL_ELEMENT_ARRAY_POINTER_APPLE                           = 0x8A0E,
	GL_ELEMENT_ARRAY_POINTER_ATI                             = 0x876A,
	GL_ELEMENT_ARRAY_TYPE_APPLE                              = 0x8A0D,
	GL_ELEMENT_ARRAY_TYPE_ATI                                = 0x8769,
	GL_ELEMENT_ARRAY_UNIFIED_NV                              = 0x8F1F,
	GL_EMBOSS_CONSTANT_NV                                    = 0x855E,
	GL_EMBOSS_LIGHT_NV                                       = 0x855D,
	GL_EMBOSS_MAP_NV                                         = 0x855F,
	GL_EVAL_2D_NV                                            = 0x86C0,
	GL_EVAL_FRACTIONAL_TESSELLATION_NV                       = 0x86C5,
	GL_EVAL_TRIANGULAR_2D_NV                                 = 0x86C1,
	GL_EVAL_VERTEX_ATTRIB0_NV                                = 0x86C6,
	GL_EVAL_VERTEX_ATTRIB1_NV                                = 0x86C7,
	GL_EVAL_VERTEX_ATTRIB10_NV                               = 0x86D0,
	GL_EVAL_VERTEX_ATTRIB11_NV                               = 0x86D1,
	GL_EVAL_VERTEX_ATTRIB12_NV                               = 0x86D2,
	GL_EVAL_VERTEX_ATTRIB13_NV                               = 0x86D3,
	GL_EVAL_VERTEX_ATTRIB14_NV                               = 0x86D4,
	GL_EVAL_VERTEX_ATTRIB15_NV                               = 0x86D5,
	GL_EVAL_VERTEX_ATTRIB2_NV                                = 0x86C8,
	GL_EVAL_VERTEX_ATTRIB3_NV                                = 0x86C9,
	GL_EVAL_VERTEX_ATTRIB4_NV                                = 0x86CA,
	GL_EVAL_VERTEX_ATTRIB5_NV                                = 0x86CB,
	GL_EVAL_VERTEX_ATTRIB6_NV                                = 0x86CC,
	GL_EVAL_VERTEX_ATTRIB7_NV                                = 0x86CD,
	GL_EVAL_VERTEX_ATTRIB8_NV                                = 0x86CE,
	GL_EVAL_VERTEX_ATTRIB9_NV                                = 0x86CF,
	GL_EXPAND_NEGATE_NV                                      = 0x8539,
	GL_EXPAND_NORMAL_NV                                      = 0x8538,
	GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD                    = 0x9160,
	GL_EYE_DISTANCE_TO_LINE_SGIS                             = 0x81F2,
	GL_EYE_DISTANCE_TO_POINT_SGIS                            = 0x81F0,
	GL_EYE_LINE_SGIS                                         = 0x81F6,
	GL_EYE_PLANE_ABSOLUTE_NV                                 = 0x855C,
	GL_EYE_POINT_SGIS                                        = 0x81F4,
	GL_EYE_RADIAL_NV                                         = 0x855B,
	GL_FACTOR_MAX_AMD                                        = 0x901D,
	GL_FACTOR_MIN_AMD                                        = 0x901C,
	GL_FAILURE_NV                                            = 0x9030,
	GL_FENCE_APPLE                                           = 0x8A0B,
	GL_FENCE_CONDITION_NV                                    = 0x84F4,
	GL_FENCE_STATUS_NV                                       = 0x84F3,
	GL_FIELD_LOWER_NV                                        = 0x9023,
	GL_FIELD_UPPER_NV                                        = 0x9022,
	GL_FIELDS_NV                                             = 0x8E27,
	GL_FILE_NAME_NV                                          = 0x9074,
	GL_FILTER4_SGIS                                          = 0x8146,
	GL_FIRST_TO_REST_NV                                      = 0x90AF,
	GL_FIRST_VERTEX_CONVENTION_EXT                           = 0x8E4D,
	GL_FIXED_ONLY_ARB                                        = 0x891D,
	GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV                     = 0x8DAD,
	GL_FLOAT_CLEAR_COLOR_VALUE_NV                            = 0x888D,
	GL_FLOAT_MAT2_ARB                                        = 0x8B5A,
	GL_FLOAT_MAT3_ARB                                        = 0x8B5B,
	GL_FLOAT_MAT4_ARB                                        = 0x8B5C,
	GL_FLOAT_R_NV                                            = 0x8880,
	GL_FLOAT_R16_NV                                          = 0x8884,
	GL_FLOAT_R32_NV                                          = 0x8885,
	GL_FLOAT_RG_NV                                           = 0x8881,
	GL_FLOAT_RG16_NV                                         = 0x8886,
	GL_FLOAT_RG32_NV                                         = 0x8887,
	GL_FLOAT_RGB_NV                                          = 0x8882,
	GL_FLOAT_RGB16_NV                                        = 0x8888,
	GL_FLOAT_RGB32_NV                                        = 0x8889,
	GL_FLOAT_RGBA_MODE_NV                                    = 0x888E,
	GL_FLOAT_RGBA_NV                                         = 0x8883,
	GL_FLOAT_RGBA16_NV                                       = 0x888A,
	GL_FLOAT_RGBA32_NV                                       = 0x888B,
	GL_FLOAT_VEC2_ARB                                        = 0x8B50,
	GL_FLOAT_VEC3_ARB                                        = 0x8B51,
	GL_FLOAT_VEC4_ARB                                        = 0x8B52,
	GL_FLOAT16_NV                                            = 0x8FF8,
	GL_FLOAT16_VEC2_NV                                       = 0x8FF9,
	GL_FLOAT16_VEC3_NV                                       = 0x8FFA,
	GL_FLOAT16_VEC4_NV                                       = 0x8FFB,
	GL_FOG_COORD_ARRAY_ADDRESS_NV                            = 0x8F28,
	GL_FOG_COORD_ARRAY_LENGTH_NV                             = 0x8F32,
	GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB               = 0x889D,
	GL_FOG_COORDINATE_ARRAY_EXT                              = 0x8457,
	GL_FOG_COORDINATE_ARRAY_LIST_IBM                         = 103076,
	GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM                  = 103086,
	GL_FOG_COORDINATE_ARRAY_POINTER_EXT                      = 0x8456,
	GL_FOG_COORDINATE_ARRAY_STRIDE_EXT                       = 0x8455,
	GL_FOG_COORDINATE_ARRAY_TYPE_EXT                         = 0x8454,
	GL_FOG_COORDINATE_EXT                                    = 0x8451,
	GL_FOG_COORDINATE_SOURCE_EXT                             = 0x8450,
	GL_FOG_DISTANCE_MODE_NV                                  = 0x855A,
	GL_FOG_FUNC_POINTS_SGIS                                  = 0x812B,
	GL_FOG_FUNC_SGIS                                         = 0x812A,
	GL_FOG_OFFSET_SGIX                                       = 0x8198,
	GL_FOG_OFFSET_VALUE_SGIX                                 = 0x8199,
	GL_FOG_SCALE_SGIX                                        = 0x81FC,
	GL_FOG_SCALE_VALUE_SGIX                                  = 0x81FD,
	GL_FOG_SPECULAR_TEXTURE_WIN                              = 0x80EC,
	GL_FONT_ASCENDER_NV                                      = 0x00200000,
	GL_FONT_DESCENDER_NV                                     = 0x00400000,
	GL_FONT_HAS_KERNING_NV                                   = 0x10000000,
	GL_FONT_HEIGHT_NV                                        = 0x00800000,
	GL_FONT_MAX_ADVANCE_HEIGHT_NV                            = 0x02000000,
	GL_FONT_MAX_ADVANCE_WIDTH_NV                             = 0x01000000,
	GL_FONT_UNDERLINE_POSITION_NV                            = 0x04000000,
	GL_FONT_UNDERLINE_THICKNESS_NV                           = 0x08000000,
	GL_FONT_UNITS_PER_EM_NV                                  = 0x00100000,
	GL_FONT_X_MAX_BOUNDS_NV                                  = 0x00040000,
	GL_FONT_X_MIN_BOUNDS_NV                                  = 0x00010000,
	GL_FONT_Y_MAX_BOUNDS_NV                                  = 0x00080000,
	GL_FONT_Y_MIN_BOUNDS_NV                                  = 0x00020000,
	GL_FORCE_BLUE_TO_ONE_NV                                  = 0x8860,
	GL_FORMAT_SUBSAMPLE_24_24_OML                            = 0x8982,
	GL_FORMAT_SUBSAMPLE_244_244_OML                          = 0x8983,
	GL_FRAGMENT_COLOR_EXT                                    = 0x834C,
	GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX                     = 0x8402,
	GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX                = 0x8403,
	GL_FRAGMENT_COLOR_MATERIAL_SGIX                          = 0x8401,
	GL_FRAGMENT_DEPTH_EXT                                    = 0x8452,
	GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX                     = 0x840A,
	GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX                = 0x8408,
	GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX        = 0x840B,
	GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX                    = 0x8409,
	GL_FRAGMENT_LIGHT0_SGIX                                  = 0x840C,
	GL_FRAGMENT_LIGHT1_SGIX                                  = 0x840D,
	GL_FRAGMENT_LIGHT2_SGIX                                  = 0x840E,
	GL_FRAGMENT_LIGHT3_SGIX                                  = 0x840F,
	GL_FRAGMENT_LIGHT4_SGIX                                  = 0x8410,
	GL_FRAGMENT_LIGHT5_SGIX                                  = 0x8411,
	GL_FRAGMENT_LIGHT6_SGIX                                  = 0x8412,
	GL_FRAGMENT_LIGHT7_SGIX                                  = 0x8413,
	GL_FRAGMENT_LIGHTING_SGIX                                = 0x8400,
	GL_FRAGMENT_MATERIAL_EXT                                 = 0x8349,
	GL_FRAGMENT_NORMAL_EXT                                   = 0x834A,
	GL_FRAGMENT_PROGRAM_ARB                                  = 0x8804,
	GL_FRAGMENT_PROGRAM_BINDING_NV                           = 0x8873,
	GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV         = 0x8E5D,
	GL_FRAGMENT_PROGRAM_NV                                   = 0x8870,
	GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV                  = 0x8DA4,
	GL_FRAGMENT_SHADER_ARB                                   = 0x8B30,
	GL_FRAGMENT_SHADER_ATI                                   = 0x8920,
	GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB                   = 0x8B8B,
	GL_FRAME_NV                                              = 0x8E26,
	GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB                    = 0x8DA7,
	GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT                    = 0x8DA7,
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT                = 0x8CD1,
	GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT                = 0x8CD0,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT         = 0x8CD4,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT      = 0x8CD3,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT              = 0x8CD4,
	GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT              = 0x8CD2,
	GL_FRAMEBUFFER_BARRIER_BIT_EXT                           = 0x00000400,
	GL_FRAMEBUFFER_BINDING_EXT                               = 0x8CA6,
	GL_FRAMEBUFFER_COMPLETE_EXT                              = 0x8CD5,
	GL_FRAMEBUFFER_EXT                                       = 0x8D40,
	GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT                 = 0x8CD6,
	GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT                 = 0x8CD9,
	GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT                = 0x8CDB,
	GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT                    = 0x8CDA,
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB                = 0x8DA9,
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT                = 0x8DA9,
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB              = 0x8DA8,
	GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT              = 0x8DA8,
	GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT         = 0x8CD7,
	GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT                = 0x8D56,
	GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT                = 0x8CDC,
	GL_FRAMEBUFFER_SRGB_CAPABLE_EXT                          = 0x8DBA,
	GL_FRAMEBUFFER_SRGB_EXT                                  = 0x8DB9,
	GL_FRAMEBUFFER_UNSUPPORTED_EXT                           = 0x8CDD,
	GL_FRAMEZOOM_FACTOR_SGIX                                 = 0x818C,
	GL_FRAMEZOOM_SGIX                                        = 0x818B,
	GL_FULL_RANGE_EXT                                        = 0x87E1,
	GL_FULL_STIPPLE_HINT_PGI                                 = 0x1A219,
	GL_FUNC_ADD                                              = 0x8006,
	GL_FUNC_ADD_EXT                                          = 0x8006,
	GL_FUNC_REVERSE_SUBTRACT                                 = 0x800B,
	GL_FUNC_REVERSE_SUBTRACT_EXT                             = 0x800B,
	GL_FUNC_SUBTRACT                                         = 0x800A,
	GL_FUNC_SUBTRACT_EXT                                     = 0x800A,
	GL_GENERATE_MIPMAP_HINT_SGIS                             = 0x8192,
	GL_GENERATE_MIPMAP_SGIS                                  = 0x8191,
	GL_GENERIC_ATTRIB_NV                                     = 0x8C7D,
	GL_GEOMETRY_DEFORMATION_BIT_SGIX                         = 0x00000002,
	GL_GEOMETRY_DEFORMATION_SGIX                             = 0x8194,
	GL_GEOMETRY_INPUT_TYPE_ARB                               = 0x8DDB,
	GL_GEOMETRY_INPUT_TYPE_EXT                               = 0x8DDB,
	GL_GEOMETRY_OUTPUT_TYPE_ARB                              = 0x8DDC,
	GL_GEOMETRY_OUTPUT_TYPE_EXT                              = 0x8DDC,
	GL_GEOMETRY_PROGRAM_NV                                   = 0x8C26,
	GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV                  = 0x8DA3,
	GL_GEOMETRY_SHADER_ARB                                   = 0x8DD9,
	GL_GEOMETRY_SHADER_EXT                                   = 0x8DD9,
	GL_GEOMETRY_VERTICES_OUT_ARB                             = 0x8DDA,
	GL_GEOMETRY_VERTICES_OUT_EXT                             = 0x8DDA,
	GL_GLOBAL_ALPHA_FACTOR_SUN                               = 0x81DA,
	GL_GLOBAL_ALPHA_SUN                                      = 0x81D9,
	GL_GLYPH_HAS_KERNING_NV                                  = 0x100,
	GL_GLYPH_HEIGHT_BIT_NV                                   = 0x02,
	GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV               = 0x10,
	GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV                     = 0x04,
	GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV                     = 0x08,
	GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV                 = 0x80,
	GL_GLYPH_VERTICAL_BEARING_X_BIT_NV                       = 0x20,
	GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV                       = 0x40,
	GL_GLYPH_WIDTH_BIT_NV                                    = 0x01,
	GL_GPU_ADDRESS_NV                                        = 0x8F34,
	GL_GREEN_BIT_ATI                                         = 0x00000002,
	GL_GREEN_INTEGER_EXT                                     = 0x8D95,
	GL_GREEN_MAX_CLAMP_INGR                                  = 0x8565,
	GL_GREEN_MIN_CLAMP_INGR                                  = 0x8561,
	GL_GUILTY_CONTEXT_RESET_ARB                              = 0x8253,
	GL_HALF_APPLE                                            = 0x140B,
	GL_HALF_BIAS_NEGATE_NV                                   = 0x853B,
	GL_HALF_BIAS_NORMAL_NV                                   = 0x853A,
	GL_HALF_BIT_ATI                                          = 0x00000008,
	GL_HALF_FLOAT_ARB                                        = 0x140B,
	GL_HALF_FLOAT_NV                                         = 0x140B,
	GL_HI_BIAS_NV                                            = 0x8714,
	GL_HI_SCALE_NV                                           = 0x870E,
	GL_HILO_NV                                               = 0x86F4,
	GL_HILO16_NV                                             = 0x86F8,
	GL_HILO8_NV                                              = 0x885E,
	GL_HISTOGRAM                                             = 0x8024,
	GL_HISTOGRAM_ALPHA_SIZE                                  = 0x802B,
	GL_HISTOGRAM_ALPHA_SIZE_EXT                              = 0x802B,
	GL_HISTOGRAM_BLUE_SIZE                                   = 0x802A,
	GL_HISTOGRAM_BLUE_SIZE_EXT                               = 0x802A,
	GL_HISTOGRAM_EXT                                         = 0x8024,
	GL_HISTOGRAM_FORMAT                                      = 0x8027,
	GL_HISTOGRAM_FORMAT_EXT                                  = 0x8027,
	GL_HISTOGRAM_GREEN_SIZE                                  = 0x8029,
	GL_HISTOGRAM_GREEN_SIZE_EXT                              = 0x8029,
	GL_HISTOGRAM_LUMINANCE_SIZE                              = 0x802C,
	GL_HISTOGRAM_LUMINANCE_SIZE_EXT                          = 0x802C,
	GL_HISTOGRAM_RED_SIZE                                    = 0x8028,
	GL_HISTOGRAM_RED_SIZE_EXT                                = 0x8028,
	GL_HISTOGRAM_SINK                                        = 0x802D,
	GL_HISTOGRAM_SINK_EXT                                    = 0x802D,
	GL_HISTOGRAM_WIDTH                                       = 0x8026,
	GL_HISTOGRAM_WIDTH_EXT                                   = 0x8026,
	GL_HORIZONTAL_LINE_TO_NV                                 = 0x06,
	GL_IDENTITY_NV                                           = 0x862A,
	GL_IGNORE_BORDER_HP                                      = 0x8150,
	GL_IMAGE_1D_ARRAY_EXT                                    = 0x9052,
	GL_IMAGE_1D_EXT                                          = 0x904C,
	GL_IMAGE_2D_ARRAY_EXT                                    = 0x9053,
	GL_IMAGE_2D_EXT                                          = 0x904D,
	GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT                        = 0x9056,
	GL_IMAGE_2D_MULTISAMPLE_EXT                              = 0x9055,
	GL_IMAGE_2D_RECT_EXT                                     = 0x904F,
	GL_IMAGE_3D_EXT                                          = 0x904E,
	GL_IMAGE_BINDING_ACCESS_EXT                              = 0x8F3E,
	GL_IMAGE_BINDING_FORMAT_EXT                              = 0x906E,
	GL_IMAGE_BINDING_LAYER_EXT                               = 0x8F3D,
	GL_IMAGE_BINDING_LAYERED_EXT                             = 0x8F3C,
	GL_IMAGE_BINDING_LEVEL_EXT                               = 0x8F3B,
	GL_IMAGE_BINDING_NAME_EXT                                = 0x8F3A,
	GL_IMAGE_BUFFER_EXT                                      = 0x9051,
	GL_IMAGE_CUBE_EXT                                        = 0x9050,
	GL_IMAGE_CUBE_MAP_ARRAY_EXT                              = 0x9054,
	GL_IMAGE_CUBIC_WEIGHT_HP                                 = 0x815E,
	GL_IMAGE_MAG_FILTER_HP                                   = 0x815C,
	GL_IMAGE_MIN_FILTER_HP                                   = 0x815D,
	GL_IMAGE_ROTATE_ANGLE_HP                                 = 0x8159,
	GL_IMAGE_ROTATE_ORIGIN_X_HP                              = 0x815A,
	GL_IMAGE_ROTATE_ORIGIN_Y_HP                              = 0x815B,
	GL_IMAGE_SCALE_X_HP                                      = 0x8155,
	GL_IMAGE_SCALE_Y_HP                                      = 0x8156,
	GL_IMAGE_TRANSFORM_2D_HP                                 = 0x8161,
	GL_IMAGE_TRANSLATE_X_HP                                  = 0x8157,
	GL_IMAGE_TRANSLATE_Y_HP                                  = 0x8158,
	GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES                  = 0x8B9B,
	GL_IMPLEMENTATION_COLOR_READ_TYPE_OES                    = 0x8B9A,
	GL_INCR_WRAP_EXT                                         = 0x8507,
	GL_INDEX_ARRAY_ADDRESS_NV                                = 0x8F24,
	GL_INDEX_ARRAY_BUFFER_BINDING_ARB                        = 0x8899,
	GL_INDEX_ARRAY_COUNT_EXT                                 = 0x8087,
	GL_INDEX_ARRAY_EXT                                       = 0x8077,
	GL_INDEX_ARRAY_LENGTH_NV                                 = 0x8F2E,
	GL_INDEX_ARRAY_LIST_IBM                                  = 103073,
	GL_INDEX_ARRAY_LIST_STRIDE_IBM                           = 103083,
	GL_INDEX_ARRAY_POINTER_EXT                               = 0x8091,
	GL_INDEX_ARRAY_STRIDE_EXT                                = 0x8086,
	GL_INDEX_ARRAY_TYPE_EXT                                  = 0x8085,
	GL_INDEX_BIT_PGI                                         = 0x00080000,
	GL_INDEX_MATERIAL_EXT                                    = 0x81B8,
	GL_INDEX_MATERIAL_FACE_EXT                               = 0x81BA,
	GL_INDEX_MATERIAL_PARAMETER_EXT                          = 0x81B9,
	GL_INDEX_TEST_EXT                                        = 0x81B5,
	GL_INDEX_TEST_FUNC_EXT                                   = 0x81B6,
	GL_INDEX_TEST_REF_EXT                                    = 0x81B7,
	GL_INNOCENT_CONTEXT_RESET_ARB                            = 0x8254,
	GL_INSTRUMENT_BUFFER_POINTER_SGIX                        = 0x8180,
	GL_INSTRUMENT_MEASUREMENTS_SGIX                          = 0x8181,
	GL_INT_IMAGE_1D_ARRAY_EXT                                = 0x905D,
	GL_INT_IMAGE_1D_EXT                                      = 0x9057,
	GL_INT_IMAGE_2D_ARRAY_EXT                                = 0x905E,
	GL_INT_IMAGE_2D_EXT                                      = 0x9058,
	GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT                    = 0x9061,
	GL_INT_IMAGE_2D_MULTISAMPLE_EXT                          = 0x9060,
	GL_INT_IMAGE_2D_RECT_EXT                                 = 0x905A,
	GL_INT_IMAGE_3D_EXT                                      = 0x9059,
	GL_INT_IMAGE_BUFFER_EXT                                  = 0x905C,
	GL_INT_IMAGE_CUBE_EXT                                    = 0x905B,
	GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT                          = 0x905F,
	GL_INT_SAMPLER_1D_ARRAY_EXT                              = 0x8DCE,
	GL_INT_SAMPLER_1D_EXT                                    = 0x8DC9,
	GL_INT_SAMPLER_2D_ARRAY_EXT                              = 0x8DCF,
	GL_INT_SAMPLER_2D_EXT                                    = 0x8DCA,
	GL_INT_SAMPLER_2D_RECT_EXT                               = 0x8DCD,
	GL_INT_SAMPLER_3D_EXT                                    = 0x8DCB,
	GL_INT_SAMPLER_BUFFER_AMD                                = 0x9002,
	GL_INT_SAMPLER_BUFFER_EXT                                = 0x8DD0,
	GL_INT_SAMPLER_CUBE_EXT                                  = 0x8DCC,
	GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB                        = 0x900E,
	GL_INT_SAMPLER_RENDERBUFFER_NV                           = 0x8E57,
	GL_INT_VEC2_ARB                                          = 0x8B53,
	GL_INT_VEC3_ARB                                          = 0x8B54,
	GL_INT_VEC4_ARB                                          = 0x8B55,
	GL_INT16_NV                                              = 0x8FE4,
	GL_INT16_VEC2_NV                                         = 0x8FE5,
	GL_INT16_VEC3_NV                                         = 0x8FE6,
	GL_INT16_VEC4_NV                                         = 0x8FE7,
	GL_INT64_NV                                              = 0x140E,
	GL_INT64_VEC2_NV                                         = 0x8FE9,
	GL_INT64_VEC3_NV                                         = 0x8FEA,
	GL_INT64_VEC4_NV                                         = 0x8FEB,
	GL_INT8_NV                                               = 0x8FE0,
	GL_INT8_VEC2_NV                                          = 0x8FE1,
	GL_INT8_VEC3_NV                                          = 0x8FE2,
	GL_INT8_VEC4_NV                                          = 0x8FE3,
	GL_INTENSITY_EXT                                         = 0x8049,
	GL_INTENSITY_FLOAT16_APPLE                               = 0x881D,
	GL_INTENSITY_FLOAT16_ATI                                 = 0x881D,
	GL_INTENSITY_FLOAT32_APPLE                               = 0x8817,
	GL_INTENSITY_FLOAT32_ATI                                 = 0x8817,
	GL_INTENSITY_SNORM                                       = 0x9013,
	GL_INTENSITY12_EXT                                       = 0x804C,
	GL_INTENSITY16_EXT                                       = 0x804D,
	GL_INTENSITY16_SNORM                                     = 0x901B,
	GL_INTENSITY16F_ARB                                      = 0x881D,
	GL_INTENSITY16I_EXT                                      = 0x8D8B,
	GL_INTENSITY16UI_EXT                                     = 0x8D79,
	GL_INTENSITY32F_ARB                                      = 0x8817,
	GL_INTENSITY32I_EXT                                      = 0x8D85,
	GL_INTENSITY32UI_EXT                                     = 0x8D73,
	GL_INTENSITY4_EXT                                        = 0x804A,
	GL_INTENSITY8_EXT                                        = 0x804B,
	GL_INTENSITY8_SNORM                                      = 0x9017,
	GL_INTENSITY8I_EXT                                       = 0x8D91,
	GL_INTENSITY8UI_EXT                                      = 0x8D7F,
	GL_INTERLACE_OML                                         = 0x8980,
	GL_INTERLACE_READ_INGR                                   = 0x8568,
	GL_INTERLACE_READ_OML                                    = 0x8981,
	GL_INTERLACE_SGIX                                        = 0x8094,
	GL_INTERLEAVED_ATTRIBS_EXT                               = 0x8C8C,
	GL_INTERLEAVED_ATTRIBS_NV                                = 0x8C8C,
	GL_INTERPOLATE_ARB                                       = 0x8575,
	GL_INTERPOLATE_EXT                                       = 0x8575,
	GL_INVALID_FRAMEBUFFER_OPERATION_EXT                     = 0x0506,
	GL_INVARIANT_DATATYPE_EXT                                = 0x87EB,
	GL_INVARIANT_EXT                                         = 0x87C2,
	GL_INVARIANT_VALUE_EXT                                   = 0x87EA,
	GL_INVERSE_NV                                            = 0x862B,
	GL_INVERSE_TRANSPOSE_NV                                  = 0x862D,
	GL_INVERTED_SCREEN_W_REND                                = 0x8491,
	GL_IR_INSTRUMENT1_SGIX                                   = 0x817F,
	GL_ITALIC_BIT_NV                                         = 0x02,
	GL_IUI_N3F_V2F_EXT                                       = 0x81AF,
	GL_IUI_N3F_V3F_EXT                                       = 0x81B0,
	GL_IUI_V2F_EXT                                           = 0x81AD,
	GL_IUI_V3F_EXT                                           = 0x81AE,
	GL_LARGE_CCW_ARC_TO_NV                                   = 0x16,
	GL_LARGE_CW_ARC_TO_NV                                    = 0x18,
	GL_LAST_VERTEX_CONVENTION_EXT                            = 0x8E4E,
	GL_LAST_VIDEO_CAPTURE_STATUS_NV                          = 0x9027,
	GL_LAYER_NV                                              = 0x8DAA,
	GL_LERP_ATI                                              = 0x8969,
	GL_LIGHT_ENV_MODE_SGIX                                   = 0x8407,
	GL_LIGHT_MODEL_COLOR_CONTROL_EXT                         = 0x81F8,
	GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE                     = 0x85B0,
	GL_LINE_STRIP_ADJACENCY_ARB                              = 0x000B,
	GL_LINE_STRIP_ADJACENCY_EXT                              = 0x000B,
	GL_LINE_TO_NV                                            = 0x04,
	GL_LINEAR_CLIPMAP_LINEAR_SGIX                            = 0x8170,
	GL_LINEAR_CLIPMAP_NEAREST_SGIX                           = 0x844F,
	GL_LINEAR_DETAIL_ALPHA_SGIS                              = 0x8098,
	GL_LINEAR_DETAIL_COLOR_SGIS                              = 0x8099,
	GL_LINEAR_DETAIL_SGIS                                    = 0x8097,
	GL_LINEAR_SHARPEN_ALPHA_SGIS                             = 0x80AE,
	GL_LINEAR_SHARPEN_COLOR_SGIS                             = 0x80AF,
	GL_LINEAR_SHARPEN_SGIS                                   = 0x80AD,
	GL_LINES_ADJACENCY_ARB                                   = 0x000A,
	GL_LINES_ADJACENCY_EXT                                   = 0x000A,
	GL_LIST_PRIORITY_SGIX                                    = 0x8182,
	GL_LO_BIAS_NV                                            = 0x8715,
	GL_LO_SCALE_NV                                           = 0x870F,
	GL_LOCAL_CONSTANT_DATATYPE_EXT                           = 0x87ED,
	GL_LOCAL_CONSTANT_EXT                                    = 0x87C3,
	GL_LOCAL_CONSTANT_VALUE_EXT                              = 0x87EC,
	GL_LOCAL_EXT                                             = 0x87C4,
	GL_LOSE_CONTEXT_ON_RESET_ARB                             = 0x8252,
	GL_LUMINANCE_ALPHA_FLOAT16_APPLE                         = 0x881F,
	GL_LUMINANCE_ALPHA_FLOAT16_ATI                           = 0x881F,
	GL_LUMINANCE_ALPHA_FLOAT32_APPLE                         = 0x8819,
	GL_LUMINANCE_ALPHA_FLOAT32_ATI                           = 0x8819,
	GL_LUMINANCE_ALPHA_INTEGER_EXT                           = 0x8D9D,
	GL_LUMINANCE_ALPHA_SNORM                                 = 0x9012,
	GL_LUMINANCE_ALPHA16F_ARB                                = 0x881F,
	GL_LUMINANCE_ALPHA16I_EXT                                = 0x8D8D,
	GL_LUMINANCE_ALPHA16UI_EXT                               = 0x8D7B,
	GL_LUMINANCE_ALPHA32F_ARB                                = 0x8819,
	GL_LUMINANCE_ALPHA32I_EXT                                = 0x8D87,
	GL_LUMINANCE_ALPHA32UI_EXT                               = 0x8D75,
	GL_LUMINANCE_ALPHA8I_EXT                                 = 0x8D93,
	GL_LUMINANCE_ALPHA8UI_EXT                                = 0x8D81,
	GL_LUMINANCE_FLOAT16_APPLE                               = 0x881E,
	GL_LUMINANCE_FLOAT16_ATI                                 = 0x881E,
	GL_LUMINANCE_FLOAT32_APPLE                               = 0x8818,
	GL_LUMINANCE_FLOAT32_ATI                                 = 0x8818,
	GL_LUMINANCE_INTEGER_EXT                                 = 0x8D9C,
	GL_LUMINANCE_SNORM                                       = 0x9011,
	GL_LUMINANCE12_ALPHA12_EXT                               = 0x8047,
	GL_LUMINANCE12_ALPHA4_EXT                                = 0x8046,
	GL_LUMINANCE12_EXT                                       = 0x8041,
	GL_LUMINANCE16_ALPHA16_EXT                               = 0x8048,
	GL_LUMINANCE16_ALPHA16_SNORM                             = 0x901A,
	GL_LUMINANCE16_EXT                                       = 0x8042,
	GL_LUMINANCE16_SNORM                                     = 0x9019,
	GL_LUMINANCE16F_ARB                                      = 0x881E,
	GL_LUMINANCE16I_EXT                                      = 0x8D8C,
	GL_LUMINANCE16UI_EXT                                     = 0x8D7A,
	GL_LUMINANCE32F_ARB                                      = 0x8818,
	GL_LUMINANCE32I_EXT                                      = 0x8D86,
	GL_LUMINANCE32UI_EXT                                     = 0x8D74,
	GL_LUMINANCE4_ALPHA4_EXT                                 = 0x8043,
	GL_LUMINANCE4_EXT                                        = 0x803F,
	GL_LUMINANCE6_ALPHA2_EXT                                 = 0x8044,
	GL_LUMINANCE8_ALPHA8_EXT                                 = 0x8045,
	GL_LUMINANCE8_ALPHA8_SNORM                               = 0x9016,
	GL_LUMINANCE8_EXT                                        = 0x8040,
	GL_LUMINANCE8_SNORM                                      = 0x9015,
	GL_LUMINANCE8I_EXT                                       = 0x8D92,
	GL_LUMINANCE8UI_EXT                                      = 0x8D80,
	GL_MAD_ATI                                               = 0x8968,
	GL_MAGNITUDE_BIAS_NV                                     = 0x8718,
	GL_MAGNITUDE_SCALE_NV                                    = 0x8712,
	GL_MAP_ATTRIB_U_ORDER_NV                                 = 0x86C3,
	GL_MAP_ATTRIB_V_ORDER_NV                                 = 0x86C4,
	GL_MAP_TESSELLATION_NV                                   = 0x86C2,
	GL_MAP1_BINORMAL_EXT                                     = 0x8446,
	GL_MAP1_TANGENT_EXT                                      = 0x8444,
	GL_MAP1_VERTEX_ATTRIB0_4_NV                              = 0x8660,
	GL_MAP1_VERTEX_ATTRIB1_4_NV                              = 0x8661,
	GL_MAP1_VERTEX_ATTRIB10_4_NV                             = 0x866A,
	GL_MAP1_VERTEX_ATTRIB11_4_NV                             = 0x866B,
	GL_MAP1_VERTEX_ATTRIB12_4_NV                             = 0x866C,
	GL_MAP1_VERTEX_ATTRIB13_4_NV                             = 0x866D,
	GL_MAP1_VERTEX_ATTRIB14_4_NV                             = 0x866E,
	GL_MAP1_VERTEX_ATTRIB15_4_NV                             = 0x866F,
	GL_MAP1_VERTEX_ATTRIB2_4_NV                              = 0x8662,
	GL_MAP1_VERTEX_ATTRIB3_4_NV                              = 0x8663,
	GL_MAP1_VERTEX_ATTRIB4_4_NV                              = 0x8664,
	GL_MAP1_VERTEX_ATTRIB5_4_NV                              = 0x8665,
	GL_MAP1_VERTEX_ATTRIB6_4_NV                              = 0x8666,
	GL_MAP1_VERTEX_ATTRIB7_4_NV                              = 0x8667,
	GL_MAP1_VERTEX_ATTRIB8_4_NV                              = 0x8668,
	GL_MAP1_VERTEX_ATTRIB9_4_NV                              = 0x8669,
	GL_MAP2_BINORMAL_EXT                                     = 0x8447,
	GL_MAP2_TANGENT_EXT                                      = 0x8445,
	GL_MAP2_VERTEX_ATTRIB0_4_NV                              = 0x8670,
	GL_MAP2_VERTEX_ATTRIB1_4_NV                              = 0x8671,
	GL_MAP2_VERTEX_ATTRIB10_4_NV                             = 0x867A,
	GL_MAP2_VERTEX_ATTRIB11_4_NV                             = 0x867B,
	GL_MAP2_VERTEX_ATTRIB12_4_NV                             = 0x867C,
	GL_MAP2_VERTEX_ATTRIB13_4_NV                             = 0x867D,
	GL_MAP2_VERTEX_ATTRIB14_4_NV                             = 0x867E,
	GL_MAP2_VERTEX_ATTRIB15_4_NV                             = 0x867F,
	GL_MAP2_VERTEX_ATTRIB2_4_NV                              = 0x8672,
	GL_MAP2_VERTEX_ATTRIB3_4_NV                              = 0x8673,
	GL_MAP2_VERTEX_ATTRIB4_4_NV                              = 0x8674,
	GL_MAP2_VERTEX_ATTRIB5_4_NV                              = 0x8675,
	GL_MAP2_VERTEX_ATTRIB6_4_NV                              = 0x8676,
	GL_MAP2_VERTEX_ATTRIB7_4_NV                              = 0x8677,
	GL_MAP2_VERTEX_ATTRIB8_4_NV                              = 0x8678,
	GL_MAP2_VERTEX_ATTRIB9_4_NV                              = 0x8679,
	GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI                       = 0x00200000,
	GL_MAT_AMBIENT_BIT_PGI                                   = 0x00100000,
	GL_MAT_COLOR_INDEXES_BIT_PGI                             = 0x01000000,
	GL_MAT_DIFFUSE_BIT_PGI                                   = 0x00400000,
	GL_MAT_EMISSION_BIT_PGI                                  = 0x00800000,
	GL_MAT_SHININESS_BIT_PGI                                 = 0x02000000,
	GL_MAT_SPECULAR_BIT_PGI                                  = 0x04000000,
	GL_MATERIAL_SIDE_HINT_PGI                                = 0x1A22C,
	GL_MATRIX_EXT                                            = 0x87C0,
	GL_MATRIX_INDEX_ARRAY_ARB                                = 0x8844,
	GL_MATRIX_INDEX_ARRAY_POINTER_ARB                        = 0x8849,
	GL_MATRIX_INDEX_ARRAY_SIZE_ARB                           = 0x8846,
	GL_MATRIX_INDEX_ARRAY_STRIDE_ARB                         = 0x8848,
	GL_MATRIX_INDEX_ARRAY_TYPE_ARB                           = 0x8847,
	GL_MATRIX_PALETTE_ARB                                    = 0x8840,
	GL_MATRIX0_ARB                                           = 0x88C0,
	GL_MATRIX0_NV                                            = 0x8630,
	GL_MATRIX1_ARB                                           = 0x88C1,
	GL_MATRIX1_NV                                            = 0x8631,
	GL_MATRIX10_ARB                                          = 0x88CA,
	GL_MATRIX11_ARB                                          = 0x88CB,
	GL_MATRIX12_ARB                                          = 0x88CC,
	GL_MATRIX13_ARB                                          = 0x88CD,
	GL_MATRIX14_ARB                                          = 0x88CE,
	GL_MATRIX15_ARB                                          = 0x88CF,
	GL_MATRIX16_ARB                                          = 0x88D0,
	GL_MATRIX17_ARB                                          = 0x88D1,
	GL_MATRIX18_ARB                                          = 0x88D2,
	GL_MATRIX19_ARB                                          = 0x88D3,
	GL_MATRIX2_ARB                                           = 0x88C2,
	GL_MATRIX2_NV                                            = 0x8632,
	GL_MATRIX20_ARB                                          = 0x88D4,
	GL_MATRIX21_ARB                                          = 0x88D5,
	GL_MATRIX22_ARB                                          = 0x88D6,
	GL_MATRIX23_ARB                                          = 0x88D7,
	GL_MATRIX24_ARB                                          = 0x88D8,
	GL_MATRIX25_ARB                                          = 0x88D9,
	GL_MATRIX26_ARB                                          = 0x88DA,
	GL_MATRIX27_ARB                                          = 0x88DB,
	GL_MATRIX28_ARB                                          = 0x88DC,
	GL_MATRIX29_ARB                                          = 0x88DD,
	GL_MATRIX3_ARB                                           = 0x88C3,
	GL_MATRIX3_NV                                            = 0x8633,
	GL_MATRIX30_ARB                                          = 0x88DE,
	GL_MATRIX31_ARB                                          = 0x88DF,
	GL_MATRIX4_ARB                                           = 0x88C4,
	GL_MATRIX4_NV                                            = 0x8634,
	GL_MATRIX5_ARB                                           = 0x88C5,
	GL_MATRIX5_NV                                            = 0x8635,
	GL_MATRIX6_ARB                                           = 0x88C6,
	GL_MATRIX6_NV                                            = 0x8636,
	GL_MATRIX7_ARB                                           = 0x88C7,
	GL_MATRIX7_NV                                            = 0x8637,
	GL_MATRIX8_ARB                                           = 0x88C8,
	GL_MATRIX9_ARB                                           = 0x88C9,
	GL_MAX                                                   = 0x8008,
	GL_MAX_3D_TEXTURE_SIZE_EXT                               = 0x8073,
	GL_MAX_4D_TEXTURE_SIZE_SGIS                              = 0x8138,
	GL_MAX_ACTIVE_LIGHTS_SGIX                                = 0x8405,
	GL_MAX_ARRAY_TEXTURE_LAYERS_EXT                          = 0x88FF,
	GL_MAX_ASYNC_DRAW_PIXELS_SGIX                            = 0x8360,
	GL_MAX_ASYNC_HISTOGRAM_SGIX                              = 0x832D,
	GL_MAX_ASYNC_READ_PIXELS_SGIX                            = 0x8361,
	GL_MAX_ASYNC_TEX_IMAGE_SGIX                              = 0x835F,
	GL_MAX_BINDABLE_UNIFORM_SIZE_EXT                         = 0x8DED,
	GL_MAX_CLIPMAP_DEPTH_SGIX                                = 0x8177,
	GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX                        = 0x8178,
	GL_MAX_COLOR_ATTACHMENTS_EXT                             = 0x8CDF,
	GL_MAX_COLOR_MATRIX_STACK_DEPTH                          = 0x80B3,
	GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI                      = 0x80B3,
	GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS              = 0x8A32,
	GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT     = 0x8F39,
	GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB                  = 0x8B4D,
	GL_MAX_CONVOLUTION_HEIGHT                                = 0x801B,
	GL_MAX_CONVOLUTION_HEIGHT_EXT                            = 0x801B,
	GL_MAX_CONVOLUTION_WIDTH                                 = 0x801A,
	GL_MAX_CONVOLUTION_WIDTH_EXT                             = 0x801A,
	GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB                         = 0x851C,
	GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT                         = 0x851C,
	GL_MAX_DEBUG_LOGGED_MESSAGES_AMD                         = 0x9144,
	GL_MAX_DEBUG_LOGGED_MESSAGES_ARB                         = 0x9144,
	GL_MAX_DEBUG_MESSAGE_LENGTH_AMD                          = 0x9143,
	GL_MAX_DEBUG_MESSAGE_LENGTH_ARB                          = 0x9143,
	GL_MAX_DEFORMATION_ORDER_SGIX                            = 0x8197,
	GL_MAX_DRAW_BUFFERS_ARB                                  = 0x8824,
	GL_MAX_DRAW_BUFFERS_ATI                                  = 0x8824,
	GL_MAX_ELEMENTS_INDICES_EXT                              = 0x80E9,
	GL_MAX_ELEMENTS_VERTICES_EXT                             = 0x80E8,
	GL_MAX_EXT                                               = 0x8008,
	GL_MAX_FOG_FUNC_POINTS_SGIS                              = 0x812C,
	GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT                    = 0x8DE3,
	GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV                  = 0x8E5C,
	GL_MAX_FRAGMENT_LIGHTS_SGIX                              = 0x8404,
	GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV              = 0x8868,
	GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB                   = 0x8B49,
	GL_MAX_FRAMEZOOM_FACTOR_SGIX                             = 0x818D,
	GL_MAX_GENERAL_COMBINERS_NV                              = 0x854D,
	GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT                    = 0x8DE4,
	GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB                      = 0x8DE0,
	GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT                      = 0x8DE0,
	GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV                   = 0x8E5A,
	GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB                  = 0x8C29,
	GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT                  = 0x8C29,
	GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB              = 0x8DE1,
	GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT              = 0x8DE1,
	GL_MAX_GEOMETRY_UNIFORM_BLOCKS                           = 0x8A2C,
	GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB                   = 0x8DDF,
	GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT                   = 0x8DDF,
	GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB                   = 0x8DDD,
	GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT                   = 0x8DDD,
	GL_MAX_IMAGE_SAMPLES_EXT                                 = 0x906D,
	GL_MAX_IMAGE_UNITS_EXT                                   = 0x8F38,
	GL_MAX_MAP_TESSELLATION_NV                               = 0x86D6,
	GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB                    = 0x8841,
	GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV                     = 0x8E11,
	GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT          = 0x87CA,
	GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT            = 0x87CD,
	GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT       = 0x87CC,
	GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT                = 0x87CE,
	GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT              = 0x87CB,
	GL_MAX_PALETTE_MATRICES_ARB                              = 0x8842,
	GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT                = 0x8337,
	GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI                = 0x87F1,
	GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB                     = 0x88B1,
	GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB                      = 0x880B,
	GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV                      = 0x8908,
	GL_MAX_PROGRAM_ATTRIBS_ARB                               = 0x88AD,
	GL_MAX_PROGRAM_CALL_DEPTH_NV                             = 0x88F5,
	GL_MAX_PROGRAM_ENV_PARAMETERS_ARB                        = 0x88B5,
	GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV                      = 0x88F4,
	GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV                        = 0x8DA5,
	GL_MAX_PROGRAM_GENERIC_RESULTS_NV                        = 0x8DA6,
	GL_MAX_PROGRAM_IF_DEPTH_NV                               = 0x88F6,
	GL_MAX_PROGRAM_INSTRUCTIONS_ARB                          = 0x88A1,
	GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB                      = 0x88B4,
	GL_MAX_PROGRAM_LOOP_COUNT_NV                             = 0x88F8,
	GL_MAX_PROGRAM_LOOP_DEPTH_NV                             = 0x88F7,
	GL_MAX_PROGRAM_MATRICES_ARB                              = 0x862F,
	GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB                    = 0x862E,
	GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB              = 0x88B3,
	GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB               = 0x880E,
	GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB                        = 0x88AF,
	GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB                   = 0x88A3,
	GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB                     = 0x88AB,
	GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB                    = 0x88A7,
	GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB               = 0x8810,
	GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB               = 0x880F,
	GL_MAX_PROGRAM_OUTPUT_VERTICES_NV                        = 0x8C27,
	GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV              = 0x8DA0,
	GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV                  = 0x8DA1,
	GL_MAX_PROGRAM_PARAMETERS_ARB                            = 0x88A9,
	GL_MAX_PROGRAM_PATCH_ATTRIBS_NV                          = 0x86D8,
	GL_MAX_PROGRAM_RESULT_COMPONENTS_NV                      = 0x8909,
	GL_MAX_PROGRAM_SUBROUTINE_NUM_NV                         = 0x8F45,
	GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV                  = 0x8F44,
	GL_MAX_PROGRAM_TEMPORARIES_ARB                           = 0x88A5,
	GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB                      = 0x880D,
	GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB                      = 0x880C,
	GL_MAX_PROGRAM_TEXEL_OFFSET_NV                           = 0x8905,
	GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB             = 0x8F9F,
	GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                 = 0x8E5F,
	GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV                  = 0x8E5F,
	GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV                = 0x8C28,
	GL_MAX_RATIONAL_EVAL_ORDER_NV                            = 0x86D7,
	GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB                        = 0x84F8,
	GL_MAX_RECTANGLE_TEXTURE_SIZE_NV                         = 0x84F8,
	GL_MAX_RENDERBUFFER_SIZE_EXT                             = 0x84E8,
	GL_MAX_SAMPLE_MASK_WORDS_NV                              = 0x8E59,
	GL_MAX_SAMPLES_EXT                                       = 0x8D57,
	GL_MAX_SHADER_BUFFER_ADDRESS_NV                          = 0x8F35,
	GL_MAX_SHININESS_NV                                      = 0x8504,
	GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD                        = 0x9199,
	GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS                       = 0x919A,
	GL_MAX_SPARSE_TEXTURE_SIZE_AMD                           = 0x9198,
	GL_MAX_SPOT_EXPONENT_NV                                  = 0x8505,
	GL_MAX_TEXTURE_BUFFER_SIZE_ARB                           = 0x8C2B,
	GL_MAX_TEXTURE_BUFFER_SIZE_EXT                           = 0x8C2B,
	GL_MAX_TEXTURE_COORDS_ARB                                = 0x8871,
	GL_MAX_TEXTURE_COORDS_NV                                 = 0x8871,
	GL_MAX_TEXTURE_IMAGE_UNITS_ARB                           = 0x8872,
	GL_MAX_TEXTURE_IMAGE_UNITS_NV                            = 0x8872,
	GL_MAX_TEXTURE_LOD_BIAS_EXT                              = 0x84FD,
	GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT                        = 0x84FF,
	GL_MAX_TEXTURE_UNITS_ARB                                 = 0x84E2,
	GL_MAX_TRACK_MATRICES_NV                                 = 0x862F,
	GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV                       = 0x862E,
	GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT     = 0x8C8A,
	GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV      = 0x8C8A,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT           = 0x8C8B,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV            = 0x8C8B,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT        = 0x8C80,
	GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV         = 0x8C80,
	GL_MAX_VARYING_COMPONENTS_EXT                            = 0x8B4B,
	GL_MAX_VARYING_FLOATS_ARB                                = 0x8B4B,
	GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV                     = 0x8520,
	GL_MAX_VERTEX_ATTRIBS_ARB                                = 0x8869,
	GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT                      = 0x8DE2,
	GL_MAX_VERTEX_HINT_PGI                                   = 0x1A22D,
	GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT                    = 0x87C5,
	GL_MAX_VERTEX_SHADER_INVARIANTS_EXT                      = 0x87C7,
	GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT                 = 0x87C8,
	GL_MAX_VERTEX_SHADER_LOCALS_EXT                          = 0x87C9,
	GL_MAX_VERTEX_SHADER_VARIANTS_EXT                        = 0x87C6,
	GL_MAX_VERTEX_STREAMS_ATI                                = 0x876B,
	GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB                    = 0x8B4C,
	GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB                     = 0x8B4A,
	GL_MAX_VERTEX_UNITS_ARB                                  = 0x86A4,
	GL_MAX_VERTEX_VARYING_COMPONENTS_ARB                     = 0x8DDE,
	GL_MAX_VERTEX_VARYING_COMPONENTS_EXT                     = 0x8DDE,
	GL_MIN                                                   = 0x8007,
	GL_MIN_EXT                                               = 0x8007,
	GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV                  = 0x8E5B,
	GL_MIN_LOD_WARNING_AMD                                   = 0x919C,
	GL_MIN_PROGRAM_TEXEL_OFFSET_NV                           = 0x8904,
	GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB                 = 0x8E5E,
	GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV                  = 0x8E5E,
	GL_MIN_SAMPLE_SHADING_VALUE_ARB                          = 0x8C37,
	GL_MIN_SPARSE_LEVEL_AMD                                  = 0x919B,
	GL_MINMAX                                                = 0x802E,
	GL_MINMAX_EXT                                            = 0x802E,
	GL_MINMAX_FORMAT                                         = 0x802F,
	GL_MINMAX_FORMAT_EXT                                     = 0x802F,
	GL_MINMAX_SINK                                           = 0x8030,
	GL_MINMAX_SINK_EXT                                       = 0x8030,
	GL_MIRROR_CLAMP_ATI                                      = 0x8742,
	GL_MIRROR_CLAMP_EXT                                      = 0x8742,
	GL_MIRROR_CLAMP_TO_BORDER_EXT                            = 0x8912,
	GL_MIRROR_CLAMP_TO_EDGE_ATI                              = 0x8743,
	GL_MIRROR_CLAMP_TO_EDGE_EXT                              = 0x8743,
	GL_MIRRORED_REPEAT_ARB                                   = 0x8370,
	GL_MIRRORED_REPEAT_IBM                                   = 0x8370,
	GL_MITER_REVERT_NV                                       = 0x90A7,
	GL_MITER_TRUNCATE_NV                                     = 0x90A8,
	GL_MODELVIEW_PROJECTION_NV                               = 0x8629,
	GL_MODELVIEW0_ARB                                        = 0x1700,
	GL_MODELVIEW0_EXT                                        = 0x1700,
	GL_MODELVIEW0_MATRIX_EXT                                 = 0x0BA6,
	GL_MODELVIEW0_STACK_DEPTH_EXT                            = 0x0BA3,
	GL_MODELVIEW1_ARB                                        = 0x850A,
	GL_MODELVIEW1_EXT                                        = 0x850A,
	GL_MODELVIEW1_MATRIX_EXT                                 = 0x8506,
	GL_MODELVIEW1_STACK_DEPTH_EXT                            = 0x8502,
	GL_MODELVIEW10_ARB                                       = 0x872A,
	GL_MODELVIEW11_ARB                                       = 0x872B,
	GL_MODELVIEW12_ARB                                       = 0x872C,
	GL_MODELVIEW13_ARB                                       = 0x872D,
	GL_MODELVIEW14_ARB                                       = 0x872E,
	GL_MODELVIEW15_ARB                                       = 0x872F,
	GL_MODELVIEW16_ARB                                       = 0x8730,
	GL_MODELVIEW17_ARB                                       = 0x8731,
	GL_MODELVIEW18_ARB                                       = 0x8732,
	GL_MODELVIEW19_ARB                                       = 0x8733,
	GL_MODELVIEW2_ARB                                        = 0x8722,
	GL_MODELVIEW20_ARB                                       = 0x8734,
	GL_MODELVIEW21_ARB                                       = 0x8735,
	GL_MODELVIEW22_ARB                                       = 0x8736,
	GL_MODELVIEW23_ARB                                       = 0x8737,
	GL_MODELVIEW24_ARB                                       = 0x8738,
	GL_MODELVIEW25_ARB                                       = 0x8739,
	GL_MODELVIEW26_ARB                                       = 0x873A,
	GL_MODELVIEW27_ARB                                       = 0x873B,
	GL_MODELVIEW28_ARB                                       = 0x873C,
	GL_MODELVIEW29_ARB                                       = 0x873D,
	GL_MODELVIEW3_ARB                                        = 0x8723,
	GL_MODELVIEW30_ARB                                       = 0x873E,
	GL_MODELVIEW31_ARB                                       = 0x873F,
	GL_MODELVIEW4_ARB                                        = 0x8724,
	GL_MODELVIEW5_ARB                                        = 0x8725,
	GL_MODELVIEW6_ARB                                        = 0x8726,
	GL_MODELVIEW7_ARB                                        = 0x8727,
	GL_MODELVIEW8_ARB                                        = 0x8728,
	GL_MODELVIEW9_ARB                                        = 0x8729,
	GL_MODULATE_ADD_ATI                                      = 0x8744,
	GL_MODULATE_SIGNED_ADD_ATI                               = 0x8745,
	GL_MODULATE_SUBTRACT_ATI                                 = 0x8746,
	GL_MOV_ATI                                               = 0x8961,
	GL_MOVE_TO_CONTINUES_NV                                  = 0x90B6,
	GL_MOVE_TO_NV                                            = 0x02,
	GL_MOVE_TO_RESETS_NV                                     = 0x90B5,
	GL_MUL_ATI                                               = 0x8964,
	GL_MULTI_HULLS_NV                                        = 0x908C,
	GL_MULTISAMPLE_3DFX                                      = 0x86B2,
	GL_MULTISAMPLE_ARB                                       = 0x809D,
	GL_MULTISAMPLE_BIT_3DFX                                  = 0x20000000,
	GL_MULTISAMPLE_BIT_ARB                                   = 0x20000000,
	GL_MULTISAMPLE_BIT_EXT                                   = 0x20000000,
	GL_MULTISAMPLE_COVERAGE_MODES_NV                         = 0x8E12,
	GL_MULTISAMPLE_EXT                                       = 0x809D,
	GL_MULTISAMPLE_FILTER_HINT_NV                            = 0x8534,
	GL_MULTISAMPLE_SGIS                                      = 0x809D,
	GL_MVP_MATRIX_EXT                                        = 0x87E3,
	GL_NAMED_STRING_LENGTH_ARB                               = 0x8DE9,
	GL_NAMED_STRING_TYPE_ARB                                 = 0x8DEA,
	GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI                        = 0x1A203,
	GL_NATIVE_GRAPHICS_END_HINT_PGI                          = 0x1A204,
	GL_NATIVE_GRAPHICS_HANDLE_PGI                            = 0x1A202,
	GL_NEAREST_CLIPMAP_LINEAR_SGIX                           = 0x844E,
	GL_NEAREST_CLIPMAP_NEAREST_SGIX                          = 0x844D,
	GL_NEGATE_BIT_ATI                                        = 0x00000004,
	GL_NEGATIVE_ONE_EXT                                      = 0x87DF,
	GL_NEGATIVE_W_EXT                                        = 0x87DC,
	GL_NEGATIVE_X_EXT                                        = 0x87D9,
	GL_NEGATIVE_Y_EXT                                        = 0x87DA,
	GL_NEGATIVE_Z_EXT                                        = 0x87DB,
	GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV                   = 0x9025,
	GL_NO_RESET_NOTIFICATION_ARB                             = 0x8261,
	GL_NORMAL_ARRAY_ADDRESS_NV                               = 0x8F22,
	GL_NORMAL_ARRAY_BUFFER_BINDING_ARB                       = 0x8897,
	GL_NORMAL_ARRAY_COUNT_EXT                                = 0x8080,
	GL_NORMAL_ARRAY_EXT                                      = 0x8075,
	GL_NORMAL_ARRAY_LENGTH_NV                                = 0x8F2C,
	GL_NORMAL_ARRAY_LIST_IBM                                 = 103071,
	GL_NORMAL_ARRAY_LIST_STRIDE_IBM                          = 103081,
	GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL                  = 0x83F6,
	GL_NORMAL_ARRAY_POINTER_EXT                              = 0x808F,
	GL_NORMAL_ARRAY_STRIDE_EXT                               = 0x807F,
	GL_NORMAL_ARRAY_TYPE_EXT                                 = 0x807E,
	GL_NORMAL_BIT_PGI                                        = 0x08000000,
	GL_NORMAL_MAP_ARB                                        = 0x8511,
	GL_NORMAL_MAP_EXT                                        = 0x8511,
	GL_NORMAL_MAP_NV                                         = 0x8511,
	GL_NORMALIZED_RANGE_EXT                                  = 0x87E0,
	GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB                    = 0x86A2,
	GL_NUM_FILL_STREAMS_NV                                   = 0x8E29,
	GL_NUM_FRAGMENT_CONSTANTS_ATI                            = 0x896F,
	GL_NUM_FRAGMENT_REGISTERS_ATI                            = 0x896E,
	GL_NUM_GENERAL_COMBINERS_NV                              = 0x854E,
	GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI                 = 0x8973,
	GL_NUM_INSTRUCTIONS_PER_PASS_ATI                         = 0x8971,
	GL_NUM_INSTRUCTIONS_TOTAL_ATI                            = 0x8972,
	GL_NUM_LOOPBACK_COMPONENTS_ATI                           = 0x8974,
	GL_NUM_PASSES_ATI                                        = 0x8970,
	GL_NUM_VIDEO_CAPTURE_STREAMS_NV                          = 0x9024,
	GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB                = 0x8B8A,
	GL_OBJECT_ACTIVE_ATTRIBUTES_ARB                          = 0x8B89,
	GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB                  = 0x8B87,
	GL_OBJECT_ACTIVE_UNIFORMS_ARB                            = 0x8B86,
	GL_OBJECT_ATTACHED_OBJECTS_ARB                           = 0x8B85,
	GL_OBJECT_BUFFER_SIZE_ATI                                = 0x8764,
	GL_OBJECT_BUFFER_USAGE_ATI                               = 0x8765,
	GL_OBJECT_COMPILE_STATUS_ARB                             = 0x8B81,
	GL_OBJECT_DELETE_STATUS_ARB                              = 0x8B80,
	GL_OBJECT_DISTANCE_TO_LINE_SGIS                          = 0x81F3,
	GL_OBJECT_DISTANCE_TO_POINT_SGIS                         = 0x81F1,
	GL_OBJECT_INFO_LOG_LENGTH_ARB                            = 0x8B84,
	GL_OBJECT_LINE_SGIS                                      = 0x81F7,
	GL_OBJECT_LINK_STATUS_ARB                                = 0x8B82,
	GL_OBJECT_POINT_SGIS                                     = 0x81F5,
	GL_OBJECT_SHADER_SOURCE_LENGTH_ARB                       = 0x8B88,
	GL_OBJECT_SUBTYPE_ARB                                    = 0x8B4F,
	GL_OBJECT_TYPE_ARB                                       = 0x8B4E,
	GL_OBJECT_VALIDATE_STATUS_ARB                            = 0x8B83,
	GL_OCCLUSION_TEST_HP                                     = 0x8165,
	GL_OCCLUSION_TEST_RESULT_HP                              = 0x8166,
	GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV                  = 0x8856,
	GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV           = 0x8857,
	GL_OFFSET_HILO_TEXTURE_2D_NV                             = 0x8854,
	GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV                      = 0x8855,
	GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV                       = 0x8850,
	GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV                 = 0x8851,
	GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV                = 0x8852,
	GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV          = 0x8853,
	GL_OFFSET_TEXTURE_2D_BIAS_NV                             = 0x86E3,
	GL_OFFSET_TEXTURE_2D_MATRIX_NV                           = 0x86E1,
	GL_OFFSET_TEXTURE_2D_NV                                  = 0x86E8,
	GL_OFFSET_TEXTURE_2D_SCALE_NV                            = 0x86E2,
	GL_OFFSET_TEXTURE_BIAS_NV                                = 0x86E3,
	GL_OFFSET_TEXTURE_MATRIX_NV                              = 0x86E1,
	GL_OFFSET_TEXTURE_RECTANGLE_NV                           = 0x864C,
	GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV                     = 0x864D,
	GL_OFFSET_TEXTURE_SCALE_NV                               = 0x86E2,
	GL_ONE_EXT                                               = 0x87DE,
	GL_ONE_MINUS_CONSTANT_ALPHA                              = 0x8004,
	GL_ONE_MINUS_CONSTANT_ALPHA_EXT                          = 0x8004,
	GL_ONE_MINUS_CONSTANT_COLOR                              = 0x8002,
	GL_ONE_MINUS_CONSTANT_COLOR_EXT                          = 0x8002,
	GL_OP_ADD_EXT                                            = 0x8787,
	GL_OP_CLAMP_EXT                                          = 0x878E,
	GL_OP_CROSS_PRODUCT_EXT                                  = 0x8797,
	GL_OP_DOT3_EXT                                           = 0x8784,
	GL_OP_DOT4_EXT                                           = 0x8785,
	GL_OP_EXP_BASE_2_EXT                                     = 0x8791,
	GL_OP_FLOOR_EXT                                          = 0x878F,
	GL_OP_FRAC_EXT                                           = 0x8789,
	GL_OP_INDEX_EXT                                          = 0x8782,
	GL_OP_LOG_BASE_2_EXT                                     = 0x8792,
	GL_OP_MADD_EXT                                           = 0x8788,
	GL_OP_MAX_EXT                                            = 0x878A,
	GL_OP_MIN_EXT                                            = 0x878B,
	GL_OP_MOV_EXT                                            = 0x8799,
	GL_OP_MUL_EXT                                            = 0x8786,
	GL_OP_MULTIPLY_MATRIX_EXT                                = 0x8798,
	GL_OP_NEGATE_EXT                                         = 0x8783,
	GL_OP_POWER_EXT                                          = 0x8793,
	GL_OP_RECIP_EXT                                          = 0x8794,
	GL_OP_RECIP_SQRT_EXT                                     = 0x8795,
	GL_OP_ROUND_EXT                                          = 0x8790,
	GL_OP_SET_GE_EXT                                         = 0x878C,
	GL_OP_SET_LT_EXT                                         = 0x878D,
	GL_OP_SUB_EXT                                            = 0x8796,
	GL_OPERAND0_ALPHA_ARB                                    = 0x8598,
	GL_OPERAND0_ALPHA_EXT                                    = 0x8598,
	GL_OPERAND0_RGB_ARB                                      = 0x8590,
	GL_OPERAND0_RGB_EXT                                      = 0x8590,
	GL_OPERAND1_ALPHA_ARB                                    = 0x8599,
	GL_OPERAND1_ALPHA_EXT                                    = 0x8599,
	GL_OPERAND1_RGB_ARB                                      = 0x8591,
	GL_OPERAND1_RGB_EXT                                      = 0x8591,
	GL_OPERAND2_ALPHA_ARB                                    = 0x859A,
	GL_OPERAND2_ALPHA_EXT                                    = 0x859A,
	GL_OPERAND2_RGB_ARB                                      = 0x8592,
	GL_OPERAND2_RGB_EXT                                      = 0x8592,
	GL_OPERAND3_ALPHA_NV                                     = 0x859B,
	GL_OPERAND3_RGB_NV                                       = 0x8593,
	GL_OUTPUT_COLOR0_EXT                                     = 0x879B,
	GL_OUTPUT_COLOR1_EXT                                     = 0x879C,
	GL_OUTPUT_FOG_EXT                                        = 0x87BD,
	GL_OUTPUT_TEXTURE_COORD0_EXT                             = 0x879D,
	GL_OUTPUT_TEXTURE_COORD1_EXT                             = 0x879E,
	GL_OUTPUT_TEXTURE_COORD10_EXT                            = 0x87A7,
	GL_OUTPUT_TEXTURE_COORD11_EXT                            = 0x87A8,
	GL_OUTPUT_TEXTURE_COORD12_EXT                            = 0x87A9,
	GL_OUTPUT_TEXTURE_COORD13_EXT                            = 0x87AA,
	GL_OUTPUT_TEXTURE_COORD14_EXT                            = 0x87AB,
	GL_OUTPUT_TEXTURE_COORD15_EXT                            = 0x87AC,
	GL_OUTPUT_TEXTURE_COORD16_EXT                            = 0x87AD,
	GL_OUTPUT_TEXTURE_COORD17_EXT                            = 0x87AE,
	GL_OUTPUT_TEXTURE_COORD18_EXT                            = 0x87AF,
	GL_OUTPUT_TEXTURE_COORD19_EXT                            = 0x87B0,
	GL_OUTPUT_TEXTURE_COORD2_EXT                             = 0x879F,
	GL_OUTPUT_TEXTURE_COORD20_EXT                            = 0x87B1,
	GL_OUTPUT_TEXTURE_COORD21_EXT                            = 0x87B2,
	GL_OUTPUT_TEXTURE_COORD22_EXT                            = 0x87B3,
	GL_OUTPUT_TEXTURE_COORD23_EXT                            = 0x87B4,
	GL_OUTPUT_TEXTURE_COORD24_EXT                            = 0x87B5,
	GL_OUTPUT_TEXTURE_COORD25_EXT                            = 0x87B6,
	GL_OUTPUT_TEXTURE_COORD26_EXT                            = 0x87B7,
	GL_OUTPUT_TEXTURE_COORD27_EXT                            = 0x87B8,
	GL_OUTPUT_TEXTURE_COORD28_EXT                            = 0x87B9,
	GL_OUTPUT_TEXTURE_COORD29_EXT                            = 0x87BA,
	GL_OUTPUT_TEXTURE_COORD3_EXT                             = 0x87A0,
	GL_OUTPUT_TEXTURE_COORD30_EXT                            = 0x87BB,
	GL_OUTPUT_TEXTURE_COORD31_EXT                            = 0x87BC,
	GL_OUTPUT_TEXTURE_COORD4_EXT                             = 0x87A1,
	GL_OUTPUT_TEXTURE_COORD5_EXT                             = 0x87A2,
	GL_OUTPUT_TEXTURE_COORD6_EXT                             = 0x87A3,
	GL_OUTPUT_TEXTURE_COORD7_EXT                             = 0x87A4,
	GL_OUTPUT_TEXTURE_COORD8_EXT                             = 0x87A5,
	GL_OUTPUT_TEXTURE_COORD9_EXT                             = 0x87A6,
	GL_OUTPUT_VERTEX_EXT                                     = 0x879A,
	GL_PACK_CMYK_HINT_EXT                                    = 0x800E,
	GL_PACK_IMAGE_DEPTH_SGIS                                 = 0x8131,
	GL_PACK_IMAGE_HEIGHT_EXT                                 = 0x806C,
	GL_PACK_INVERT_MESA                                      = 0x8758,
	GL_PACK_RESAMPLE_OML                                     = 0x8984,
	GL_PACK_RESAMPLE_SGIX                                    = 0x842C,
	GL_PACK_ROW_BYTES_APPLE                                  = 0x8A15,
	GL_PACK_SKIP_IMAGES_EXT                                  = 0x806B,
	GL_PACK_SKIP_VOLUMES_SGIS                                = 0x8130,
	GL_PACK_SUBSAMPLE_RATE_SGIX                              = 0x85A0,
	GL_PARALLEL_ARRAYS_INTEL                                 = 0x83F4,
	GL_PARTIAL_SUCCESS_NV                                    = 0x902E,
	GL_PASS_THROUGH_NV                                       = 0x86E6,
	GL_PATH_CLIENT_LENGTH_NV                                 = 0x907F,
	GL_PATH_COMMAND_COUNT_NV                                 = 0x909D,
	GL_PATH_COMPUTED_LENGTH_NV                               = 0x90A0,
	GL_PATH_COORD_COUNT_NV                                   = 0x909E,
	GL_PATH_COVER_DEPTH_FUNC_NV                              = 0x90BF,
	GL_PATH_DASH_ARRAY_COUNT_NV                              = 0x909F,
	GL_PATH_DASH_CAPS_NV                                     = 0x907B,
	GL_PATH_DASH_OFFSET_NV                                   = 0x907E,
	GL_PATH_DASH_OFFSET_RESET_NV                             = 0x90B4,
	GL_PATH_END_CAPS_NV                                      = 0x9076,
	GL_PATH_ERROR_POSITION_NV                                = 0x90AB,
	GL_PATH_FILL_BOUNDING_BOX_NV                             = 0x90A1,
	GL_PATH_FILL_COVER_MODE_NV                               = 0x9082,
	GL_PATH_FILL_MASK_NV                                     = 0x9081,
	GL_PATH_FILL_MODE_NV                                     = 0x9080,
	GL_PATH_FOG_GEN_MODE_NV                                  = 0x90AC,
	GL_PATH_FORMAT_PS_NV                                     = 0x9071,
	GL_PATH_FORMAT_SVG_NV                                    = 0x9070,
	GL_PATH_GEN_COEFF_NV                                     = 0x90B1,
	GL_PATH_GEN_COLOR_FORMAT_NV                              = 0x90B2,
	GL_PATH_GEN_COMPONENTS_NV                                = 0x90B3,
	GL_PATH_GEN_MODE_NV                                      = 0x90B0,
	GL_PATH_INITIAL_DASH_CAP_NV                              = 0x907C,
	GL_PATH_INITIAL_END_CAP_NV                               = 0x9077,
	GL_PATH_JOIN_STYLE_NV                                    = 0x9079,
	GL_PATH_MITER_LIMIT_NV                                   = 0x907A,
	GL_PATH_OBJECT_BOUNDING_BOX_NV                           = 0x908A,
	GL_PATH_SAMPLE_QUALITY_NV                                = 0x9085,
	GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV                   = 0x90BD,
	GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV                    = 0x90BE,
	GL_PATH_STENCIL_FUNC_NV                                  = 0x90B7,
	GL_PATH_STENCIL_REF_NV                                   = 0x90B8,
	GL_PATH_STENCIL_VALUE_MASK_NV                            = 0x90B9,
	GL_PATH_STROKE_BOUND_NV                                  = 0x9086,
	GL_PATH_STROKE_BOUNDING_BOX_NV                           = 0x90A2,
	GL_PATH_STROKE_COVER_MODE_NV                             = 0x9083,
	GL_PATH_STROKE_MASK_NV                                   = 0x9084,
	GL_PATH_STROKE_OVERSAMPLE_COUNT_NV                       = 0x9087,
	GL_PATH_STROKE_WIDTH_NV                                  = 0x9075,
	GL_PATH_TERMINAL_DASH_CAP_NV                             = 0x907D,
	GL_PATH_TERMINAL_END_CAP_NV                              = 0x9078,
	GL_PER_STAGE_CONSTANTS_NV                                = 0x8535,
	GL_PERCENTAGE_AMD                                        = 0x8BC3,
	GL_PERFMON_RESULT_AMD                                    = 0x8BC6,
	GL_PERFMON_RESULT_AVAILABLE_AMD                          = 0x8BC4,
	GL_PERFMON_RESULT_SIZE_AMD                               = 0x8BC5,
	GL_PERFORMANCE_MONITOR_AMD                               = 0x9152,
	GL_PERTURB_EXT                                           = 0x85AE,
	GL_PHONG_HINT_WIN                                        = 0x80EB,
	GL_PHONG_WIN                                             = 0x80EA,
	GL_PIXEL_BUFFER_BARRIER_BIT_EXT                          = 0x00000080,
	GL_PIXEL_COUNT_AVAILABLE_NV                              = 0x8867,
	GL_PIXEL_COUNT_NV                                        = 0x8866,
	GL_PIXEL_COUNTER_BITS_NV                                 = 0x8864,
	GL_PIXEL_CUBIC_WEIGHT_EXT                                = 0x8333,
	GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS                      = 0x8355,
	GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS                        = 0x8354,
	GL_PIXEL_GROUP_COLOR_SGIS                                = 0x8356,
	GL_PIXEL_MAG_FILTER_EXT                                  = 0x8331,
	GL_PIXEL_MIN_FILTER_EXT                                  = 0x8332,
	GL_PIXEL_PACK_BUFFER_ARB                                 = 0x88EB,
	GL_PIXEL_PACK_BUFFER_BINDING_ARB                         = 0x88ED,
	GL_PIXEL_PACK_BUFFER_BINDING_EXT                         = 0x88ED,
	GL_PIXEL_PACK_BUFFER_EXT                                 = 0x88EB,
	GL_PIXEL_SUBSAMPLE_2424_SGIX                             = 0x85A3,
	GL_PIXEL_SUBSAMPLE_4242_SGIX                             = 0x85A4,
	GL_PIXEL_SUBSAMPLE_4444_SGIX                             = 0x85A2,
	GL_PIXEL_TEX_GEN_ALPHA_LS_SGIX                           = 0x8189,
	GL_PIXEL_TEX_GEN_ALPHA_MS_SGIX                           = 0x818A,
	GL_PIXEL_TEX_GEN_ALPHA_NO_REPLACE_SGIX                   = 0x8188,
	GL_PIXEL_TEX_GEN_ALPHA_REPLACE_SGIX                      = 0x8187,
	GL_PIXEL_TEX_GEN_MODE_SGIX                               = 0x832B,
	GL_PIXEL_TEX_GEN_Q_CEILING_SGIX                          = 0x8184,
	GL_PIXEL_TEX_GEN_Q_FLOOR_SGIX                            = 0x8186,
	GL_PIXEL_TEX_GEN_Q_ROUND_SGIX                            = 0x8185,
	GL_PIXEL_TEX_GEN_SGIX                                    = 0x8139,
	GL_PIXEL_TEXTURE_SGIS                                    = 0x8353,
	GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX                        = 0x813E,
	GL_PIXEL_TILE_CACHE_INCREMENT_SGIX                       = 0x813F,
	GL_PIXEL_TILE_CACHE_SIZE_SGIX                            = 0x8145,
	GL_PIXEL_TILE_GRID_DEPTH_SGIX                            = 0x8144,
	GL_PIXEL_TILE_GRID_HEIGHT_SGIX                           = 0x8143,
	GL_PIXEL_TILE_GRID_WIDTH_SGIX                            = 0x8142,
	GL_PIXEL_TILE_HEIGHT_SGIX                                = 0x8141,
	GL_PIXEL_TILE_WIDTH_SGIX                                 = 0x8140,
	GL_PIXEL_TRANSFORM_2D_EXT                                = 0x8330,
	GL_PIXEL_TRANSFORM_2D_MATRIX_EXT                         = 0x8338,
	GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT                    = 0x8336,
	GL_PIXEL_UNPACK_BUFFER_ARB                               = 0x88EC,
	GL_PIXEL_UNPACK_BUFFER_BINDING_ARB                       = 0x88EF,
	GL_PIXEL_UNPACK_BUFFER_BINDING_EXT                       = 0x88EF,
	GL_PIXEL_UNPACK_BUFFER_EXT                               = 0x88EC,
	GL_PN_TRIANGLES_ATI                                      = 0x87F0,
	GL_PN_TRIANGLES_NORMAL_MODE_ATI                          = 0x87F3,
	GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI                   = 0x87F7,
	GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI                = 0x87F8,
	GL_PN_TRIANGLES_POINT_MODE_ATI                           = 0x87F2,
	GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI                     = 0x87F6,
	GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI                    = 0x87F5,
	GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI                    = 0x87F4,
	GL_POINT_DISTANCE_ATTENUATION_ARB                        = 0x8129,
	GL_POINT_FADE_THRESHOLD_SIZE_ARB                         = 0x8128,
	GL_POINT_FADE_THRESHOLD_SIZE_EXT                         = 0x8128,
	GL_POINT_FADE_THRESHOLD_SIZE_SGIS                        = 0x8128,
	GL_POINT_SIZE_MAX_ARB                                    = 0x8127,
	GL_POINT_SIZE_MAX_EXT                                    = 0x8127,
	GL_POINT_SIZE_MAX_SGIS                                   = 0x8127,
	GL_POINT_SIZE_MIN_ARB                                    = 0x8126,
	GL_POINT_SIZE_MIN_EXT                                    = 0x8126,
	GL_POINT_SIZE_MIN_SGIS                                   = 0x8126,
	GL_POINT_SPRITE_ARB                                      = 0x8861,
	GL_POINT_SPRITE_NV                                       = 0x8861,
	GL_POINT_SPRITE_R_MODE_NV                                = 0x8863,
	GL_POLYGON_OFFSET_BIAS_EXT                               = 0x8039,
	GL_POLYGON_OFFSET_EXT                                    = 0x8037,
	GL_POLYGON_OFFSET_FACTOR_EXT                             = 0x8038,
	GL_POST_COLOR_MATRIX_ALPHA_BIAS                          = 0x80BB,
	GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI                      = 0x80BB,
	GL_POST_COLOR_MATRIX_ALPHA_SCALE                         = 0x80B7,
	GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI                     = 0x80B7,
	GL_POST_COLOR_MATRIX_BLUE_BIAS                           = 0x80BA,
	GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI                       = 0x80BA,
	GL_POST_COLOR_MATRIX_BLUE_SCALE                          = 0x80B6,
	GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI                      = 0x80B6,
	GL_POST_COLOR_MATRIX_COLOR_TABLE                         = 0x80D2,
	GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI                     = 0x80D2,
	GL_POST_COLOR_MATRIX_GREEN_BIAS                          = 0x80B9,
	GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI                      = 0x80B9,
	GL_POST_COLOR_MATRIX_GREEN_SCALE                         = 0x80B5,
	GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI                     = 0x80B5,
	GL_POST_COLOR_MATRIX_RED_BIAS                            = 0x80B8,
	GL_POST_COLOR_MATRIX_RED_BIAS_SGI                        = 0x80B8,
	GL_POST_COLOR_MATRIX_RED_SCALE                           = 0x80B4,
	GL_POST_COLOR_MATRIX_RED_SCALE_SGI                       = 0x80B4,
	GL_POST_CONVOLUTION_ALPHA_BIAS                           = 0x8023,
	GL_POST_CONVOLUTION_ALPHA_BIAS_EXT                       = 0x8023,
	GL_POST_CONVOLUTION_ALPHA_SCALE                          = 0x801F,
	GL_POST_CONVOLUTION_ALPHA_SCALE_EXT                      = 0x801F,
	GL_POST_CONVOLUTION_BLUE_BIAS                            = 0x8022,
	GL_POST_CONVOLUTION_BLUE_BIAS_EXT                        = 0x8022,
	GL_POST_CONVOLUTION_BLUE_SCALE                           = 0x801E,
	GL_POST_CONVOLUTION_BLUE_SCALE_EXT                       = 0x801E,
	GL_POST_CONVOLUTION_COLOR_TABLE                          = 0x80D1,
	GL_POST_CONVOLUTION_COLOR_TABLE_SGI                      = 0x80D1,
	GL_POST_CONVOLUTION_GREEN_BIAS                           = 0x8021,
	GL_POST_CONVOLUTION_GREEN_BIAS_EXT                       = 0x8021,
	GL_POST_CONVOLUTION_GREEN_SCALE                          = 0x801D,
	GL_POST_CONVOLUTION_GREEN_SCALE_EXT                      = 0x801D,
	GL_POST_CONVOLUTION_RED_BIAS                             = 0x8020,
	GL_POST_CONVOLUTION_RED_BIAS_EXT                         = 0x8020,
	GL_POST_CONVOLUTION_RED_SCALE                            = 0x801C,
	GL_POST_CONVOLUTION_RED_SCALE_EXT                        = 0x801C,
	GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP                   = 0x8162,
	GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX                   = 0x817B,
	GL_POST_TEXTURE_FILTER_BIAS_SGIX                         = 0x8179,
	GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX                  = 0x817C,
	GL_POST_TEXTURE_FILTER_SCALE_SGIX                        = 0x817A,
	GL_PREFER_DOUBLEBUFFER_HINT_PGI                          = 0x1A1F8,
	GL_PRESENT_DURATION_NV                                   = 0x8E2B,
	GL_PRESENT_TIME_NV                                       = 0x8E2A,
	GL_PRESERVE_ATI                                          = 0x8762,
	GL_PREVIOUS_ARB                                          = 0x8578,
	GL_PREVIOUS_EXT                                          = 0x8578,
	GL_PREVIOUS_TEXTURE_INPUT_NV                             = 0x86E4,
	GL_PRIMARY_COLOR_ARB                                     = 0x8577,
	GL_PRIMARY_COLOR_EXT                                     = 0x8577,
	GL_PRIMARY_COLOR_NV                                      = 0x852C,
	GL_PRIMITIVE_ID_NV                                       = 0x8C7C,
	GL_PRIMITIVE_RESTART_INDEX_NV                            = 0x8559,
	GL_PRIMITIVE_RESTART_NV                                  = 0x8558,
	GL_PRIMITIVES_GENERATED_EXT                              = 0x8C87,
	GL_PRIMITIVES_GENERATED_NV                               = 0x8C87,
	GL_PROGRAM_ADDRESS_REGISTERS_ARB                         = 0x88B0,
	GL_PROGRAM_ALU_INSTRUCTIONS_ARB                          = 0x8805,
	GL_PROGRAM_ATTRIB_COMPONENTS_NV                          = 0x8906,
	GL_PROGRAM_ATTRIBS_ARB                                   = 0x88AC,
	GL_PROGRAM_BINDING_ARB                                   = 0x8677,
	GL_PROGRAM_ERROR_POSITION_ARB                            = 0x864B,
	GL_PROGRAM_ERROR_POSITION_NV                             = 0x864B,
	GL_PROGRAM_ERROR_STRING_ARB                              = 0x8874,
	GL_PROGRAM_ERROR_STRING_NV                               = 0x8874,
	GL_PROGRAM_FORMAT_ARB                                    = 0x8876,
	GL_PROGRAM_FORMAT_ASCII_ARB                              = 0x8875,
	GL_PROGRAM_INSTRUCTIONS_ARB                              = 0x88A0,
	GL_PROGRAM_LENGTH_ARB                                    = 0x8627,
	GL_PROGRAM_LENGTH_NV                                     = 0x8627,
	GL_PROGRAM_MATRIX_EXT                                    = 0x8E2D,
	GL_PROGRAM_MATRIX_STACK_DEPTH_EXT                        = 0x8E2F,
	GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB                  = 0x88B2,
	GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB                   = 0x8808,
	GL_PROGRAM_NATIVE_ATTRIBS_ARB                            = 0x88AE,
	GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB                       = 0x88A2,
	GL_PROGRAM_NATIVE_PARAMETERS_ARB                         = 0x88AA,
	GL_PROGRAM_NATIVE_TEMPORARIES_ARB                        = 0x88A6,
	GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB                   = 0x880A,
	GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB                   = 0x8809,
	GL_PROGRAM_OBJECT_ARB                                    = 0x8B40,
	GL_PROGRAM_PARAMETER_NV                                  = 0x8644,
	GL_PROGRAM_PARAMETERS_ARB                                = 0x88A8,
	GL_PROGRAM_POINT_SIZE_ARB                                = 0x8642,
	GL_PROGRAM_POINT_SIZE_EXT                                = 0x8642,
	GL_PROGRAM_RESIDENT_NV                                   = 0x8647,
	GL_PROGRAM_RESULT_COMPONENTS_NV                          = 0x8907,
	GL_PROGRAM_STRING_ARB                                    = 0x8628,
	GL_PROGRAM_STRING_NV                                     = 0x8628,
	GL_PROGRAM_TARGET_NV                                     = 0x8646,
	GL_PROGRAM_TEMPORARIES_ARB                               = 0x88A4,
	GL_PROGRAM_TEX_INDIRECTIONS_ARB                          = 0x8807,
	GL_PROGRAM_TEX_INSTRUCTIONS_ARB                          = 0x8806,
	GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB                       = 0x88B6,
	GL_PROJECTIVE_2D_NV                                      = 0x9093,
	GL_PROJECTIVE_3D_NV                                      = 0x9095,
	GL_PROVOKING_VERTEX_EXT                                  = 0x8E4F,
	GL_PROXY_COLOR_TABLE                                     = 0x80D3,
	GL_PROXY_COLOR_TABLE_SGI                                 = 0x80D3,
	GL_PROXY_HISTOGRAM                                       = 0x8025,
	GL_PROXY_HISTOGRAM_EXT                                   = 0x8025,
	GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE                   = 0x80D5,
	GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI               = 0x80D5,
	GL_PROXY_POST_CONVOLUTION_COLOR_TABLE                    = 0x80D4,
	GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI                = 0x80D4,
	GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP             = 0x8163,
	GL_PROXY_TEXTURE_1D_ARRAY_EXT                            = 0x8C19,
	GL_PROXY_TEXTURE_1D_EXT                                  = 0x8063,
	GL_PROXY_TEXTURE_1D_STACK_MESAX                          = 0x875B,
	GL_PROXY_TEXTURE_2D_ARRAY_EXT                            = 0x8C1B,
	GL_PROXY_TEXTURE_2D_EXT                                  = 0x8064,
	GL_PROXY_TEXTURE_2D_STACK_MESAX                          = 0x875C,
	GL_PROXY_TEXTURE_3D_EXT                                  = 0x8070,
	GL_PROXY_TEXTURE_4D_SGIS                                 = 0x8135,
	GL_PROXY_TEXTURE_COLOR_TABLE_SGI                         = 0x80BD,
	GL_PROXY_TEXTURE_CUBE_MAP_ARB                            = 0x851B,
	GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB                      = 0x900B,
	GL_PROXY_TEXTURE_CUBE_MAP_EXT                            = 0x851B,
	GL_PROXY_TEXTURE_RECTANGLE_ARB                           = 0x84F7,
	GL_PROXY_TEXTURE_RECTANGLE_NV                            = 0x84F7,
	GL_PURGEABLE_APPLE                                       = 0x8A1D,
	GL_QUAD_ALPHA4_SGIS                                      = 0x811E,
	GL_QUAD_ALPHA8_SGIS                                      = 0x811F,
	GL_QUAD_INTENSITY4_SGIS                                  = 0x8122,
	GL_QUAD_INTENSITY8_SGIS                                  = 0x8123,
	GL_QUAD_LUMINANCE4_SGIS                                  = 0x8120,
	GL_QUAD_LUMINANCE8_SGIS                                  = 0x8121,
	GL_QUAD_MESH_SUN                                         = 0x8614,
	GL_QUAD_TEXTURE_SELECT_SGIS                              = 0x8125,
	GL_QUADRATIC_CURVE_TO_NV                                 = 0x0A,
	GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT          = 0x8E4C,
	GL_QUARTER_BIT_ATI                                       = 0x00000010,
	GL_QUERY_BUFFER_AMD                                      = 0x9192,
	GL_QUERY_BUFFER_BINDING_AMD                              = 0x9193,
	GL_QUERY_BY_REGION_NO_WAIT_NV                            = 0x8E16,
	GL_QUERY_BY_REGION_WAIT_NV                               = 0x8E15,
	GL_QUERY_COUNTER_BITS_ARB                                = 0x8864,
	GL_QUERY_NO_WAIT_NV                                      = 0x8E14,
	GL_QUERY_OBJECT_AMD                                      = 0x9153,
	GL_QUERY_RESULT_ARB                                      = 0x8866,
	GL_QUERY_RESULT_AVAILABLE_ARB                            = 0x8867,
	GL_QUERY_RESULT_NO_WAIT_AMD                              = 0x9194,
	GL_QUERY_WAIT_NV                                         = 0x8E13,
	GL_R11F_G11F_B10F_EXT                                    = 0x8C3A,
	GL_R1UI_C3F_V3F_SUN                                      = 0x85C6,
	GL_R1UI_C4F_N3F_V3F_SUN                                  = 0x85C8,
	GL_R1UI_C4UB_V3F_SUN                                     = 0x85C5,
	GL_R1UI_N3F_V3F_SUN                                      = 0x85C7,
	GL_R1UI_T2F_C4F_N3F_V3F_SUN                              = 0x85CB,
	GL_R1UI_T2F_N3F_V3F_SUN                                  = 0x85CA,
	GL_R1UI_T2F_V3F_SUN                                      = 0x85C9,
	GL_R1UI_V3F_SUN                                          = 0x85C4,
	GL_RASTER_POSITION_UNCLIPPED_IBM                         = 0x19262,
	GL_RASTERIZER_DISCARD_EXT                                = 0x8C89,
	GL_RASTERIZER_DISCARD_NV                                 = 0x8C89,
	GL_READ_FRAMEBUFFER_BINDING_EXT                          = 0x8CAA,
	GL_READ_FRAMEBUFFER_EXT                                  = 0x8CA8,
	GL_READ_ONLY_ARB                                         = 0x88B8,
	GL_READ_PIXEL_DATA_RANGE_LENGTH_NV                       = 0x887B,
	GL_READ_PIXEL_DATA_RANGE_NV                              = 0x8879,
	GL_READ_PIXEL_DATA_RANGE_POINTER_NV                      = 0x887D,
	GL_READ_WRITE_ARB                                        = 0x88BA,
	GL_RECLAIM_MEMORY_HINT_PGI                               = 0x1A1FE,
	GL_RECT_NV                                               = 0xF6,
	GL_RED_BIT_ATI                                           = 0x00000001,
	GL_RED_INTEGER_EXT                                       = 0x8D94,
	GL_RED_MAX_CLAMP_INGR                                    = 0x8564,
	GL_RED_MIN_CLAMP_INGR                                    = 0x8560,
	GL_REDUCE                                                = 0x8016,
	GL_REDUCE_EXT                                            = 0x8016,
	GL_REFERENCE_PLANE_EQUATION_SGIX                         = 0x817E,
	GL_REFERENCE_PLANE_SGIX                                  = 0x817D,
	GL_REFLECTION_MAP_ARB                                    = 0x8512,
	GL_REFLECTION_MAP_EXT                                    = 0x8512,
	GL_REFLECTION_MAP_NV                                     = 0x8512,
	GL_REG_0_ATI                                             = 0x8921,
	GL_REG_1_ATI                                             = 0x8922,
	GL_REG_10_ATI                                            = 0x892B,
	GL_REG_11_ATI                                            = 0x892C,
	GL_REG_12_ATI                                            = 0x892D,
	GL_REG_13_ATI                                            = 0x892E,
	GL_REG_14_ATI                                            = 0x892F,
	GL_REG_15_ATI                                            = 0x8930,
	GL_REG_16_ATI                                            = 0x8931,
	GL_REG_17_ATI                                            = 0x8932,
	GL_REG_18_ATI                                            = 0x8933,
	GL_REG_19_ATI                                            = 0x8934,
	GL_REG_2_ATI                                             = 0x8923,
	GL_REG_20_ATI                                            = 0x8935,
	GL_REG_21_ATI                                            = 0x8936,
	GL_REG_22_ATI                                            = 0x8937,
	GL_REG_23_ATI                                            = 0x8938,
	GL_REG_24_ATI                                            = 0x8939,
	GL_REG_25_ATI                                            = 0x893A,
	GL_REG_26_ATI                                            = 0x893B,
	GL_REG_27_ATI                                            = 0x893C,
	GL_REG_28_ATI                                            = 0x893D,
	GL_REG_29_ATI                                            = 0x893E,
	GL_REG_3_ATI                                             = 0x8924,
	GL_REG_30_ATI                                            = 0x893F,
	GL_REG_31_ATI                                            = 0x8940,
	GL_REG_4_ATI                                             = 0x8925,
	GL_REG_5_ATI                                             = 0x8926,
	GL_REG_6_ATI                                             = 0x8927,
	GL_REG_7_ATI                                             = 0x8928,
	GL_REG_8_ATI                                             = 0x8929,
	GL_REG_9_ATI                                             = 0x892A,
	GL_REGISTER_COMBINERS_NV                                 = 0x8522,
	GL_RELATIVE_ARC_TO_NV                                    = 0xFF,
	GL_RELATIVE_CUBIC_CURVE_TO_NV                            = 0x0D,
	GL_RELATIVE_HORIZONTAL_LINE_TO_NV                        = 0x07,
	GL_RELATIVE_LARGE_CCW_ARC_TO_NV                          = 0x17,
	GL_RELATIVE_LARGE_CW_ARC_TO_NV                           = 0x19,
	GL_RELATIVE_LINE_TO_NV                                   = 0x05,
	GL_RELATIVE_MOVE_TO_NV                                   = 0x03,
	GL_RELATIVE_QUADRATIC_CURVE_TO_NV                        = 0x0B,
	GL_RELATIVE_SMALL_CCW_ARC_TO_NV                          = 0x13,
	GL_RELATIVE_SMALL_CW_ARC_TO_NV                           = 0x15,
	GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV                     = 0x11,
	GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV                 = 0x0F,
	GL_RELATIVE_VERTICAL_LINE_TO_NV                          = 0x09,
	GL_RELEASED_APPLE                                        = 0x8A19,
	GL_RENDERBUFFER_ALPHA_SIZE_EXT                           = 0x8D53,
	GL_RENDERBUFFER_BINDING_EXT                              = 0x8CA7,
	GL_RENDERBUFFER_BLUE_SIZE_EXT                            = 0x8D52,
	GL_RENDERBUFFER_COLOR_SAMPLES_NV                         = 0x8E10,
	GL_RENDERBUFFER_COVERAGE_SAMPLES_NV                      = 0x8CAB,
	GL_RENDERBUFFER_DEPTH_SIZE_EXT                           = 0x8D54,
	GL_RENDERBUFFER_EXT                                      = 0x8D41,
	GL_RENDERBUFFER_FREE_MEMORY_ATI                          = 0x87FD,
	GL_RENDERBUFFER_GREEN_SIZE_EXT                           = 0x8D51,
	GL_RENDERBUFFER_HEIGHT_EXT                               = 0x8D43,
	GL_RENDERBUFFER_INTERNAL_FORMAT_EXT                      = 0x8D44,
	GL_RENDERBUFFER_RED_SIZE_EXT                             = 0x8D50,
	GL_RENDERBUFFER_SAMPLES_EXT                              = 0x8CAB,
	GL_RENDERBUFFER_STENCIL_SIZE_EXT                         = 0x8D55,
	GL_RENDERBUFFER_WIDTH_EXT                                = 0x8D42,
	GL_REPLACE_EXT                                           = 0x8062,
	GL_REPLACE_MIDDLE_SUN                                    = 0x0002,
	GL_REPLACE_OLDEST_SUN                                    = 0x0003,
	GL_REPLACE_VALUE_AMD                                     = 0x874B,
	GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN                    = 0x85C3,
	GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN                     = 0x85C2,
	GL_REPLACEMENT_CODE_ARRAY_SUN                            = 0x85C0,
	GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN                       = 0x85C1,
	GL_REPLACEMENT_CODE_SUN                                  = 0x81D8,
	GL_REPLICATE_BORDER                                      = 0x8153,
	GL_REPLICATE_BORDER_HP                                   = 0x8153,
	GL_RESAMPLE_AVERAGE_OML                                  = 0x8988,
	GL_RESAMPLE_DECIMATE_OML                                 = 0x8989,
	GL_RESAMPLE_DECIMATE_SGIX                                = 0x8430,
	GL_RESAMPLE_REPLICATE_OML                                = 0x8986,
	GL_RESAMPLE_REPLICATE_SGIX                               = 0x842E,
	GL_RESAMPLE_ZERO_FILL_OML                                = 0x8987,
	GL_RESAMPLE_ZERO_FILL_SGIX                               = 0x842F,
	GL_RESCALE_NORMAL_EXT                                    = 0x803A,
	GL_RESET_NOTIFICATION_STRATEGY_ARB                       = 0x8256,
	GL_RESTART_PATH_NV                                       = 0xF0,
	GL_RESTART_SUN                                           = 0x0001,
	GL_RETAINED_APPLE                                        = 0x8A1B,
	GL_RGB_422_APPLE                                         = 0x8A1F,
	GL_RGB_FLOAT16_APPLE                                     = 0x881B,
	GL_RGB_FLOAT16_ATI                                       = 0x881B,
	GL_RGB_FLOAT32_APPLE                                     = 0x8815,
	GL_RGB_FLOAT32_ATI                                       = 0x8815,
	GL_RGB_INTEGER_EXT                                       = 0x8D98,
	GL_RGB_S3TC                                              = 0x83A0,
	GL_RGB_SCALE_ARB                                         = 0x8573,
	GL_RGB_SCALE_EXT                                         = 0x8573,
	GL_RGB10_A2_EXT                                          = 0x8059,
	GL_RGB10_EXT                                             = 0x8052,
	GL_RGB12_EXT                                             = 0x8053,
	GL_RGB16_EXT                                             = 0x8054,
	GL_RGB16F_ARB                                            = 0x881B,
	GL_RGB16I_EXT                                            = 0x8D89,
	GL_RGB16UI_EXT                                           = 0x8D77,
	GL_RGB2_EXT                                              = 0x804E,
	GL_RGB32F_ARB                                            = 0x8815,
	GL_RGB32I_EXT                                            = 0x8D83,
	GL_RGB32UI_EXT                                           = 0x8D71,
	GL_RGB4_EXT                                              = 0x804F,
	GL_RGB4_S3TC                                             = 0x83A1,
	GL_RGB5_A1_EXT                                           = 0x8057,
	GL_RGB5_EXT                                              = 0x8050,
	GL_RGB8_EXT                                              = 0x8051,
	GL_RGB8I_EXT                                             = 0x8D8F,
	GL_RGB8UI_EXT                                            = 0x8D7D,
	GL_RGB9_E5_EXT                                           = 0x8C3D,
	GL_RGBA_DXT5_S3TC                                        = 0x83A4,
	GL_RGBA_FLOAT_MODE_ARB                                   = 0x8820,
	GL_RGBA_FLOAT_MODE_ATI                                   = 0x8820,
	GL_RGBA_FLOAT16_APPLE                                    = 0x881A,
	GL_RGBA_FLOAT16_ATI                                      = 0x881A,
	GL_RGBA_FLOAT32_APPLE                                    = 0x8814,
	GL_RGBA_FLOAT32_ATI                                      = 0x8814,
	GL_RGBA_INTEGER_EXT                                      = 0x8D99,
	GL_RGBA_INTEGER_MODE_EXT                                 = 0x8D9E,
	GL_RGBA_S3TC                                             = 0x83A2,
	GL_RGBA_SIGNED_COMPONENTS_EXT                            = 0x8C3C,
	GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV                  = 0x86D9,
	GL_RGBA12_EXT                                            = 0x805A,
	GL_RGBA16_EXT                                            = 0x805B,
	GL_RGBA16F_ARB                                           = 0x881A,
	GL_RGBA16I_EXT                                           = 0x8D88,
	GL_RGBA16UI_EXT                                          = 0x8D76,
	GL_RGBA2_EXT                                             = 0x8055,
	GL_RGBA32F_ARB                                           = 0x8814,
	GL_RGBA32I_EXT                                           = 0x8D82,
	GL_RGBA32UI_EXT                                          = 0x8D70,
	GL_RGBA4_DXT5_S3TC                                       = 0x83A5,
	GL_RGBA4_EXT                                             = 0x8056,
	GL_RGBA4_S3TC                                            = 0x83A3,
	GL_RGBA8_EXT                                             = 0x8058,
	GL_RGBA8I_EXT                                            = 0x8D8E,
	GL_RGBA8UI_EXT                                           = 0x8D7C,
	GL_ROUND_NV                                              = 0x90A4,
	GL_SAMPLE_ALPHA_TO_COVERAGE_ARB                          = 0x809E,
	GL_SAMPLE_ALPHA_TO_MASK_EXT                              = 0x809E,
	GL_SAMPLE_ALPHA_TO_MASK_SGIS                             = 0x809E,
	GL_SAMPLE_ALPHA_TO_ONE_ARB                               = 0x809F,
	GL_SAMPLE_ALPHA_TO_ONE_EXT                               = 0x809F,
	GL_SAMPLE_ALPHA_TO_ONE_SGIS                              = 0x809F,
	GL_SAMPLE_BUFFERS_3DFX                                   = 0x86B3,
	GL_SAMPLE_BUFFERS_ARB                                    = 0x80A8,
	GL_SAMPLE_BUFFERS_EXT                                    = 0x80A8,
	GL_SAMPLE_BUFFERS_SGIS                                   = 0x80A8,
	GL_SAMPLE_COVERAGE_ARB                                   = 0x80A0,
	GL_SAMPLE_COVERAGE_INVERT_ARB                            = 0x80AB,
	GL_SAMPLE_COVERAGE_VALUE_ARB                             = 0x80AA,
	GL_SAMPLE_MASK_EXT                                       = 0x80A0,
	GL_SAMPLE_MASK_INVERT_EXT                                = 0x80AB,
	GL_SAMPLE_MASK_INVERT_SGIS                               = 0x80AB,
	GL_SAMPLE_MASK_NV                                        = 0x8E51,
	GL_SAMPLE_MASK_SGIS                                      = 0x80A0,
	GL_SAMPLE_MASK_VALUE_EXT                                 = 0x80AA,
	GL_SAMPLE_MASK_VALUE_NV                                  = 0x8E52,
	GL_SAMPLE_MASK_VALUE_SGIS                                = 0x80AA,
	GL_SAMPLE_PATTERN_EXT                                    = 0x80AC,
	GL_SAMPLE_PATTERN_SGIS                                   = 0x80AC,
	GL_SAMPLE_POSITION_NV                                    = 0x8E50,
	GL_SAMPLE_SHADING_ARB                                    = 0x8C36,
	GL_SAMPLER_1D_ARB                                        = 0x8B5D,
	GL_SAMPLER_1D_ARRAY_EXT                                  = 0x8DC0,
	GL_SAMPLER_1D_ARRAY_SHADOW_EXT                           = 0x8DC3,
	GL_SAMPLER_1D_SHADOW_ARB                                 = 0x8B61,
	GL_SAMPLER_2D_ARB                                        = 0x8B5E,
	GL_SAMPLER_2D_ARRAY_EXT                                  = 0x8DC1,
	GL_SAMPLER_2D_ARRAY_SHADOW_EXT                           = 0x8DC4,
	GL_SAMPLER_2D_RECT_ARB                                   = 0x8B63,
	GL_SAMPLER_2D_RECT_SHADOW_ARB                            = 0x8B64,
	GL_SAMPLER_2D_SHADOW_ARB                                 = 0x8B62,
	GL_SAMPLER_3D_ARB                                        = 0x8B5F,
	GL_SAMPLER_BUFFER_AMD                                    = 0x9001,
	GL_SAMPLER_BUFFER_EXT                                    = 0x8DC2,
	GL_SAMPLER_CUBE_ARB                                      = 0x8B60,
	GL_SAMPLER_CUBE_MAP_ARRAY_ARB                            = 0x900C,
	GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB                     = 0x900D,
	GL_SAMPLER_CUBE_SHADOW_EXT                               = 0x8DC5,
	GL_SAMPLER_OBJECT_AMD                                    = 0x9155,
	GL_SAMPLER_RENDERBUFFER_NV                               = 0x8E56,
	GL_SAMPLES_3DFX                                          = 0x86B4,
	GL_SAMPLES_ARB                                           = 0x80A9,
	GL_SAMPLES_EXT                                           = 0x80A9,
	GL_SAMPLES_PASSED_ARB                                    = 0x8914,
	GL_SAMPLES_SGIS                                          = 0x80A9,
	GL_SATURATE_BIT_ATI                                      = 0x00000040,
	GL_SCALAR_EXT                                            = 0x87BE,
	GL_SCALE_BY_FOUR_NV                                      = 0x853F,
	GL_SCALE_BY_ONE_HALF_NV                                  = 0x8540,
	GL_SCALE_BY_TWO_NV                                       = 0x853E,
	GL_SCALEBIAS_HINT_SGIX                                   = 0x8322,
	GL_SCALED_RESOLVE_FASTEST_EXT                            = 0x90BA,
	GL_SCALED_RESOLVE_NICEST_EXT                             = 0x90BB,
	GL_SCREEN_COORDINATES_REND                               = 0x8490,
	GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV                      = 0x8F27,
	GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB              = 0x889C,
	GL_SECONDARY_COLOR_ARRAY_EXT                             = 0x845E,
	GL_SECONDARY_COLOR_ARRAY_LENGTH_NV                       = 0x8F31,
	GL_SECONDARY_COLOR_ARRAY_LIST_IBM                        = 103077,
	GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM                 = 103087,
	GL_SECONDARY_COLOR_ARRAY_POINTER_EXT                     = 0x845D,
	GL_SECONDARY_COLOR_ARRAY_SIZE_EXT                        = 0x845A,
	GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT                      = 0x845C,
	GL_SECONDARY_COLOR_ARRAY_TYPE_EXT                        = 0x845B,
	GL_SECONDARY_COLOR_NV                                    = 0x852D,
	GL_SECONDARY_INTERPOLATOR_ATI                            = 0x896D,
	GL_SEPARABLE_2D                                          = 0x8012,
	GL_SEPARABLE_2D_EXT                                      = 0x8012,
	GL_SEPARATE_ATTRIBS_EXT                                  = 0x8C8D,
	GL_SEPARATE_ATTRIBS_NV                                   = 0x8C8D,
	GL_SEPARATE_SPECULAR_COLOR_EXT                           = 0x81FA,
	GL_SET_AMD                                               = 0x874A,
	GL_SHADER_CONSISTENT_NV                                  = 0x86DD,
	GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV                   = 0x00000010,
	GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT                   = 0x00000020,
	GL_SHADER_INCLUDE_ARB                                    = 0x8DAE,
	GL_SHADER_OBJECT_ARB                                     = 0x8B48,
	GL_SHADER_OPERATION_NV                                   = 0x86DF,
	GL_SHADING_LANGUAGE_VERSION_ARB                          = 0x8B8C,
	GL_SHADOW_AMBIENT_SGIX                                   = 0x80BF,
	GL_SHADOW_ATTENUATION_EXT                                = 0x834E,
	GL_SHARED_TEXTURE_PALETTE_EXT                            = 0x81FB,
	GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS                      = 0x80B0,
	GL_SIGNED_ALPHA_NV                                       = 0x8705,
	GL_SIGNED_ALPHA8_NV                                      = 0x8706,
	GL_SIGNED_HILO_NV                                        = 0x86F9,
	GL_SIGNED_HILO16_NV                                      = 0x86FA,
	GL_SIGNED_HILO8_NV                                       = 0x885F,
	GL_SIGNED_IDENTITY_NV                                    = 0x853C,
	GL_SIGNED_INTENSITY_NV                                   = 0x8707,
	GL_SIGNED_INTENSITY8_NV                                  = 0x8708,
	GL_SIGNED_LUMINANCE_ALPHA_NV                             = 0x8703,
	GL_SIGNED_LUMINANCE_NV                                   = 0x8701,
	GL_SIGNED_LUMINANCE8_ALPHA8_NV                           = 0x8704,
	GL_SIGNED_LUMINANCE8_NV                                  = 0x8702,
	GL_SIGNED_NEGATE_NV                                      = 0x853D,
	GL_SIGNED_RGB_NV                                         = 0x86FE,
	GL_SIGNED_RGB_UNSIGNED_ALPHA_NV                          = 0x870C,
	GL_SIGNED_RGB8_NV                                        = 0x86FF,
	GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV                        = 0x870D,
	GL_SIGNED_RGBA_NV                                        = 0x86FB,
	GL_SIGNED_RGBA8_NV                                       = 0x86FC,
	GL_SINGLE_COLOR_EXT                                      = 0x81F9,
	GL_SKIP_DECODE_EXT                                       = 0x8A4A,
	GL_SKIP_MISSING_GLYPH_NV                                 = 0x90A9,
	GL_SLICE_ACCUM_SUN                                       = 0x85CC,
	GL_SLUMINANCE_ALPHA_EXT                                  = 0x8C44,
	GL_SLUMINANCE_EXT                                        = 0x8C46,
	GL_SLUMINANCE8_ALPHA8_EXT                                = 0x8C45,
	GL_SLUMINANCE8_EXT                                       = 0x8C47,
	GL_SMALL_CCW_ARC_TO_NV                                   = 0x12,
	GL_SMALL_CW_ARC_TO_NV                                    = 0x14,
	GL_SMOOTH_CUBIC_CURVE_TO_NV                              = 0x10,
	GL_SMOOTH_QUADRATIC_CURVE_TO_NV                          = 0x0E,
	GL_SOURCE0_ALPHA_ARB                                     = 0x8588,
	GL_SOURCE0_ALPHA_EXT                                     = 0x8588,
	GL_SOURCE0_RGB_ARB                                       = 0x8580,
	GL_SOURCE0_RGB_EXT                                       = 0x8580,
	GL_SOURCE1_ALPHA_ARB                                     = 0x8589,
	GL_SOURCE1_ALPHA_EXT                                     = 0x8589,
	GL_SOURCE1_RGB_ARB                                       = 0x8581,
	GL_SOURCE1_RGB_EXT                                       = 0x8581,
	GL_SOURCE2_ALPHA_ARB                                     = 0x858A,
	GL_SOURCE2_ALPHA_EXT                                     = 0x858A,
	GL_SOURCE2_RGB_ARB                                       = 0x8582,
	GL_SOURCE2_RGB_EXT                                       = 0x8582,
	GL_SOURCE3_ALPHA_NV                                      = 0x858B,
	GL_SOURCE3_RGB_NV                                        = 0x8583,
	GL_SPARE0_NV                                             = 0x852E,
	GL_SPARE0_PLUS_SECONDARY_COLOR_NV                        = 0x8532,
	GL_SPARE1_NV                                             = 0x852F,
	GL_SPRITE_AXIAL_SGIX                                     = 0x814C,
	GL_SPRITE_AXIS_SGIX                                      = 0x814A,
	GL_SPRITE_EYE_ALIGNED_SGIX                               = 0x814E,
	GL_SPRITE_MODE_SGIX                                      = 0x8149,
	GL_SPRITE_OBJECT_ALIGNED_SGIX                            = 0x814D,
	GL_SPRITE_SGIX                                           = 0x8148,
	GL_SPRITE_TRANSLATION_SGIX                               = 0x814B,
	GL_SQUARE_NV                                             = 0x90A3,
	GL_SRGB_ALPHA_EXT                                        = 0x8C42,
	GL_SRGB_DECODE_ARB                                       = 0x8299,
	GL_SRGB_EXT                                              = 0x8C40,
	GL_SRGB8_ALPHA8_EXT                                      = 0x8C43,
	GL_SRGB8_EXT                                             = 0x8C41,
	GL_STANDARD_FONT_NAME_NV                                 = 0x9072,
	GL_STATIC_ATI                                            = 0x8760,
	GL_STATIC_COPY_ARB                                       = 0x88E6,
	GL_STATIC_DRAW_ARB                                       = 0x88E4,
	GL_STATIC_READ_ARB                                       = 0x88E5,
	GL_STENCIL_ATTACHMENT_EXT                                = 0x8D20,
	GL_STENCIL_BACK_FAIL_ATI                                 = 0x8801,
	GL_STENCIL_BACK_FUNC_ATI                                 = 0x8800,
	GL_STENCIL_BACK_OP_VALUE_AMD                             = 0x874D,
	GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI                      = 0x8802,
	GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI                      = 0x8803,
	GL_STENCIL_CLEAR_TAG_VALUE_EXT                           = 0x88F3,
	GL_STENCIL_INDEX1_EXT                                    = 0x8D46,
	GL_STENCIL_INDEX16_EXT                                   = 0x8D49,
	GL_STENCIL_INDEX4_EXT                                    = 0x8D47,
	GL_STENCIL_INDEX8_EXT                                    = 0x8D48,
	GL_STENCIL_OP_VALUE_AMD                                  = 0x874C,
	GL_STENCIL_TAG_BITS_EXT                                  = 0x88F2,
	GL_STENCIL_TEST_TWO_SIDE_EXT                             = 0x8910,
	GL_STORAGE_CACHED_APPLE                                  = 0x85BE,
	GL_STORAGE_CLIENT_APPLE                                  = 0x85B4,
	GL_STORAGE_PRIVATE_APPLE                                 = 0x85BD,
	GL_STORAGE_SHARED_APPLE                                  = 0x85BF,
	GL_STREAM_COPY_ARB                                       = 0x88E2,
	GL_STREAM_DRAW_ARB                                       = 0x88E0,
	GL_STREAM_READ_ARB                                       = 0x88E1,
	GL_STRICT_DEPTHFUNC_HINT_PGI                             = 0x1A216,
	GL_STRICT_LIGHTING_HINT_PGI                              = 0x1A217,
	GL_STRICT_SCISSOR_HINT_PGI                               = 0x1A218,
	GL_SUB_ATI                                               = 0x8965,
	GL_SUBSAMPLE_DISTANCE_AMD                                = 0x883F,
	GL_SUBTRACT_ARB                                          = 0x84E7,
	GL_SUCCESS_NV                                            = 0x902F,
	GL_SURFACE_MAPPED_NV                                     = 0x8700,
	GL_SURFACE_REGISTERED_NV                                 = 0x86FD,
	GL_SURFACE_STATE_NV                                      = 0x86EB,
	GL_SWIZZLE_STQ_ATI                                       = 0x8977,
	GL_SWIZZLE_STQ_DQ_ATI                                    = 0x8979,
	GL_SWIZZLE_STR_ATI                                       = 0x8976,
	GL_SWIZZLE_STR_DR_ATI                                    = 0x8978,
	GL_SWIZZLE_STRQ_ATI                                      = 0x897A,
	GL_SWIZZLE_STRQ_DQ_ATI                                   = 0x897B,
	GL_SYNC_CL_EVENT_ARB                                     = 0x8240,
	GL_SYNC_CL_EVENT_COMPLETE_ARB                            = 0x8241,
	GL_SYNC_X11_FENCE_EXT                                    = 0x90E1,
	GL_SYSTEM_FONT_NAME_NV                                   = 0x9073,
	GL_T2F_IUI_N3F_V2F_EXT                                   = 0x81B3,
	GL_T2F_IUI_N3F_V3F_EXT                                   = 0x81B4,
	GL_T2F_IUI_V2F_EXT                                       = 0x81B1,
	GL_T2F_IUI_V3F_EXT                                       = 0x81B2,
	GL_TABLE_TOO_LARGE                                       = 0x8031,
	GL_TABLE_TOO_LARGE_EXT                                   = 0x8031,
	GL_TANGENT_ARRAY_EXT                                     = 0x8439,
	GL_TANGENT_ARRAY_POINTER_EXT                             = 0x8442,
	GL_TANGENT_ARRAY_STRIDE_EXT                              = 0x843F,
	GL_TANGENT_ARRAY_TYPE_EXT                                = 0x843E,
	GL_TESS_CONTROL_PROGRAM_NV                               = 0x891E,
	GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV              = 0x8C74,
	GL_TESS_EVALUATION_PROGRAM_NV                            = 0x891F,
	GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV           = 0x8C75,
	GL_TESSELLATION_FACTOR_AMD                               = 0x9005,
	GL_TESSELLATION_MODE_AMD                                 = 0x9004,
	GL_TEXCOORD1_BIT_PGI                                     = 0x10000000,
	GL_TEXCOORD2_BIT_PGI                                     = 0x20000000,
	GL_TEXCOORD3_BIT_PGI                                     = 0x40000000,
	GL_TEXCOORD4_BIT_PGI                                     = 0x80000000,
	GL_TEXT_FRAGMENT_SHADER_ATI                              = 0x8200,
	GL_TEXTURE_1D_ARRAY_EXT                                  = 0x8C18,
	GL_TEXTURE_1D_BINDING_EXT                                = 0x8068,
	GL_TEXTURE_1D_STACK_BINDING_MESAX                        = 0x875D,
	GL_TEXTURE_1D_STACK_MESAX                                = 0x8759,
	GL_TEXTURE_2D_ARRAY_EXT                                  = 0x8C1A,
	GL_TEXTURE_2D_BINDING_EXT                                = 0x8069,
	GL_TEXTURE_2D_STACK_BINDING_MESAX                        = 0x875E,
	GL_TEXTURE_2D_STACK_MESAX                                = 0x875A,
	GL_TEXTURE_3D_BINDING_EXT                                = 0x806A,
	GL_TEXTURE_3D_EXT                                        = 0x806F,
	GL_TEXTURE_4D_BINDING_SGIS                               = 0x814F,
	GL_TEXTURE_4D_SGIS                                       = 0x8134,
	GL_TEXTURE_4DSIZE_SGIS                                   = 0x8136,
	GL_TEXTURE_ALPHA_SIZE_EXT                                = 0x805F,
	GL_TEXTURE_ALPHA_TYPE_ARB                                = 0x8C13,
	GL_TEXTURE_APPLICATION_MODE_EXT                          = 0x834F,
	GL_TEXTURE_BASE_LEVEL_SGIS                               = 0x813C,
	GL_TEXTURE_BINDING_1D_ARRAY_EXT                          = 0x8C1C,
	GL_TEXTURE_BINDING_2D_ARRAY_EXT                          = 0x8C1D,
	GL_TEXTURE_BINDING_BUFFER_ARB                            = 0x8C2C,
	GL_TEXTURE_BINDING_BUFFER_EXT                            = 0x8C2C,
	GL_TEXTURE_BINDING_CUBE_MAP_ARB                          = 0x8514,
	GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB                    = 0x900A,
	GL_TEXTURE_BINDING_CUBE_MAP_EXT                          = 0x8514,
	GL_TEXTURE_BINDING_RECTANGLE_ARB                         = 0x84F6,
	GL_TEXTURE_BINDING_RECTANGLE_NV                          = 0x84F6,
	GL_TEXTURE_BINDING_RENDERBUFFER_NV                       = 0x8E53,
	GL_TEXTURE_BLUE_SIZE_EXT                                 = 0x805E,
	GL_TEXTURE_BLUE_TYPE_ARB                                 = 0x8C12,
	GL_TEXTURE_BORDER_VALUES_NV                              = 0x871A,
	GL_TEXTURE_BUFFER_ARB                                    = 0x8C2A,
	GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB                 = 0x8C2D,
	GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT                 = 0x8C2D,
	GL_TEXTURE_BUFFER_EXT                                    = 0x8C2A,
	GL_TEXTURE_BUFFER_FORMAT_ARB                             = 0x8C2E,
	GL_TEXTURE_BUFFER_FORMAT_EXT                             = 0x8C2E,
	GL_TEXTURE_CLIPMAP_CENTER_SGIX                           = 0x8171,
	GL_TEXTURE_CLIPMAP_DEPTH_SGIX                            = 0x8176,
	GL_TEXTURE_CLIPMAP_FRAME_SGIX                            = 0x8172,
	GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX                       = 0x8175,
	GL_TEXTURE_CLIPMAP_OFFSET_SGIX                           = 0x8173,
	GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX                    = 0x8174,
	GL_TEXTURE_COLOR_SAMPLES_NV                              = 0x9046,
	GL_TEXTURE_COLOR_TABLE_SGI                               = 0x80BC,
	GL_TEXTURE_COLOR_WRITEMASK_SGIS                          = 0x81EF,
	GL_TEXTURE_COMPARE_FAIL_VALUE_ARB                        = 0x80BF,
	GL_TEXTURE_COMPARE_FUNC_ARB                              = 0x884D,
	GL_TEXTURE_COMPARE_MODE_ARB                              = 0x884C,
	GL_TEXTURE_COMPARE_OPERATOR_SGIX                         = 0x819B,
	GL_TEXTURE_COMPARE_SGIX                                  = 0x819A,
	GL_TEXTURE_COMPRESSED_ARB                                = 0x86A1,
	GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB                     = 0x86A0,
	GL_TEXTURE_COMPRESSION_HINT_ARB                          = 0x84EF,
	GL_TEXTURE_CONSTANT_DATA_SUNX                            = 0x81D6,
	GL_TEXTURE_COORD_ARRAY_ADDRESS_NV                        = 0x8F25,
	GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB                = 0x889A,
	GL_TEXTURE_COORD_ARRAY_COUNT_EXT                         = 0x808B,
	GL_TEXTURE_COORD_ARRAY_EXT                               = 0x8078,
	GL_TEXTURE_COORD_ARRAY_LENGTH_NV                         = 0x8F2F,
	GL_TEXTURE_COORD_ARRAY_LIST_IBM                          = 103074,
	GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM                   = 103084,
	GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL           = 0x83F8,
	GL_TEXTURE_COORD_ARRAY_POINTER_EXT                       = 0x8092,
	GL_TEXTURE_COORD_ARRAY_SIZE_EXT                          = 0x8088,
	GL_TEXTURE_COORD_ARRAY_STRIDE_EXT                        = 0x808A,
	GL_TEXTURE_COORD_ARRAY_TYPE_EXT                          = 0x8089,
	GL_TEXTURE_COORD_NV                                      = 0x8C79,
	GL_TEXTURE_COVERAGE_SAMPLES_NV                           = 0x9045,
	GL_TEXTURE_CUBE_MAP_ARB                                  = 0x8513,
	GL_TEXTURE_CUBE_MAP_ARRAY_ARB                            = 0x9009,
	GL_TEXTURE_CUBE_MAP_EXT                                  = 0x8513,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB                       = 0x8516,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT                       = 0x8516,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB                       = 0x8518,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT                       = 0x8518,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB                       = 0x851A,
	GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT                       = 0x851A,
	GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB                       = 0x8515,
	GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT                       = 0x8515,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB                       = 0x8517,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT                       = 0x8517,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB                       = 0x8519,
	GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT                       = 0x8519,
	GL_TEXTURE_DEFORMATION_BIT_SGIX                          = 0x00000001,
	GL_TEXTURE_DEFORMATION_SGIX                              = 0x8195,
	GL_TEXTURE_DEPTH_EXT                                     = 0x8071,
	GL_TEXTURE_DEPTH_SIZE_ARB                                = 0x884A,
	GL_TEXTURE_DEPTH_TYPE_ARB                                = 0x8C16,
	GL_TEXTURE_DS_SIZE_NV                                    = 0x871D,
	GL_TEXTURE_DT_SIZE_NV                                    = 0x871E,
	GL_TEXTURE_ENV_BIAS_SGIX                                 = 0x80BE,
	GL_TEXTURE_FETCH_BARRIER_BIT_EXT                         = 0x00000008,
	GL_TEXTURE_FILTER_CONTROL_EXT                            = 0x8500,
	GL_TEXTURE_FILTER4_SIZE_SGIS                             = 0x8147,
	GL_TEXTURE_FLOAT_COMPONENTS_NV                           = 0x888C,
	GL_TEXTURE_FREE_MEMORY_ATI                               = 0x87FC,
	GL_TEXTURE_GEQUAL_R_SGIX                                 = 0x819D,
	GL_TEXTURE_GREEN_SIZE_EXT                                = 0x805D,
	GL_TEXTURE_GREEN_TYPE_ARB                                = 0x8C11,
	GL_TEXTURE_HI_SIZE_NV                                    = 0x871B,
	GL_TEXTURE_INDEX_SIZE_EXT                                = 0x80ED,
	GL_TEXTURE_INTENSITY_SIZE_EXT                            = 0x8061,
	GL_TEXTURE_INTENSITY_TYPE_ARB                            = 0x8C15,
	GL_TEXTURE_LEQUAL_R_SGIX                                 = 0x819C,
	GL_TEXTURE_LIGHT_EXT                                     = 0x8350,
	GL_TEXTURE_LIGHTING_MODE_HP                              = 0x8167,
	GL_TEXTURE_LO_SIZE_NV                                    = 0x871C,
	GL_TEXTURE_LOD_BIAS_EXT                                  = 0x8501,
	GL_TEXTURE_LOD_BIAS_R_SGIX                               = 0x8190,
	GL_TEXTURE_LOD_BIAS_S_SGIX                               = 0x818E,
	GL_TEXTURE_LOD_BIAS_T_SGIX                               = 0x818F,
	GL_TEXTURE_LUMINANCE_SIZE_EXT                            = 0x8060,
	GL_TEXTURE_LUMINANCE_TYPE_ARB                            = 0x8C14,
	GL_TEXTURE_MAG_SIZE_NV                                   = 0x871F,
	GL_TEXTURE_MATERIAL_FACE_EXT                             = 0x8351,
	GL_TEXTURE_MATERIAL_PARAMETER_EXT                        = 0x8352,
	GL_TEXTURE_MAX_ANISOTROPY_EXT                            = 0x84FE,
	GL_TEXTURE_MAX_CLAMP_R_SGIX                              = 0x836B,
	GL_TEXTURE_MAX_CLAMP_S_SGIX                              = 0x8369,
	GL_TEXTURE_MAX_CLAMP_T_SGIX                              = 0x836A,
	GL_TEXTURE_MAX_LEVEL_SGIS                                = 0x813D,
	GL_TEXTURE_MAX_LOD_SGIS                                  = 0x813B,
	GL_TEXTURE_MIN_LOD_SGIS                                  = 0x813A,
	GL_TEXTURE_MULTI_BUFFER_HINT_SGIX                        = 0x812E,
	GL_TEXTURE_NORMAL_EXT                                    = 0x85AF,
	GL_TEXTURE_POST_SPECULAR_HP                              = 0x8168,
	GL_TEXTURE_PRE_SPECULAR_HP                               = 0x8169,
	GL_TEXTURE_PRIORITY_EXT                                  = 0x8066,
	GL_TEXTURE_RANGE_LENGTH_APPLE                            = 0x85B7,
	GL_TEXTURE_RANGE_POINTER_APPLE                           = 0x85B8,
	GL_TEXTURE_RECTANGLE_ARB                                 = 0x84F5,
	GL_TEXTURE_RECTANGLE_NV                                  = 0x84F5,
	GL_TEXTURE_RED_SIZE_EXT                                  = 0x805C,
	GL_TEXTURE_RED_TYPE_ARB                                  = 0x8C10,
	GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV            = 0x8E54,
	GL_TEXTURE_RENDERBUFFER_NV                               = 0x8E55,
	GL_TEXTURE_RESIDENT_EXT                                  = 0x8067,
	GL_TEXTURE_SHADER_NV                                     = 0x86DE,
	GL_TEXTURE_SHARED_SIZE_EXT                               = 0x8C3F,
	GL_TEXTURE_SRGB_DECODE_EXT                               = 0x8A48,
	GL_TEXTURE_STENCIL_SIZE_EXT                              = 0x88F1,
	GL_TEXTURE_STORAGE_HINT_APPLE                            = 0x85BC,
	GL_TEXTURE_STORAGE_SPARSE_BIT_AMD                        = 0x00000001,
	GL_TEXTURE_SWIZZLE_A_EXT                                 = 0x8E45,
	GL_TEXTURE_SWIZZLE_B_EXT                                 = 0x8E44,
	GL_TEXTURE_SWIZZLE_G_EXT                                 = 0x8E43,
	GL_TEXTURE_SWIZZLE_R_EXT                                 = 0x8E42,
	GL_TEXTURE_SWIZZLE_RGBA_EXT                              = 0x8E46,
	GL_TEXTURE_TOO_LARGE_EXT                                 = 0x8065,
	GL_TEXTURE_UNSIGNED_REMAP_MODE_NV                        = 0x888F,
	GL_TEXTURE_UPDATE_BARRIER_BIT_EXT                        = 0x00000100,
	GL_TEXTURE_WRAP_Q_SGIS                                   = 0x8137,
	GL_TEXTURE_WRAP_R_EXT                                    = 0x8072,
	GL_TEXTURE0_ARB                                          = 0x84C0,
	GL_TEXTURE1_ARB                                          = 0x84C1,
	GL_TEXTURE10_ARB                                         = 0x84CA,
	GL_TEXTURE11_ARB                                         = 0x84CB,
	GL_TEXTURE12_ARB                                         = 0x84CC,
	GL_TEXTURE13_ARB                                         = 0x84CD,
	GL_TEXTURE14_ARB                                         = 0x84CE,
	GL_TEXTURE15_ARB                                         = 0x84CF,
	GL_TEXTURE16_ARB                                         = 0x84D0,
	GL_TEXTURE17_ARB                                         = 0x84D1,
	GL_TEXTURE18_ARB                                         = 0x84D2,
	GL_TEXTURE19_ARB                                         = 0x84D3,
	GL_TEXTURE2_ARB                                          = 0x84C2,
	GL_TEXTURE20_ARB                                         = 0x84D4,
	GL_TEXTURE21_ARB                                         = 0x84D5,
	GL_TEXTURE22_ARB                                         = 0x84D6,
	GL_TEXTURE23_ARB                                         = 0x84D7,
	GL_TEXTURE24_ARB                                         = 0x84D8,
	GL_TEXTURE25_ARB                                         = 0x84D9,
	GL_TEXTURE26_ARB                                         = 0x84DA,
	GL_TEXTURE27_ARB                                         = 0x84DB,
	GL_TEXTURE28_ARB                                         = 0x84DC,
	GL_TEXTURE29_ARB                                         = 0x84DD,
	GL_TEXTURE3_ARB                                          = 0x84C3,
	GL_TEXTURE30_ARB                                         = 0x84DE,
	GL_TEXTURE31_ARB                                         = 0x84DF,
	GL_TEXTURE4_ARB                                          = 0x84C4,
	GL_TEXTURE5_ARB                                          = 0x84C5,
	GL_TEXTURE6_ARB                                          = 0x84C6,
	GL_TEXTURE7_ARB                                          = 0x84C7,
	GL_TEXTURE8_ARB                                          = 0x84C8,
	GL_TEXTURE9_ARB                                          = 0x84C9,
	GL_TIME_ELAPSED_EXT                                      = 0x88BF,
	GL_TRACK_MATRIX_NV                                       = 0x8648,
	GL_TRACK_MATRIX_TRANSFORM_NV                             = 0x8649,
	GL_TRANSFORM_FEEDBACK_ACTIVE                             = 0x8E24,
	GL_TRANSFORM_FEEDBACK_ATTRIBS_NV                         = 0x8C7E,
	GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT                    = 0x00000800,
	GL_TRANSFORM_FEEDBACK_BINDING_NV                         = 0x8E25,
	GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV                   = 0x8E24,
	GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT                 = 0x8C8F,
	GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV                  = 0x8C8F,
	GL_TRANSFORM_FEEDBACK_BUFFER_EXT                         = 0x8C8E,
	GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT                    = 0x8C7F,
	GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV                     = 0x8C7F,
	GL_TRANSFORM_FEEDBACK_BUFFER_NV                          = 0x8C8E,
	GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV                   = 0x8E23,
	GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT                    = 0x8C85,
	GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV                     = 0x8C85,
	GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT                   = 0x8C84,
	GL_TRANSFORM_FEEDBACK_BUFFER_START_NV                    = 0x8C84,
	GL_TRANSFORM_FEEDBACK_NV                                 = 0x8E22,
	GL_TRANSFORM_FEEDBACK_PAUSED                             = 0x8E23,
	GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT             = 0x8C88,
	GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV              = 0x8C88,
	GL_TRANSFORM_FEEDBACK_RECORD_NV                          = 0x8C86,
	GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT             = 0x8C76,
	GL_TRANSFORM_FEEDBACK_VARYINGS_EXT                       = 0x8C83,
	GL_TRANSFORM_FEEDBACK_VARYINGS_NV                        = 0x8C83,
	GL_TRANSFORM_HINT_APPLE                                  = 0x85B1,
	GL_TRANSLATE_2D_NV                                       = 0x9090,
	GL_TRANSLATE_3D_NV                                       = 0x9091,
	GL_TRANSLATE_X_NV                                        = 0x908E,
	GL_TRANSLATE_Y_NV                                        = 0x908F,
	GL_TRANSPOSE_AFFINE_2D_NV                                = 0x9096,
	GL_TRANSPOSE_AFFINE_3D_NV                                = 0x9098,
	GL_TRANSPOSE_COLOR_MATRIX_ARB                            = 0x84E6,
	GL_TRANSPOSE_CURRENT_MATRIX_ARB                          = 0x88B7,
	GL_TRANSPOSE_MODELVIEW_MATRIX_ARB                        = 0x84E3,
	GL_TRANSPOSE_NV                                          = 0x862C,
	GL_TRANSPOSE_PROGRAM_MATRIX_EXT                          = 0x8E2E,
	GL_TRANSPOSE_PROJECTION_MATRIX_ARB                       = 0x84E4,
	GL_TRANSPOSE_PROJECTIVE_2D_NV                            = 0x9097,
	GL_TRANSPOSE_PROJECTIVE_3D_NV                            = 0x9099,
	GL_TRANSPOSE_TEXTURE_MATRIX_ARB                          = 0x84E5,
	GL_TRIANGLE_LIST_SUN                                     = 0x81D7,
	GL_TRIANGLE_MESH_SUN                                     = 0x8615,
	GL_TRIANGLE_STRIP_ADJACENCY_ARB                          = 0x000D,
	GL_TRIANGLE_STRIP_ADJACENCY_EXT                          = 0x000D,
	GL_TRIANGLES_ADJACENCY_ARB                               = 0x000C,
	GL_TRIANGLES_ADJACENCY_EXT                               = 0x000C,
	GL_TRIANGULAR_NV                                         = 0x90A5,
	GL_UNDEFINED_APPLE                                       = 0x8A1C,
	GL_UNIFORM_BARRIER_BIT_EXT                               = 0x00000004,
	GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER           = 0x8A45,
	GL_UNIFORM_BUFFER_BINDING_EXT                            = 0x8DEF,
	GL_UNIFORM_BUFFER_EXT                                    = 0x8DEE,
	GL_UNKNOWN_CONTEXT_RESET_ARB                             = 0x8255,
	GL_UNPACK_CLIENT_STORAGE_APPLE                           = 0x85B2,
	GL_UNPACK_CMYK_HINT_EXT                                  = 0x800F,
	GL_UNPACK_CONSTANT_DATA_SUNX                             = 0x81D5,
	GL_UNPACK_IMAGE_DEPTH_SGIS                               = 0x8133,
	GL_UNPACK_IMAGE_HEIGHT_EXT                               = 0x806E,
	GL_UNPACK_RESAMPLE_OML                                   = 0x8985,
	GL_UNPACK_RESAMPLE_SGIX                                  = 0x842D,
	GL_UNPACK_ROW_BYTES_APPLE                                = 0x8A16,
	GL_UNPACK_SKIP_IMAGES_EXT                                = 0x806D,
	GL_UNPACK_SKIP_VOLUMES_SGIS                              = 0x8132,
	GL_UNPACK_SUBSAMPLE_RATE_SGIX                            = 0x85A1,
	GL_UNSIGNED_BYTE_3_3_2_EXT                               = 0x8032,
	GL_UNSIGNED_IDENTITY_NV                                  = 0x8536,
	GL_UNSIGNED_INT_10_10_10_2_EXT                           = 0x8036,
	GL_UNSIGNED_INT_10F_11F_11F_REV_EXT                      = 0x8C3B,
	GL_UNSIGNED_INT_24_8_EXT                                 = 0x84FA,
	GL_UNSIGNED_INT_24_8_NV                                  = 0x84FA,
	GL_UNSIGNED_INT_5_9_9_9_REV_EXT                          = 0x8C3E,
	GL_UNSIGNED_INT_8_8_8_8_EXT                              = 0x8035,
	GL_UNSIGNED_INT_8_8_S8_S8_REV_NV                         = 0x86DB,
	GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT                       = 0x9068,
	GL_UNSIGNED_INT_IMAGE_1D_EXT                             = 0x9062,
	GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT                       = 0x9069,
	GL_UNSIGNED_INT_IMAGE_2D_EXT                             = 0x9063,
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT           = 0x906C,
	GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT                 = 0x906B,
	GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT                        = 0x9065,
	GL_UNSIGNED_INT_IMAGE_3D_EXT                             = 0x9064,
	GL_UNSIGNED_INT_IMAGE_BUFFER_EXT                         = 0x9067,
	GL_UNSIGNED_INT_IMAGE_CUBE_EXT                           = 0x9066,
	GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT                 = 0x906A,
	GL_UNSIGNED_INT_S8_S8_8_8_NV                             = 0x86DA,
	GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT                     = 0x8DD6,
	GL_UNSIGNED_INT_SAMPLER_1D_EXT                           = 0x8DD1,
	GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT                     = 0x8DD7,
	GL_UNSIGNED_INT_SAMPLER_2D_EXT                           = 0x8DD2,
	GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT                      = 0x8DD5,
	GL_UNSIGNED_INT_SAMPLER_3D_EXT                           = 0x8DD3,
	GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD                       = 0x9003,
	GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT                       = 0x8DD8,
	GL_UNSIGNED_INT_SAMPLER_CUBE_EXT                         = 0x8DD4,
	GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB               = 0x900F,
	GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV                  = 0x8E58,
	GL_UNSIGNED_INT_VEC2_EXT                                 = 0x8DC6,
	GL_UNSIGNED_INT_VEC3_EXT                                 = 0x8DC7,
	GL_UNSIGNED_INT_VEC4_EXT                                 = 0x8DC8,
	GL_UNSIGNED_INT16_NV                                     = 0x8FF0,
	GL_UNSIGNED_INT16_VEC2_NV                                = 0x8FF1,
	GL_UNSIGNED_INT16_VEC3_NV                                = 0x8FF2,
	GL_UNSIGNED_INT16_VEC4_NV                                = 0x8FF3,
	GL_UNSIGNED_INT64_AMD                                    = 0x8BC2,
	GL_UNSIGNED_INT64_NV                                     = 0x140F,
	GL_UNSIGNED_INT64_VEC2_NV                                = 0x8FF5,
	GL_UNSIGNED_INT64_VEC3_NV                                = 0x8FF6,
	GL_UNSIGNED_INT64_VEC4_NV                                = 0x8FF7,
	GL_UNSIGNED_INT8_NV                                      = 0x8FEC,
	GL_UNSIGNED_INT8_VEC2_NV                                 = 0x8FED,
	GL_UNSIGNED_INT8_VEC3_NV                                 = 0x8FEE,
	GL_UNSIGNED_INT8_VEC4_NV                                 = 0x8FEF,
	GL_UNSIGNED_INVERT_NV                                    = 0x8537,
	GL_UNSIGNED_NORMALIZED_ARB                               = 0x8C17,
	GL_UNSIGNED_SHORT_4_4_4_4_EXT                            = 0x8033,
	GL_UNSIGNED_SHORT_5_5_5_1_EXT                            = 0x8034,
	GL_UNSIGNED_SHORT_8_8_APPLE                              = 0x85BA,
	GL_UNSIGNED_SHORT_8_8_MESA                               = 0x85BA,
	GL_UNSIGNED_SHORT_8_8_REV_APPLE                          = 0x85BB,
	GL_UNSIGNED_SHORT_8_8_REV_MESA                           = 0x85BB,
	GL_USE_MISSING_GLYPH_NV                                  = 0x90AA,
	GL_UTF16_NV                                              = 0x909B,
	GL_UTF8_NV                                               = 0x909A,
	GL_VARIABLE_A_NV                                         = 0x8523,
	GL_VARIABLE_B_NV                                         = 0x8524,
	GL_VARIABLE_C_NV                                         = 0x8525,
	GL_VARIABLE_D_NV                                         = 0x8526,
	GL_VARIABLE_E_NV                                         = 0x8527,
	GL_VARIABLE_F_NV                                         = 0x8528,
	GL_VARIABLE_G_NV                                         = 0x8529,
	GL_VARIANT_ARRAY_EXT                                     = 0x87E8,
	GL_VARIANT_ARRAY_POINTER_EXT                             = 0x87E9,
	GL_VARIANT_ARRAY_STRIDE_EXT                              = 0x87E6,
	GL_VARIANT_ARRAY_TYPE_EXT                                = 0x87E7,
	GL_VARIANT_DATATYPE_EXT                                  = 0x87E5,
	GL_VARIANT_EXT                                           = 0x87C1,
	GL_VARIANT_VALUE_EXT                                     = 0x87E4,
	GL_VBO_FREE_MEMORY_ATI                                   = 0x87FB,
	GL_VECTOR_EXT                                            = 0x87BF,
	GL_VERTEX_ARRAY_ADDRESS_NV                               = 0x8F21,
	GL_VERTEX_ARRAY_BINDING_APPLE                            = 0x85B5,
	GL_VERTEX_ARRAY_BUFFER_BINDING_ARB                       = 0x8896,
	GL_VERTEX_ARRAY_COUNT_EXT                                = 0x807D,
	GL_VERTEX_ARRAY_EXT                                      = 0x8074,
	GL_VERTEX_ARRAY_LENGTH_NV                                = 0x8F2B,
	GL_VERTEX_ARRAY_LIST_IBM                                 = 103070,
	GL_VERTEX_ARRAY_LIST_STRIDE_IBM                          = 103080,
	GL_VERTEX_ARRAY_OBJECT_AMD                               = 0x9154,
	GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL                  = 0x83F5,
	GL_VERTEX_ARRAY_POINTER_EXT                              = 0x808E,
	GL_VERTEX_ARRAY_RANGE_APPLE                              = 0x851D,
	GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE                       = 0x851E,
	GL_VERTEX_ARRAY_RANGE_LENGTH_NV                          = 0x851E,
	GL_VERTEX_ARRAY_RANGE_NV                                 = 0x851D,
	GL_VERTEX_ARRAY_RANGE_POINTER_APPLE                      = 0x8521,
	GL_VERTEX_ARRAY_RANGE_POINTER_NV                         = 0x8521,
	GL_VERTEX_ARRAY_RANGE_VALID_NV                           = 0x851F,
	GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV                   = 0x8533,
	GL_VERTEX_ARRAY_SIZE_EXT                                 = 0x807A,
	GL_VERTEX_ARRAY_STORAGE_HINT_APPLE                       = 0x851F,
	GL_VERTEX_ARRAY_STRIDE_EXT                               = 0x807C,
	GL_VERTEX_ARRAY_TYPE_EXT                                 = 0x807B,
	GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV                        = 0x8F20,
	GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT                   = 0x00000001,
	GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB                = 0x889F,
	GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB                       = 0x88FE,
	GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB                       = 0x8622,
	GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV                        = 0x88FD,
	GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV                         = 0x8F2A,
	GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB                    = 0x886A,
	GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB                       = 0x8645,
	GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB                          = 0x8623,
	GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB                        = 0x8624,
	GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB                          = 0x8625,
	GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV                        = 0x8F1E,
	GL_VERTEX_ATTRIB_ARRAY0_NV                               = 0x8650,
	GL_VERTEX_ATTRIB_ARRAY1_NV                               = 0x8651,
	GL_VERTEX_ATTRIB_ARRAY10_NV                              = 0x865A,
	GL_VERTEX_ATTRIB_ARRAY11_NV                              = 0x865B,
	GL_VERTEX_ATTRIB_ARRAY12_NV                              = 0x865C,
	GL_VERTEX_ATTRIB_ARRAY13_NV                              = 0x865D,
	GL_VERTEX_ATTRIB_ARRAY14_NV                              = 0x865E,
	GL_VERTEX_ATTRIB_ARRAY15_NV                              = 0x865F,
	GL_VERTEX_ATTRIB_ARRAY2_NV                               = 0x8652,
	GL_VERTEX_ATTRIB_ARRAY3_NV                               = 0x8653,
	GL_VERTEX_ATTRIB_ARRAY4_NV                               = 0x8654,
	GL_VERTEX_ATTRIB_ARRAY5_NV                               = 0x8655,
	GL_VERTEX_ATTRIB_ARRAY6_NV                               = 0x8656,
	GL_VERTEX_ATTRIB_ARRAY7_NV                               = 0x8657,
	GL_VERTEX_ATTRIB_ARRAY8_NV                               = 0x8658,
	GL_VERTEX_ATTRIB_ARRAY9_NV                               = 0x8659,
	GL_VERTEX_ATTRIB_MAP1_APPLE                              = 0x8A00,
	GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE                        = 0x8A03,
	GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE                       = 0x8A05,
	GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE                        = 0x8A04,
	GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE                         = 0x8A02,
	GL_VERTEX_ATTRIB_MAP2_APPLE                              = 0x8A01,
	GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE                        = 0x8A07,
	GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE                       = 0x8A09,
	GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE                        = 0x8A08,
	GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE                         = 0x8A06,
	GL_VERTEX_BLEND_ARB                                      = 0x86A7,
	GL_VERTEX_CONSISTENT_HINT_PGI                            = 0x1A22B,
	GL_VERTEX_DATA_HINT_PGI                                  = 0x1A22A,
	GL_VERTEX_ID_NV                                          = 0x8C7B,
	GL_VERTEX_PRECLIP_HINT_SGIX                              = 0x83EF,
	GL_VERTEX_PRECLIP_SGIX                                   = 0x83EE,
	GL_VERTEX_PROGRAM_ARB                                    = 0x8620,
	GL_VERTEX_PROGRAM_BINDING_NV                             = 0x864A,
	GL_VERTEX_PROGRAM_NV                                     = 0x8620,
	GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV                    = 0x8DA2,
	GL_VERTEX_PROGRAM_POINT_SIZE_ARB                         = 0x8642,
	GL_VERTEX_PROGRAM_POINT_SIZE_NV                          = 0x8642,
	GL_VERTEX_PROGRAM_TWO_SIDE_ARB                           = 0x8643,
	GL_VERTEX_PROGRAM_TWO_SIDE_NV                            = 0x8643,
	GL_VERTEX_SHADER_ARB                                     = 0x8B31,
	GL_VERTEX_SHADER_BINDING_EXT                             = 0x8781,
	GL_VERTEX_SHADER_EXT                                     = 0x8780,
	GL_VERTEX_SHADER_INSTRUCTIONS_EXT                        = 0x87CF,
	GL_VERTEX_SHADER_INVARIANTS_EXT                          = 0x87D1,
	GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT                     = 0x87D2,
	GL_VERTEX_SHADER_LOCALS_EXT                              = 0x87D3,
	GL_VERTEX_SHADER_OPTIMIZED_EXT                           = 0x87D4,
	GL_VERTEX_SHADER_VARIANTS_EXT                            = 0x87D0,
	GL_VERTEX_SOURCE_ATI                                     = 0x8774,
	GL_VERTEX_STATE_PROGRAM_NV                               = 0x8621,
	GL_VERTEX_STREAM0_ATI                                    = 0x876C,
	GL_VERTEX_STREAM1_ATI                                    = 0x876D,
	GL_VERTEX_STREAM2_ATI                                    = 0x876E,
	GL_VERTEX_STREAM3_ATI                                    = 0x876F,
	GL_VERTEX_STREAM4_ATI                                    = 0x8770,
	GL_VERTEX_STREAM5_ATI                                    = 0x8771,
	GL_VERTEX_STREAM6_ATI                                    = 0x8772,
	GL_VERTEX_STREAM7_ATI                                    = 0x8773,
	GL_VERTEX_WEIGHT_ARRAY_EXT                               = 0x850C,
	GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT                       = 0x8510,
	GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT                          = 0x850D,
	GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT                        = 0x850F,
	GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT                          = 0x850E,
	GL_VERTEX_WEIGHTING_EXT                                  = 0x8509,
	GL_VERTEX23_BIT_PGI                                      = 0x00000004,
	GL_VERTEX4_BIT_PGI                                       = 0x00000008,
	GL_VERTICAL_LINE_TO_NV                                   = 0x08,
	GL_VIBRANCE_BIAS_NV                                      = 0x8719,
	GL_VIBRANCE_SCALE_NV                                     = 0x8713,
	GL_VIDEO_BUFFER_BINDING_NV                               = 0x9021,
	GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV                       = 0x902D,
	GL_VIDEO_BUFFER_NV                                       = 0x9020,
	GL_VIDEO_BUFFER_PITCH_NV                                 = 0x9028,
	GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV                   = 0x903B,
	GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV                   = 0x903A,
	GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV                         = 0x9039,
	GL_VIDEO_CAPTURE_FRAME_WIDTH_NV                          = 0x9038,
	GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV                       = 0x903C,
	GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV                     = 0x9026,
	GL_VIDEO_COLOR_CONVERSION_MATRIX_NV                      = 0x9029,
	GL_VIDEO_COLOR_CONVERSION_MAX_NV                         = 0x902A,
	GL_VIDEO_COLOR_CONVERSION_MIN_NV                         = 0x902B,
	GL_VIDEO_COLOR_CONVERSION_OFFSET_NV                      = 0x902C,
	GL_VIRTUAL_PAGE_SIZE_X_AMD                               = 0x9195,
	GL_VIRTUAL_PAGE_SIZE_Y_AMD                               = 0x9196,
	GL_VIRTUAL_PAGE_SIZE_Z_AMD                               = 0x9197,
	GL_VOLATILE_APPLE                                        = 0x8A1A,
	GL_W_EXT                                                 = 0x87D8,
	GL_WEIGHT_ARRAY_ARB                                      = 0x86AD,
	GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB                       = 0x889E,
	GL_WEIGHT_ARRAY_POINTER_ARB                              = 0x86AC,
	GL_WEIGHT_ARRAY_SIZE_ARB                                 = 0x86AB,
	GL_WEIGHT_ARRAY_STRIDE_ARB                               = 0x86AA,
	GL_WEIGHT_ARRAY_TYPE_ARB                                 = 0x86A9,
	GL_WEIGHT_SUM_UNITY_ARB                                  = 0x86A6,
	GL_WIDE_LINE_HINT_PGI                                    = 0x1A222,
	GL_WRAP_BORDER_SUN                                       = 0x81D4,
	GL_WRITE_DISCARD_NV                                      = 0x88BE,
	GL_WRITE_ONLY_ARB                                        = 0x88B9,
	GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV                      = 0x887A,
	GL_WRITE_PIXEL_DATA_RANGE_NV                             = 0x8878,
	GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV                     = 0x887C,
	GL_X_EXT                                                 = 0x87D5,
	GL_Y_EXT                                                 = 0x87D6,
	GL_YCBAYCR8A_4224_NV                                     = 0x9032,
	GL_YCBCR_422_APPLE                                       = 0x85B9,
	GL_YCBCR_MESA                                            = 0x8757,
	GL_YCBYCR8_422_NV                                        = 0x9031,
	GL_YCRCB_422_SGIX                                        = 0x81BB,
	GL_YCRCB_444_SGIX                                        = 0x81BC,
	GL_YCRCB_SGIX                                            = 0x8318,
	GL_YCRCBA_SGIX                                           = 0x8319,
	GL_Z_EXT                                                 = 0x87D7,
	GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV              = 0x9036,
	GL_Z4Y12Z4CB12Z4CR12_444_NV                              = 0x9037,
	GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV                         = 0x9035,
	GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV              = 0x9034,
	GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV                         = 0x9033,
	GL_ZERO_EXT                                              = 0x87DD,
}

// GL functions
extern(System) {

	// GL 1.0
	void glAccum(GLenum op, GLfloat value);
	void glAlphaFunc(GLenum func, GLfloat ref_);
	void glBegin(GLenum mode);
	void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const(GLubyte)* bitmap);
	void glBlendFunc(GLenum sfactor, GLenum dfactor);
	void glCallList(GLuint list);
	void glCallLists(GLsizei n, GLenum type, const(GLvoid)* lists);
	void glClear(GLbitfield mask);
	void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void glClearColor(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void glClearDepth(GLdouble depth);
	void glClearIndex(GLfloat c);
	void glClearStencil(GLint s);
	void glClipPlane(GLenum plane, const(GLdouble)* equation);
	void glColor3b(GLbyte red, GLbyte green, GLbyte blue);
	void glColor3bv(const(GLbyte)* v);
	void glColor3d(GLdouble red, GLdouble green, GLdouble blue);
	void glColor3dv(const(GLdouble)* v);
	void glColor3f(GLfloat red, GLfloat green, GLfloat blue);
	void glColor3fv(const(GLfloat)* v);
	void glColor3i(GLint red, GLint green, GLint blue);
	void glColor3iv(const(GLint)* v);
	void glColor3s(GLshort red, GLshort green, GLshort blue);
	void glColor3sv(const(GLshort)* v);
	void glColor3ub(GLubyte red, GLubyte green, GLubyte blue);
	void glColor3ubv(const(GLubyte)* v);
	void glColor3ui(GLuint red, GLuint green, GLuint blue);
	void glColor3uiv(const(GLuint)* v);
	void glColor3us(GLushort red, GLushort green, GLushort blue);
	void glColor3usv(const(GLushort)* v);
	void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
	void glColor4bv(const(GLbyte)* v);
	void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
	void glColor4dv(const(GLdouble)* v);
	void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	void glColor4fv(const(GLfloat)* v);
	void glColor4i(GLint red, GLint green, GLint blue, GLint alpha);
	void glColor4iv(const(GLint)* v);
	void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha);
	void glColor4sv(const(GLshort)* v);
	void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
	void glColor4ubv(const(GLubyte)* v);
	void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha);
	void glColor4uiv(const(GLuint)* v);
	void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha);
	void glColor4usv(const(GLushort)* v);
	void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
	void glColorMaterial(GLenum face, GLenum mode);
	void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type);
	void glCullFace(GLenum mode);
	void glDeleteLists(GLuint list, GLsizei range);
	void glDepthFunc(GLenum func);
	void glDepthMask(GLboolean flag);
	void glDepthRange(GLdouble near, GLdouble far);
	void glDisable(GLenum cap);
	void glDrawBuffer(GLenum mode);
	void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glEdgeFlag(GLboolean flag);
	void glEdgeFlagv(const(GLboolean)* flag);
	void glEnable(GLenum cap);
	void glEnd();
	void glEndList();
	void glEvalCoord1d(GLdouble u);
	void glEvalCoord1dv(const(GLdouble)* u);
	void glEvalCoord1f(GLfloat u);
	void glEvalCoord1fv(const(GLfloat)* u);
	void glEvalCoord2d(GLdouble u, GLdouble v);
	void glEvalCoord2dv(const(GLdouble)* u);
	void glEvalCoord2f(GLfloat u, GLfloat v);
	void glEvalCoord2fv(const(GLfloat)* u);
	void glEvalMesh1(GLenum mode, GLint i1, GLint i2);
	void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2);
	void glEvalPoint1(GLint i);
	void glEvalPoint2(GLint i, GLint j);
	void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat* buffer);
	void glFinish();
	void glFlush();
	void glFogf(GLenum pname, GLfloat param);
	void glFogfv(GLenum pname, const(GLfloat)* params);
	void glFogi(GLenum pname, GLint param);
	void glFogiv(GLenum pname, const(GLint)* params);
	void glFrontFace(GLenum mode);
	void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
	GLuint glGenLists(GLsizei range);
	void glGetBooleanv(GLenum pname, GLboolean* params);
	void glGetClipPlane(GLenum plane, GLdouble* equation);
	void glGetDoublev(GLenum pname, GLdouble* params);
	GLenum glGetError();
	void glGetFloatv(GLenum pname, GLfloat* params);
	void glGetIntegerv(GLenum pname, GLint* params);
	void glGetLightfv(GLenum light, GLenum pname, GLfloat* params);
	void glGetLightiv(GLenum light, GLenum pname, GLint* params);
	void glGetMapdv(GLenum target, GLenum query, GLdouble* v);
	void glGetMapfv(GLenum target, GLenum query, GLfloat* v);
	void glGetMapiv(GLenum target, GLenum query, GLint* v);
	void glGetMaterialfv(GLenum face, GLenum pname, GLfloat* params);
	void glGetMaterialiv(GLenum face, GLenum pname, GLint* params);
	void glGetPixelMapfv(GLenum map, GLfloat* values);
	void glGetPixelMapuiv(GLenum map, GLuint* values);
	void glGetPixelMapusv(GLenum map, GLushort* values);
	void glGetPolygonStipple(GLubyte* mask);
	GLubyte * glGetString(GLenum name);
	void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat* params);
	void glGetTexEnviv(GLenum target, GLenum pname, GLint* params);
	void glGetTexGendv(GLenum coord, GLenum pname, GLdouble* params);
	void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat* params);
	void glGetTexGeniv(GLenum coord, GLenum pname, GLint* params);
	void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels);
	void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat* params);
	void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint* params);
	void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat* params);
	void glGetTexParameteriv(GLenum target, GLenum pname, GLint* params);
	void glHint(GLenum target, GLenum mode);
	void glIndexd(GLdouble c);
	void glIndexdv(const(GLdouble)* c);
	void glIndexf(GLfloat c);
	void glIndexfv(const(GLfloat)* c);
	void glIndexi(GLint c);
	void glIndexiv(const(GLint)* c);
	void glIndexMask(GLuint mask);
	void glIndexs(GLshort c);
	void glIndexsv(const(GLshort)* c);
	void glInitNames();
	GLboolean glIsEnabled(GLenum cap);
	GLboolean glIsList(GLuint list);
	void glLightf(GLenum light, GLenum pname, GLfloat param);
	void glLightfv(GLenum light, GLenum pname, const(GLfloat)* params);
	void glLighti(GLenum light, GLenum pname, GLint param);
	void glLightiv(GLenum light, GLenum pname, const(GLint)* params);
	void glLightModelf(GLenum pname, GLfloat param);
	void glLightModelfv(GLenum pname, const(GLfloat)* params);
	void glLightModeli(GLenum pname, GLint param);
	void glLightModeliv(GLenum pname, const(GLint)* params);
	void glLineStipple(GLint factor, GLushort pattern);
	void glLineWidth(GLfloat width);
	void glListBase(GLuint base);
	void glLoadIdentity();
	void glLoadMatrixd(const(GLdouble)* m);
	void glLoadMatrixf(const(GLfloat)* m);
	void glLoadName(GLuint name);
	void glLogicOp(GLenum opcode);
	void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points);
	void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points);
	void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points);
	void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points);
	void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2);
	void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2);
	void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
	void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
	void glMaterialf(GLenum face, GLenum pname, GLfloat param);
	void glMaterialfv(GLenum face, GLenum pname, const(GLfloat)* params);
	void glMateriali(GLenum face, GLenum pname, GLint param);
	void glMaterialiv(GLenum face, GLenum pname, const(GLint)* params);
	void glMatrixMode(GLenum mode);
	void glMultMatrixd(const(GLdouble)* m);
	void glMultMatrixf(const(GLfloat)* m);
	void glNewList(GLuint list, GLenum mode);
	void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz);
	void glNormal3bv(const(GLbyte)* v);
	void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz);
	void glNormal3dv(const(GLdouble)* v);
	void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz);
	void glNormal3fv(const(GLfloat)* v);
	void glNormal3i(GLint nx, GLint ny, GLint nz);
	void glNormal3iv(const(GLint)* v);
	void glNormal3s(GLshort nx, GLshort ny, GLshort nz);
	void glNormal3sv(const(GLshort)* v);
	void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar);
	void glPassThrough(GLfloat token);
	void glPixelMapfv(GLenum map, GLsizei mapsize, const(GLfloat)* values);
	void glPixelMapuiv(GLenum map, GLsizei mapsize, const(GLuint)* values);
	void glPixelMapusv(GLenum map, GLsizei mapsize, const(GLushort)* values);
	void glPixelStoref(GLenum pname, GLfloat param);
	void glPixelStorei(GLenum pname, GLint param);
	void glPixelTransferf(GLenum pname, GLfloat param);
	void glPixelTransferi(GLenum pname, GLint param);
	void glPixelZoom(GLfloat xfactor, GLfloat yfactor);
	void glPointSize(GLfloat size);
	void glPolygonMode(GLenum face, GLenum mode);
	void glPolygonStipple(const(GLubyte)* mask);
	void glPopAttrib();
	void glPopMatrix();
	void glPopName();
	void glPushAttrib(GLbitfield mask);
	void glPushMatrix();
	void glPushName(GLuint name);
	void glRasterPos2d(GLdouble x, GLdouble y);
	void glRasterPos2dv(const(GLdouble)* v);
	void glRasterPos2f(GLfloat x, GLfloat y);
	void glRasterPos2fv(const(GLfloat)* v);
	void glRasterPos2i(GLint x, GLint y);
	void glRasterPos2iv(const(GLint)* v);
	void glRasterPos2s(GLshort x, GLshort y);
	void glRasterPos2sv(const(GLshort)* v);
	void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z);
	void glRasterPos3dv(const(GLdouble)* v);
	void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z);
	void glRasterPos3fv(const(GLfloat)* v);
	void glRasterPos3i(GLint x, GLint y, GLint z);
	void glRasterPos3iv(const(GLint)* v);
	void glRasterPos3s(GLshort x, GLshort y, GLshort z);
	void glRasterPos3sv(const(GLshort)* v);
	void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void glRasterPos4dv(const(GLdouble)* v);
	void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	void glRasterPos4fv(const(GLfloat)* v);
	void glRasterPos4i(GLint x, GLint y, GLint z, GLint w);
	void glRasterPos4iv(const(GLint)* v);
	void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w);
	void glRasterPos4sv(const(GLshort)* v);
	void glReadBuffer(GLenum mode);
	void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid* pixels);
	void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
	void glRectdv(const(GLdouble)* v1, const(GLdouble)* v2);
	void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
	void glRectfv(const(GLfloat)* v1, const(GLfloat)* v2);
	void glRecti(GLint x1, GLint y1, GLint x2, GLint y2);
	void glRectiv(const(GLint)* v1, const(GLint)* v2);
	void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2);
	void glRectsv(const(GLshort)* v1, const(GLshort)* v2);
	GLint glRenderMode(GLenum mode);
	void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
	void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
	void glScaled(GLdouble x, GLdouble y, GLdouble z);
	void glScalef(GLfloat x, GLfloat y, GLfloat z);
	void glScissor(GLint x, GLint y, GLsizei width, GLsizei height);
	void glSelectBuffer(GLsizei size, GLuint* buffer);
	void glShadeModel(GLenum mode);
	void glStencilFunc(GLenum func, GLint ref_, GLuint mask);
	void glStencilMask(GLuint mask);
	void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass);
	void glTexCoord1d(GLdouble s);
	void glTexCoord1dv(const(GLdouble)* v);
	void glTexCoord1f(GLfloat s);
	void glTexCoord1fv(const(GLfloat)* v);
	void glTexCoord1i(GLint s);
	void glTexCoord1iv(const(GLint)* v);
	void glTexCoord1s(GLshort s);
	void glTexCoord1sv(const(GLshort)* v);
	void glTexCoord2d(GLdouble s, GLdouble t);
	void glTexCoord2dv(const(GLdouble)* v);
	void glTexCoord2f(GLfloat s, GLfloat t);
	void glTexCoord2fv(const(GLfloat)* v);
	void glTexCoord2i(GLint s, GLint t);
	void glTexCoord2iv(const(GLint)* v);
	void glTexCoord2s(GLshort s, GLshort t);
	void glTexCoord2sv(const(GLshort)* v);
	void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r);
	void glTexCoord3dv(const(GLdouble)* v);
	void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r);
	void glTexCoord3fv(const(GLfloat)* v);
	void glTexCoord3i(GLint s, GLint t, GLint r);
	void glTexCoord3iv(const(GLint)* v);
	void glTexCoord3s(GLshort s, GLshort t, GLshort r);
	void glTexCoord3sv(const(GLshort)* v);
	void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	void glTexCoord4dv(const(GLdouble)* v);
	void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	void glTexCoord4fv(const(GLfloat)* v);
	void glTexCoord4i(GLint s, GLint t, GLint r, GLint q);
	void glTexCoord4iv(const(GLint)* v);
	void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q);
	void glTexCoord4sv(const(GLshort)* v);
	void glTexEnvf(GLenum target, GLenum pname, GLfloat param);
	void glTexEnvfv(GLenum target, GLenum pname, const(GLfloat)* params);
	void glTexEnvi(GLenum target, GLenum pname, GLint param);
	void glTexEnviv(GLenum target, GLenum pname, const(GLint)* params);
	void glTexGend(GLenum coord, GLenum pname, GLdouble param);
	void glTexGendv(GLenum coord, GLenum pname, const(GLdouble)* params);
	void glTexGenf(GLenum coord, GLenum pname, GLfloat param);
	void glTexGenfv(GLenum coord, GLenum pname, const(GLfloat)* params);
	void glTexGeni(GLenum coord, GLenum pname, GLint param);
	void glTexGeniv(GLenum coord, GLenum pname, const(GLint)* params);
	void glTexImage1D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexParameterf(GLenum target, GLenum pname, GLfloat param);
	void glTexParameterfv(GLenum target, GLenum pname, const(GLfloat)* params);
	void glTexParameteri(GLenum target, GLenum pname, GLint param);
	void glTexParameteriv(GLenum target, GLenum pname, const(GLint)* params);
	void glTranslated(GLdouble x, GLdouble y, GLdouble z);
	void glTranslatef(GLfloat x, GLfloat y, GLfloat z);
	void glVertex2d(GLdouble x, GLdouble y);
	void glVertex2dv(const(GLdouble)* v);
	void glVertex2f(GLfloat x, GLfloat y);
	void glVertex2fv(const(GLfloat)* v);
	void glVertex2i(GLint x, GLint y);
	void glVertex2iv(const(GLint)* v);
	void glVertex2s(GLshort x, GLshort y);
	void glVertex2sv(const(GLshort)* v);
	void glVertex3d(GLdouble x, GLdouble y, GLdouble z);
	void glVertex3dv(const(GLdouble)* v);
	void glVertex3f(GLfloat x, GLfloat y, GLfloat z);
	void glVertex3fv(const(GLfloat)* v);
	void glVertex3i(GLint x, GLint y, GLint z);
	void glVertex3iv(const(GLint)* v);
	void glVertex3s(GLshort x, GLshort y, GLshort z);
	void glVertex3sv(const(GLshort)* v);
	void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	void glVertex4dv(const(GLdouble)* v);
	void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	void glVertex4fv(const(GLfloat)* v);
	void glVertex4i(GLint x, GLint y, GLint z, GLint w);
	void glVertex4iv(const(GLint)* v);
	void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w);
	void glVertex4sv(const(GLshort)* v);
	void glViewport(GLint x, GLint y, GLsizei width, GLsizei height);

	// GL 1.1
	GLboolean glAreTexturesResident(GLsizei n, const(GLuint)* textures, GLboolean* residences);
	void glArrayElement(GLint i);
	void glBindTexture(GLenum target, GLuint texture);
	void glColorPointer(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border);
	void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
	void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
	void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);
	void glDeleteTextures(GLsizei n, const(GLuint)* textures);
	void glDisableClientState(GLenum array);
	void glDrawArrays(GLenum mode, GLint first, GLsizei count);
	void glDrawElements(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices);
	void glEdgeFlagPointer(GLsizei stride, const(GLvoid)* pointer);
	void glEnableClientState(GLenum array);
	void glGenTextures(GLsizei n, GLuint* textures);
	void glGetPointerv(GLenum pname, GLvoid** params);
	void glIndexPointer(GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glIndexub(GLubyte c);
	void glIndexubv(const(GLubyte)* c);
	void glInterleavedArrays(GLenum format, GLsizei stride, const(GLvoid)* pointer);
	GLboolean glIsTexture(GLuint texture);
	void glNormalPointer(GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glPolygonOffset(GLfloat factor, GLfloat units);
	void glPopClientAttrib();
	void glPrioritizeTextures(GLsizei n, const(GLuint)* textures, const(GLfloat)* priorities);
	void glPushClientAttrib(GLbitfield mask);
	void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer);
	void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels);
	void glVertexAttribDivisor(GLuint index, GLuint divisor);
	void glVertexPointer(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer);

	// GL 1.2
	void function(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) glBlendColor;
	void function(GLenum mode) glBlendEquation;
	void function(GLuint buf, GLenum mode) glBlendEquationi;
	void function(GLuint buf, GLenum modeRGB, GLenum modeAlpha) glBlendEquationSeparatei;
	void function(GLuint buf, GLenum src, GLenum dst) glBlendFunci;
	void function(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) glBlendFuncSeparatei;
	void function(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(GLvoid)* data) glColorSubTable;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* table) glColorTable;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glColorTableParameterfv;
	void function(GLenum target, GLenum pname, const(GLint)* params) glColorTableParameteriv;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* image) glConvolutionFilter1D;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* image) glConvolutionFilter2D;
	void function(GLenum target, GLenum pname, GLfloat params) glConvolutionParameterf;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glConvolutionParameterfv;
	void function(GLenum target, GLenum pname, GLint params) glConvolutionParameteri;
	void function(GLenum target, GLenum pname, const(GLint)* params) glConvolutionParameteriv;
	void function(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width) glCopyColorSubTable;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) glCopyColorTable;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) glCopyConvolutionFilter1D;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height) glCopyConvolutionFilter2D;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyTexSubImage3D;
	void function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices) glDrawRangeElements;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level) glFramebufferTexture;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* table) glGetColorTable;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetColorTableParameterfv;
	void function(GLenum target, GLenum pname, GLint* params) glGetColorTableParameteriv;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* image) glGetConvolutionFilter;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetConvolutionParameterfv;
	void function(GLenum target, GLenum pname, GLint* params) glGetConvolutionParameteriv;
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) glGetHistogram;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetHistogramParameterfv;
	void function(GLenum target, GLenum pname, GLint* params) glGetHistogramParameteriv;
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) glGetMinmax;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetMinmaxParameterfv;
	void function(GLenum target, GLenum pname, GLint* params) glGetMinmaxParameteriv;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span) glGetSeparableFilter;
	void function(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink) glHistogram;
	void function(GLenum target, GLenum internalformat, GLboolean sink) glMinmax;
	void function(GLfloat value) glMinSampleShading;
	void function(GLenum target) glResetHistogram;
	void function(GLenum target) glResetMinmax;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* row, const(GLvoid)* column) glSeparableFilter2D;
	void function(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTexImage3D;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) glTexSubImage3D;

	// GL 1.3
	void function(GLenum texture) glActiveTexture;
	void function(GLenum texture) glClientActiveTexture;
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage1D;
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage2D;
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage3D;
	void function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage1D;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage2D;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage3D;
	void function(GLenum target, GLint level, GLvoid* img) glGetCompressedTexImage;
	void function(const(GLdouble)* m) glLoadTransposeMatrixd;
	void function(const(GLfloat)* m) glLoadTransposeMatrixf;
	void function(GLenum target, GLdouble s) glMultiTexCoord1d;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord1dv;
	void function(GLenum target, GLfloat s) glMultiTexCoord1f;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord1fv;
	void function(GLenum target, GLint s) glMultiTexCoord1i;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord1iv;
	void function(GLenum target, GLshort s) glMultiTexCoord1s;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord1sv;
	void function(GLenum target, GLdouble s, GLdouble t) glMultiTexCoord2d;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord2dv;
	void function(GLenum target, GLfloat s, GLfloat t) glMultiTexCoord2f;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord2fv;
	void function(GLenum target, GLint s, GLint t) glMultiTexCoord2i;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord2iv;
	void function(GLenum target, GLshort s, GLshort t) glMultiTexCoord2s;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord2sv;
	void function(GLenum target, GLdouble s, GLdouble t, GLdouble r) glMultiTexCoord3d;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord3dv;
	void function(GLenum target, GLfloat s, GLfloat t, GLfloat r) glMultiTexCoord3f;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord3fv;
	void function(GLenum target, GLint s, GLint t, GLint r) glMultiTexCoord3i;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord3iv;
	void function(GLenum target, GLshort s, GLshort t, GLshort r) glMultiTexCoord3s;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord3sv;
	void function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q) glMultiTexCoord4d;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord4dv;
	void function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q) glMultiTexCoord4f;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord4fv;
	void function(GLenum target, GLint s, GLint t, GLint r, GLint q) glMultiTexCoord4i;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord4iv;
	void function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q) glMultiTexCoord4s;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord4sv;
	void function(const(GLdouble)* m) glMultTransposeMatrixd;
	void function(const(GLfloat)* m) glMultTransposeMatrixf;
	void function(GLfloat value, GLboolean invert) glSampleCoverage;

	// GL 1.4
	void function(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) glBlendFuncSeparate;
	void function(GLdouble coord) glFogCoordd;
	void function(const(GLdouble)* coord) glFogCoorddv;
	void function(GLfloat coord) glFogCoordf;
	void function(const(GLfloat)* coord) glFogCoordfv;
	void function(GLenum type, GLsizei stride, const(GLvoid)* pointer) glFogCoordPointer;
	void function(GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei drawcount) glMultiDrawArrays;
	void function(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei drawcount) glMultiDrawElements;
	void function(GLenum pname, GLfloat param) glPointParameterf;
	void function(GLenum pname, const(GLfloat)* params) glPointParameterfv;
	void function(GLenum pname, GLint param) glPointParameteri;
	void function(GLenum pname, const(GLint)* params) glPointParameteriv;
	void function(GLbyte red, GLbyte green, GLbyte blue) glSecondaryColor3b;
	void function(const(GLbyte)* v) glSecondaryColor3bv;
	void function(GLdouble red, GLdouble green, GLdouble blue) glSecondaryColor3d;
	void function(const(GLdouble)* v) glSecondaryColor3dv;
	void function(GLfloat red, GLfloat green, GLfloat blue) glSecondaryColor3f;
	void function(const(GLfloat)* v) glSecondaryColor3fv;
	void function(GLint red, GLint green, GLint blue) glSecondaryColor3i;
	void function(const(GLint)* v) glSecondaryColor3iv;
	void function(GLshort red, GLshort green, GLshort blue) glSecondaryColor3s;
	void function(const(GLshort)* v) glSecondaryColor3sv;
	void function(GLubyte red, GLubyte green, GLubyte blue) glSecondaryColor3ub;
	void function(const(GLubyte)* v) glSecondaryColor3ubv;
	void function(GLuint red, GLuint green, GLuint blue) glSecondaryColor3ui;
	void function(const(GLuint)* v) glSecondaryColor3uiv;
	void function(GLushort red, GLushort green, GLushort blue) glSecondaryColor3us;
	void function(const(GLushort)* v) glSecondaryColor3usv;
	void function(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glSecondaryColorPointer;
	void function(GLdouble x, GLdouble y) glWindowPos2d;
	void function(const(GLdouble)* v) glWindowPos2dv;
	void function(GLfloat x, GLfloat y) glWindowPos2f;
	void function(const(GLfloat)* v) glWindowPos2fv;
	void function(GLint x, GLint y) glWindowPos2i;
	void function(const(GLint)* v) glWindowPos2iv;
	void function(GLshort x, GLshort y) glWindowPos2s;
	void function(const(GLshort)* v) glWindowPos2sv;
	void function(GLdouble x, GLdouble y, GLdouble z) glWindowPos3d;
	void function(const(GLdouble)* v) glWindowPos3dv;
	void function(GLfloat x, GLfloat y, GLfloat z) glWindowPos3f;
	void function(const(GLfloat)* v) glWindowPos3fv;
	void function(GLint x, GLint y, GLint z) glWindowPos3i;
	void function(const(GLint)* v) glWindowPos3iv;
	void function(GLshort x, GLshort y, GLshort z) glWindowPos3s;
	void function(const(GLshort)* v) glWindowPos3sv;

	// GL 1.5
	void function(GLenum target, GLuint id) glBeginQuery;
	void function(GLenum target, GLuint buffer) glBindBuffer;
	void function(GLenum target, GLsizeiptr size, const(GLvoid)* data, GLenum usage) glBufferData;
	void function(GLenum target, GLintptr offset, GLsizeiptr size, const(GLvoid)* data) glBufferSubData;
	void function(GLsizei n, const(GLuint)* buffers) glDeleteBuffers;
	void function(GLsizei n, const(GLuint)* ids) glDeleteQueries;
	void function(GLenum target) glEndQuery;
	void function(GLsizei n, GLuint* buffers) glGenBuffers;
	void function(GLsizei n, GLuint* ids) glGenQueries;
	void function(GLenum target, GLenum pname, GLint* params) glGetBufferParameteriv;
	void function(GLenum target, GLenum pname, GLvoid** params) glGetBufferPointerv;
	void function(GLenum target, GLintptr offset, GLsizeiptr size, GLvoid* data) glGetBufferSubData;
	void function(GLenum target, GLenum pname, GLint* params) glGetQueryiv;
	void function(GLuint id, GLenum pname, GLint* params) glGetQueryObjectiv;
	void function(GLuint id, GLenum pname, GLuint* params) glGetQueryObjectuiv;
	GLboolean function(GLuint buffer) glIsBuffer;
	GLboolean function(GLuint id) glIsQuery;
	GLvoid* function(GLenum target, GLenum access) glMapBuffer;
	GLboolean function(GLenum target) glUnmapBuffer;

	// GL 2.0
	void function(GLuint program, GLuint shader) glAttachShader;
	void function(GLuint program, GLuint index, const(GLchar)* name) glBindAttribLocation;
	void function(GLenum modeRGB, GLenum modeAlpha) glBlendEquationSeparate;
	void function(GLuint shader) glCompileShader;
	GLuint function() glCreateProgram;
	GLuint function(GLenum type) glCreateShader;
	void function(GLuint program) glDeleteProgram;
	void function(GLuint shader) glDeleteShader;
	void function(GLuint program, GLuint shader) glDetachShader;
	void function(GLuint index) glDisableVertexAttribArray;
	void function(GLsizei n, const(GLenum)* bufs) glDrawBuffers;
	void function(GLuint index) glEnableVertexAttribArray;
	void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) glGetActiveAttrib;
	void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLint* size, GLenum* type, GLchar* name) glGetActiveUniform;
	void function(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* obj) glGetAttachedShaders;
	GLint function(GLuint program, const(GLchar)* name) glGetAttribLocation;
	void function(GLuint program, GLsizei bufSize, GLsizei* length, GLchar* infoLog) glGetProgramInfoLog;
	void function(GLuint program, GLenum pname, GLint* params) glGetProgramiv;
	void function(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* infoLog) glGetShaderInfoLog;
	void function(GLuint shader, GLenum pname, GLint* params) glGetShaderiv;
	void function(GLuint shader, GLsizei bufSize, GLsizei* length, GLchar* source) glGetShaderSource;
	void function(GLuint program, GLint location, GLfloat* params) glGetUniformfv;
	void function(GLuint program, GLint location, GLint* params) glGetUniformiv;
	GLint function(GLuint program, const(GLchar)* name) glGetUniformLocation;
	void function(GLuint index, GLenum pname, GLdouble* params) glGetVertexAttribdv;
	void function(GLuint index, GLenum pname, GLfloat* params) glGetVertexAttribfv;
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribiv;
	void function(GLuint index, GLenum pname, GLvoid** pointer) glGetVertexAttribPointerv;
	GLboolean function(GLuint program) glIsProgram;
	GLboolean function(GLuint shader) glIsShader;
	void function(GLuint program) glLinkProgram;
	void function(GLuint shader, GLsizei count, const(GLchar*)* string, const(GLint)* length) glShaderSource;
	void function(GLenum face, GLenum func, GLint ref_, GLuint mask) glStencilFuncSeparate;
	void function(GLenum face, GLuint mask) glStencilMaskSeparate;
	void function(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass) glStencilOpSeparate;
	void function(GLint location, GLfloat v0) glUniform1f;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform1fv;
	void function(GLint location, GLint v0) glUniform1i;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform1iv;
	void function(GLint location, GLfloat v0, GLfloat v1) glUniform2f;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform2fv;
	void function(GLint location, GLint v0, GLint v1) glUniform2i;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform2iv;
	void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2) glUniform3f;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform3fv;
	void function(GLint location, GLint v0, GLint v1, GLint v2) glUniform3i;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform3iv;
	void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) glUniform4f;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform4fv;
	void function(GLint location, GLint v0, GLint v1, GLint v2, GLint v3) glUniform4i;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform4iv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix2fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix3fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix4fv;
	void function(GLuint program) glUseProgram;
	void function(GLuint program) glValidateProgram;
	void function(GLuint index, GLdouble x) glVertexAttrib1d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib1dv;
	void function(GLuint index, GLfloat x) glVertexAttrib1f;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib1fv;
	void function(GLuint index, GLshort x) glVertexAttrib1s;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib1sv;
	void function(GLuint index, GLdouble x, GLdouble y) glVertexAttrib2d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib2dv;
	void function(GLuint index, GLfloat x, GLfloat y) glVertexAttrib2f;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib2fv;
	void function(GLuint index, GLshort x, GLshort y) glVertexAttrib2s;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib2sv;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) glVertexAttrib3d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib3dv;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z) glVertexAttrib3f;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib3fv;
	void function(GLuint index, GLshort x, GLshort y, GLshort z) glVertexAttrib3s;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib3sv;
	void function(GLuint index, const(GLbyte)* v) glVertexAttrib4bv;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexAttrib4d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib4dv;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glVertexAttrib4f;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib4fv;
	void function(GLuint index, const(GLint)* v) glVertexAttrib4iv;
	void function(GLuint index, const(GLbyte)* v) glVertexAttrib4Nbv;
	void function(GLuint index, const(GLint)* v) glVertexAttrib4Niv;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib4Nsv;
	void function(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) glVertexAttrib4Nub;
	void function(GLuint index, const(GLubyte)* v) glVertexAttrib4Nubv;
	void function(GLuint index, const(GLuint)* v) glVertexAttrib4Nuiv;
	void function(GLuint index, const(GLushort)* v) glVertexAttrib4Nusv;
	void function(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) glVertexAttrib4s;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib4sv;
	void function(GLuint index, const(GLubyte)* v) glVertexAttrib4ubv;
	void function(GLuint index, const(GLuint)* v) glVertexAttrib4uiv;
	void function(GLuint index, const(GLushort)* v) glVertexAttrib4usv;
	void function(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(GLvoid)* pointer) glVertexAttribPointer;

	// GL 2.1
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix2x3fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix2x4fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix3x2fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix3x4fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix4x2fv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix4x3fv;

	// GL 3.0
	void function(GLuint id, GLenum mode) glBeginConditionalRender;
	void function(GLenum primitiveMode) glBeginTransformFeedback;
	void function(GLenum target, GLuint index, GLuint buffer) glBindBufferBase;
	void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) glBindBufferRange;
	void function(GLuint program, GLuint color, const(GLchar)* name) glBindFragDataLocation;
	void function(GLenum target, GLenum clamp) glClampColor;
	void function(GLenum buffer, GLint drawbuffer, GLfloat depth, GLint stencil) glClearBufferfi;
	void function(GLenum buffer, GLint drawbuffer, const(GLfloat)* value) glClearBufferfv;
	void function(GLenum buffer, GLint drawbuffer, const(GLint)* value) glClearBufferiv;
	void function(GLenum buffer, GLint drawbuffer, const(GLuint)* value) glClearBufferuiv;
	void function(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a) glColorMaski;
	void function(GLenum target, GLuint index) glDisablei;
	void function(GLenum target, GLuint index) glEnablei;
	void function() glEndConditionalRender;
	void function() glEndTransformFeedback;
	void function(GLenum target, GLuint index, GLboolean* data) glGetBooleani_v;
	GLint function(GLuint program, const(GLchar)* name) glGetFragDataLocation;
	void function(GLenum target, GLuint index, GLint* data) glGetIntegeri_v;
	GLubyte * function(GLenum name, GLuint index) glGetStringi;
	void function(GLenum target, GLenum pname, GLint* params) glGetTexParameterIiv;
	void function(GLenum target, GLenum pname, GLuint* params) glGetTexParameterIuiv;
	void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) glGetTransformFeedbackVarying;
	void function(GLuint program, GLint location, GLuint* params) glGetUniformuiv;
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribIiv;
	void function(GLuint index, GLenum pname, GLuint* params) glGetVertexAttribIuiv;
	GLboolean function(GLenum target, GLuint index) glIsEnabledi;
	void function(GLenum target, GLenum pname, const(GLint)* params) glTexParameterIiv;
	void function(GLenum target, GLenum pname, const(GLuint)* params) glTexParameterIuiv;
	void function(GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode) glTransformFeedbackVaryings;
	void function(GLint location, GLuint v0) glUniform1ui;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform1uiv;
	void function(GLint location, GLuint v0, GLuint v1) glUniform2ui;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform2uiv;
	void function(GLint location, GLuint v0, GLuint v1, GLuint v2) glUniform3ui;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform3uiv;
	void function(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) glUniform4ui;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform4uiv;
	void function(GLuint index, GLint x) glVertexAttribI1i;
	void function(GLuint index, const(GLint)* v) glVertexAttribI1iv;
	void function(GLuint index, GLuint x) glVertexAttribI1ui;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI1uiv;
	void function(GLuint index, GLint x, GLint y) glVertexAttribI2i;
	void function(GLuint index, const(GLint)* v) glVertexAttribI2iv;
	void function(GLuint index, GLuint x, GLuint y) glVertexAttribI2ui;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI2uiv;
	void function(GLuint index, GLint x, GLint y, GLint z) glVertexAttribI3i;
	void function(GLuint index, const(GLint)* v) glVertexAttribI3iv;
	void function(GLuint index, GLuint x, GLuint y, GLuint z) glVertexAttribI3ui;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI3uiv;
	void function(GLuint index, const(GLbyte)* v) glVertexAttribI4bv;
	void function(GLuint index, GLint x, GLint y, GLint z, GLint w) glVertexAttribI4i;
	void function(GLuint index, const(GLint)* v) glVertexAttribI4iv;
	void function(GLuint index, const(GLshort)* v) glVertexAttribI4sv;
	void function(GLuint index, const(GLubyte)* v) glVertexAttribI4ubv;
	void function(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) glVertexAttribI4ui;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI4uiv;
	void function(GLuint index, const(GLushort)* v) glVertexAttribI4usv;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexAttribIPointer;

	// GL 3.1
	void function(GLenum mode, GLint first, GLsizei count, GLsizei instancecount) glDrawArraysInstanced;
	void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount) glDrawElementsInstanced;
	void function(GLuint index) glPrimitiveRestartIndex;
	void function(GLenum target, GLenum internalformat, GLuint buffer) glTexBuffer;

	// GL 3.2
	void function(GLenum target, GLenum pname, GLint64* params) glGetBufferParameteri64v;
	void function(GLenum target, GLuint index, GLint64* data) glGetInteger64i_v;

	// GL 3DFX_tbuffer
	void function(GLuint mask) glTbufferMask3DFX;

	// GL AMD_debug_output
	void function(GLDEBUGPROCAMD callback, GLvoid* userParam) glDebugMessageCallbackAMD;
	void function(GLenum category, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled) glDebugMessageEnableAMD;
	void function(GLenum category, GLenum severity, GLuint id, GLsizei length, const(GLchar)* buf) glDebugMessageInsertAMD;
	GLuint function(GLuint count, GLsizei bufsize, GLenum* categories, GLuint* severities, GLuint* ids, GLsizei* lengths, GLchar* message) glGetDebugMessageLogAMD;

	// GL AMD_draw_buffers_blend
	void function(GLuint buf, GLenum mode) glBlendEquationIndexedAMD;
	void function(GLuint buf, GLenum modeRGB, GLenum modeAlpha) glBlendEquationSeparateIndexedAMD;
	void function(GLuint buf, GLenum src, GLenum dst) glBlendFuncIndexedAMD;
	void function(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) glBlendFuncSeparateIndexedAMD;

	// GL AMD_multi_draw_indirect
	void function(GLenum mode, const(GLvoid)* indirect, GLsizei primcount, GLsizei stride) glMultiDrawArraysIndirectAMD;
	void function(GLenum mode, GLenum type, const(GLvoid)* indirect, GLsizei primcount, GLsizei stride) glMultiDrawElementsIndirectAMD;

	// GL AMD_name_gen_delete
	void function(GLenum identifier, GLuint num, const(GLuint)* names) glDeleteNamesAMD;
	void function(GLenum identifier, GLuint num, GLuint* names) glGenNamesAMD;
	GLboolean function(GLenum identifier, GLuint name) glIsNameAMD;

	// GL AMD_performance_monitor
	void function(GLuint monitor) glBeginPerfMonitorAMD;
	void function(GLsizei n, GLuint* monitors) glDeletePerfMonitorsAMD;
	void function(GLuint monitor) glEndPerfMonitorAMD;
	void function(GLsizei n, GLuint* monitors) glGenPerfMonitorsAMD;
	void function(GLuint monitor, GLenum pname, GLsizei dataSize, GLuint* data, GLint* bytesWritten) glGetPerfMonitorCounterDataAMD;
	void function(GLuint group, GLuint counter, GLenum pname, GLvoid* data) glGetPerfMonitorCounterInfoAMD;
	void function(GLuint group, GLint* numCounters, GLint* maxActiveCounters, GLsizei counterSize, GLuint* counters) glGetPerfMonitorCountersAMD;
	void function(GLuint group, GLuint counter, GLsizei bufSize, GLsizei* length, GLchar* counterString) glGetPerfMonitorCounterStringAMD;
	void function(GLint* numGroups, GLsizei groupsSize, GLuint* groups) glGetPerfMonitorGroupsAMD;
	void function(GLuint group, GLsizei bufSize, GLsizei* length, GLchar* groupString) glGetPerfMonitorGroupStringAMD;
	void function(GLuint monitor, GLboolean enable, GLuint group, GLint numCounters, GLuint* counterList) glSelectPerfMonitorCountersAMD;

	// GL AMD_sample_positions
	void function(GLenum pname, GLuint index, const(GLfloat)* val) glSetMultisamplefvAMD;

	// GL AMD_sparse_texture
	void function(GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags) glTexStorageSparseAMD;
	void function(GLuint texture, GLenum target, GLenum internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLsizei layers, GLbitfield flags) glTextureStorageSparseAMD;

	// GL AMD_stencil_operation_extended
	void function(GLenum face, GLuint value) glStencilOpValueAMD;

	// GL AMD_vertex_shader_tessellator
	void function(GLfloat factor) glTessellationFactorAMD;
	void function(GLenum mode) glTessellationModeAMD;

	// GL APPLE_element_array
	void function(GLenum mode, GLint first, GLsizei count) glDrawElementArrayAPPLE;
	void function(GLenum mode, GLuint start, GLuint end, GLint first, GLsizei count) glDrawRangeElementArrayAPPLE;
	void function(GLenum type, const(GLvoid)* pointer) glElementPointerAPPLE;
	void function(GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount) glMultiDrawElementArrayAPPLE;
	void function(GLenum mode, GLuint start, GLuint end, const(GLint)* first, const(GLsizei)* count, GLsizei primcount) glMultiDrawRangeElementArrayAPPLE;

	// GL APPLE_fence
	void function(GLsizei n, const(GLuint)* fences) glDeleteFencesAPPLE;
	void function(GLuint fence) glFinishFenceAPPLE;
	void function(GLenum object, GLint name) glFinishObjectAPPLE;
	void function(GLsizei n, GLuint* fences) glGenFencesAPPLE;
	GLboolean function(GLuint fence) glIsFenceAPPLE;
	void function(GLuint fence) glSetFenceAPPLE;
	GLboolean function(GLuint fence) glTestFenceAPPLE;
	GLboolean function(GLenum object, GLuint name) glTestObjectAPPLE;

	// GL APPLE_flush_buffer_range
	void function(GLenum target, GLenum pname, GLint param) glBufferParameteriAPPLE;
	void function(GLenum target, GLintptr offset, GLsizeiptr size) glFlushMappedBufferRangeAPPLE;

	// GL APPLE_object_purgeable
	void function(GLenum objectType, GLuint name, GLenum pname, GLint* params) glGetObjectParameterivAPPLE;
	GLenum function(GLenum objectType, GLuint name, GLenum option) glObjectPurgeableAPPLE;
	GLenum function(GLenum objectType, GLuint name, GLenum option) glObjectUnpurgeableAPPLE;

	// GL APPLE_texture_range
	void function(GLenum target, GLenum pname, GLvoid** params) glGetTexParameterPointervAPPLE;
	void function(GLenum target, GLsizei length, const(GLvoid)* pointer) glTextureRangeAPPLE;

	// GL APPLE_vertex_array_object
	void function(GLuint array) glBindVertexArrayAPPLE;
	void function(GLsizei n, const(GLuint)* arrays) glDeleteVertexArraysAPPLE;
	void function(GLsizei n, GLuint* arrays) glGenVertexArraysAPPLE;
	GLboolean function(GLuint array) glIsVertexArrayAPPLE;

	// GL APPLE_vertex_array_range
	void function(GLsizei length, GLvoid* pointer) glFlushVertexArrayRangeAPPLE;
	void function(GLenum pname, GLint param) glVertexArrayParameteriAPPLE;
	void function(GLsizei length, GLvoid* pointer) glVertexArrayRangeAPPLE;

	// GL APPLE_vertex_program_evaluators
	void function(GLuint index, GLenum pname) glDisableVertexAttribAPPLE;
	void function(GLuint index, GLenum pname) glEnableVertexAttribAPPLE;
	GLboolean function(GLuint index, GLenum pname) glIsVertexAttribEnabledAPPLE;
	void function(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint stride, GLint order, const(GLdouble)* points) glMapVertexAttrib1dAPPLE;
	void function(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint stride, GLint order, const(GLfloat)* points) glMapVertexAttrib1fAPPLE;
	void function(GLuint index, GLuint size, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const(GLdouble)* points) glMapVertexAttrib2dAPPLE;
	void function(GLuint index, GLuint size, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const(GLfloat)* points) glMapVertexAttrib2fAPPLE;

	// GL ARB_base_instance
	void function(GLenum mode, GLint first, GLsizei count, GLsizei instancecount, GLuint baseinstance) glDrawArraysInstancedBaseInstance;
	void function(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLuint baseinstance) glDrawElementsInstancedBaseInstance;
	void function(GLenum mode, GLsizei count, GLenum type, const(void)* indices, GLsizei instancecount, GLint basevertex, GLuint baseinstance) glDrawElementsInstancedBaseVertexBaseInstance;

	// GL ARB_blend_func_extended
	void function(GLuint program, GLuint colorNumber, GLuint index, const(GLchar)* name) glBindFragDataLocationIndexed;
	GLint function(GLuint program, const(GLchar)* name) glGetFragDataIndex;

	// GL ARB_cl_event
	GLsync function(_cl_context * context, _cl_event * event, GLbitfield flags) glCreateSyncFromCLeventARB;

	// GL ARB_clear_buffer_object
	void function(GLenum target, GLenum internalformat, GLenum format, GLenum type, const(void)* data) glClearBufferData;
	void function(GLenum target, GLenum internalformat, GLintptr offset, GLsizeiptr size, GLenum format, GLenum type, const(void)* data) glClearBufferSubData;
	void function(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, const(void)* data) glClearNamedBufferDataEXT;
	void function(GLuint buffer, GLenum internalformat, GLenum format, GLenum type, GLsizeiptr offset, GLsizeiptr size, const(void)* data) glClearNamedBufferSubDataEXT;

	// GL ARB_color_buffer_float
	void function(GLenum target, GLenum clamp) glClampColorARB;

	// GL ARB_compute_shader
	void function(GLuint num_groups_x, GLuint num_groups_y, GLuint num_groups_z) glDispatchCompute;
	void function(GLintptr indirect) glDispatchComputeIndirect;

	// GL ARB_copy_buffer
	void function(GLenum readTarget, GLenum writeTarget, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size) glCopyBufferSubData;

	// GL ARB_copy_image
	void function(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei srcWidth, GLsizei srcHeight, GLsizei srcDepth) glCopyImageSubData;

	// GL ARB_debug_output
	void function(GLDEBUGPROCARB callback, const(GLvoid)* userParam) glDebugMessageCallbackARB;
	void function(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled) glDebugMessageControlARB;
	void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf) glDebugMessageInsertARB;
	GLuint function(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) glGetDebugMessageLogARB;

	// GL ARB_draw_buffers
	void function(GLsizei n, const(GLenum)* bufs) glDrawBuffersARB;

	// GL ARB_draw_buffers_blend
	void function(GLuint buf, GLenum mode) glBlendEquationiARB;
	void function(GLuint buf, GLenum modeRGB, GLenum modeAlpha) glBlendEquationSeparateiARB;
	void function(GLuint buf, GLenum src, GLenum dst) glBlendFunciARB;
	void function(GLuint buf, GLenum srcRGB, GLenum dstRGB, GLenum srcAlpha, GLenum dstAlpha) glBlendFuncSeparateiARB;

	// GL ARB_draw_elements_base_vertex
	void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex) glDrawElementsBaseVertex;
	void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei instancecount, GLint basevertex) glDrawElementsInstancedBaseVertex;
	void function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices, GLint basevertex) glDrawRangeElementsBaseVertex;
	void function(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei drawcount, const(GLint)* basevertex) glMultiDrawElementsBaseVertex;

	// GL ARB_draw_indirect
	void function(GLenum mode, const(GLvoid)* indirect) glDrawArraysIndirect;
	void function(GLenum mode, GLenum type, const(GLvoid)* indirect) glDrawElementsIndirect;

	// GL ARB_draw_instanced
	void function(GLenum mode, GLint first, GLsizei count, GLsizei primcount) glDrawArraysInstancedARB;
	void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei primcount) glDrawElementsInstancedARB;

	// GL ARB_ES2_compatibility
	void function(GLfloat d) glClearDepthf;
	void function(GLfloat n, GLfloat f) glDepthRangef;
	void function(GLenum shadertype, GLenum precisiontype, GLint* range, GLint* precision) glGetShaderPrecisionFormat;
	void function() glReleaseShaderCompiler;
	void function(GLsizei count, const(GLuint)* shaders, GLenum binaryformat, const(GLvoid)* binary, GLsizei length) glShaderBinary;

	// GL ARB_framebuffer_no_attachments
	void function(GLenum target, GLenum pname, GLint param) glFramebufferParameteri;
	void function(GLenum target, GLenum pname, GLint* params) glGetFramebufferParameteriv;
	void function(GLuint framebuffer, GLenum pname, GLint* params) glGetNamedFramebufferParameterivEXT;
	void function(GLuint framebuffer, GLenum pname, GLint param) glNamedFramebufferParameteriEXT;

	// GL ARB_framebuffer_object
	void function(GLenum target, GLuint framebuffer) glBindFramebuffer;
	void function(GLenum target, GLuint renderbuffer) glBindRenderbuffer;
	void function(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter) glBlitFramebuffer;
	GLenum function(GLenum target) glCheckFramebufferStatus;
	void function(GLsizei n, const(GLuint)* framebuffers) glDeleteFramebuffers;
	void function(GLsizei n, const(GLuint)* renderbuffers) glDeleteRenderbuffers;
	void function(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) glFramebufferRenderbuffer;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glFramebufferTexture1D;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glFramebufferTexture2D;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) glFramebufferTexture3D;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) glFramebufferTextureLayer;
	void function(GLenum target) glGenerateMipmap;
	void function(GLsizei n, GLuint* framebuffers) glGenFramebuffers;
	void function(GLsizei n, GLuint* renderbuffers) glGenRenderbuffers;
	void function(GLenum target, GLenum attachment, GLenum pname, GLint* params) glGetFramebufferAttachmentParameteriv;
	void function(GLenum target, GLenum pname, GLint* params) glGetRenderbufferParameteriv;
	GLboolean function(GLuint framebuffer) glIsFramebuffer;
	GLboolean function(GLuint renderbuffer) glIsRenderbuffer;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height) glRenderbufferStorage;
	void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) glRenderbufferStorageMultisample;

	// GL ARB_geometry_shader4
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level) glFramebufferTextureARB;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face) glFramebufferTextureFaceARB;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) glFramebufferTextureLayerARB;
	void function(GLuint program, GLenum pname, GLint value) glProgramParameteriARB;

	// GL ARB_get_program_binary
	void function(GLuint program, GLsizei bufSize, GLsizei* length, GLenum* binaryFormat, GLvoid* binary) glGetProgramBinary;
	void function(GLuint program, GLenum binaryFormat, const(GLvoid)* binary, GLsizei length) glProgramBinary;
	void function(GLuint program, GLenum pname, GLint value) glProgramParameteri;

	// GL ARB_gpu_shader_fp64
	void function(GLuint program, GLint location, GLdouble* params) glGetUniformdv;
	void function(GLint location, GLdouble x) glUniform1d;
	void function(GLint location, GLsizei count, const(GLdouble)* value) glUniform1dv;
	void function(GLint location, GLdouble x, GLdouble y) glUniform2d;
	void function(GLint location, GLsizei count, const(GLdouble)* value) glUniform2dv;
	void function(GLint location, GLdouble x, GLdouble y, GLdouble z) glUniform3d;
	void function(GLint location, GLsizei count, const(GLdouble)* value) glUniform3dv;
	void function(GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glUniform4d;
	void function(GLint location, GLsizei count, const(GLdouble)* value) glUniform4dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix2dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix2x3dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix2x4dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix3dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix3x2dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix3x4dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix4dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix4x2dv;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glUniformMatrix4x3dv;

	// GL ARB_instanced_arrays
	void function(GLuint index, GLuint divisor) glVertexAttribDivisorARB;

	// GL ARB_internalformat_query
	void function(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint* params) glGetInternalformativ;

	// GL ARB_internalformat_query2
	void function(GLenum target, GLenum internalformat, GLenum pname, GLsizei bufSize, GLint64* params) glGetInternalformati64v;

	// GL ARB_invalidate_subdata
	void function(GLuint buffer) glInvalidateBufferData;
	void function(GLuint buffer, GLintptr offset, GLsizeiptr length) glInvalidateBufferSubData;
	void function(GLenum target, GLsizei numAttachments, const(GLenum)* attachments) glInvalidateFramebuffer;
	void function(GLenum target, GLsizei numAttachments, const(GLenum)* attachments, GLint x, GLint y, GLsizei width, GLsizei height) glInvalidateSubFramebuffer;
	void function(GLuint texture, GLint level) glInvalidateTexImage;
	void function(GLuint texture, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth) glInvalidateTexSubImage;

	// GL ARB_map_buffer_range
	void function(GLenum target, GLintptr offset, GLsizeiptr length) glFlushMappedBufferRange;
	GLvoid* function(GLenum target, GLintptr offset, GLsizeiptr length, GLbitfield access) glMapBufferRange;

	// GL ARB_matrix_palette
	void function(GLint index) glCurrentPaletteMatrixARB;
	void function(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glMatrixIndexPointerARB;
	void function(GLint size, const(GLubyte)* indices) glMatrixIndexubvARB;
	void function(GLint size, const(GLuint)* indices) glMatrixIndexuivARB;
	void function(GLint size, const(GLushort)* indices) glMatrixIndexusvARB;

	// GL ARB_multi_draw_indirect
	void function(GLenum mode, const(void)* indirect, GLsizei drawcount, GLsizei stride) glMultiDrawArraysIndirect;
	void function(GLenum mode, GLenum type, const(void)* indirect, GLsizei drawcount, GLsizei stride) glMultiDrawElementsIndirect;

	// GL ARB_multisample
	void function(GLfloat value, GLboolean invert) glSampleCoverageARB;

	// GL ARB_multitexture
	void function(GLenum texture) glActiveTextureARB;
	void function(GLenum texture) glClientActiveTextureARB;
	void function(GLenum target, GLdouble s) glMultiTexCoord1dARB;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord1dvARB;
	void function(GLenum target, GLfloat s) glMultiTexCoord1fARB;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord1fvARB;
	void function(GLenum target, GLint s) glMultiTexCoord1iARB;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord1ivARB;
	void function(GLenum target, GLshort s) glMultiTexCoord1sARB;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord1svARB;
	void function(GLenum target, GLdouble s, GLdouble t) glMultiTexCoord2dARB;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord2dvARB;
	void function(GLenum target, GLfloat s, GLfloat t) glMultiTexCoord2fARB;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord2fvARB;
	void function(GLenum target, GLint s, GLint t) glMultiTexCoord2iARB;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord2ivARB;
	void function(GLenum target, GLshort s, GLshort t) glMultiTexCoord2sARB;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord2svARB;
	void function(GLenum target, GLdouble s, GLdouble t, GLdouble r) glMultiTexCoord3dARB;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord3dvARB;
	void function(GLenum target, GLfloat s, GLfloat t, GLfloat r) glMultiTexCoord3fARB;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord3fvARB;
	void function(GLenum target, GLint s, GLint t, GLint r) glMultiTexCoord3iARB;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord3ivARB;
	void function(GLenum target, GLshort s, GLshort t, GLshort r) glMultiTexCoord3sARB;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord3svARB;
	void function(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q) glMultiTexCoord4dARB;
	void function(GLenum target, const(GLdouble)* v) glMultiTexCoord4dvARB;
	void function(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q) glMultiTexCoord4fARB;
	void function(GLenum target, const(GLfloat)* v) glMultiTexCoord4fvARB;
	void function(GLenum target, GLint s, GLint t, GLint r, GLint q) glMultiTexCoord4iARB;
	void function(GLenum target, const(GLint)* v) glMultiTexCoord4ivARB;
	void function(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q) glMultiTexCoord4sARB;
	void function(GLenum target, const(GLshort)* v) glMultiTexCoord4svARB;

	// GL ARB_occlusion_query
	void function(GLenum target, GLuint id) glBeginQueryARB;
	void function(GLsizei n, const(GLuint)* ids) glDeleteQueriesARB;
	void function(GLenum target) glEndQueryARB;
	void function(GLsizei n, GLuint* ids) glGenQueriesARB;
	void function(GLenum target, GLenum pname, GLint* params) glGetQueryivARB;
	void function(GLuint id, GLenum pname, GLint* params) glGetQueryObjectivARB;
	void function(GLuint id, GLenum pname, GLuint* params) glGetQueryObjectuivARB;
	GLboolean function(GLuint id) glIsQueryARB;

	// GL ARB_point_parameters
	void function(GLenum pname, GLfloat param) glPointParameterfARB;
	void function(GLenum pname, const(GLfloat)* params) glPointParameterfvARB;

	// GL ARB_program_interface_query
	void function(GLuint program, GLenum programInterface, GLenum pname, GLint* params) glGetProgramInterfaceiv;
	GLuint function(GLuint program, GLenum programInterface, const(GLchar)* name) glGetProgramResourceIndex;
	void function(GLuint program, GLenum programInterface, GLuint index, GLsizei propCount, const(GLenum)* props, GLsizei bufSize, GLsizei* length, GLint* params) glGetProgramResourceiv;
	GLint function(GLuint program, GLenum programInterface, const(GLchar)* name) glGetProgramResourceLocation;
	GLint function(GLuint program, GLenum programInterface, const(GLchar)* name) glGetProgramResourceLocationIndex;
	void function(GLuint program, GLenum programInterface, GLuint index, GLsizei bufSize, GLsizei* length, GLchar* name) glGetProgramResourceName;

	// GL ARB_provoking_vertex
	void function(GLenum mode) glProvokingVertex;

	// GL ARB_robustness
	GLenum function() glGetGraphicsResetStatusARB;
	void function(GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* table) glGetnColorTableARB;
	void function(GLenum target, GLint lod, GLsizei bufSize, GLvoid* img) glGetnCompressedTexImageARB;
	void function(GLenum target, GLenum format, GLenum type, GLsizei bufSize, GLvoid* image) glGetnConvolutionFilterARB;
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values) glGetnHistogramARB;
	void function(GLenum target, GLenum query, GLsizei bufSize, GLdouble* v) glGetnMapdvARB;
	void function(GLenum target, GLenum query, GLsizei bufSize, GLfloat* v) glGetnMapfvARB;
	void function(GLenum target, GLenum query, GLsizei bufSize, GLint* v) glGetnMapivARB;
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLsizei bufSize, GLvoid* values) glGetnMinmaxARB;
	void function(GLenum map, GLsizei bufSize, GLfloat* values) glGetnPixelMapfvARB;
	void function(GLenum map, GLsizei bufSize, GLuint* values) glGetnPixelMapuivARB;
	void function(GLenum map, GLsizei bufSize, GLushort* values) glGetnPixelMapusvARB;
	void function(GLsizei bufSize, GLubyte* pattern) glGetnPolygonStippleARB;
	void function(GLenum target, GLenum format, GLenum type, GLsizei rowBufSize, GLvoid* row, GLsizei columnBufSize, GLvoid* column, GLvoid* span) glGetnSeparableFilterARB;
	void function(GLenum target, GLint level, GLenum format, GLenum type, GLsizei bufSize, GLvoid* img) glGetnTexImageARB;
	void function(GLuint program, GLint location, GLsizei bufSize, GLdouble* params) glGetnUniformdvARB;
	void function(GLuint program, GLint location, GLsizei bufSize, GLfloat* params) glGetnUniformfvARB;
	void function(GLuint program, GLint location, GLsizei bufSize, GLint* params) glGetnUniformivARB;
	void function(GLuint program, GLint location, GLsizei bufSize, GLuint* params) glGetnUniformuivARB;
	void function(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLsizei bufSize, GLvoid* data) glReadnPixelsARB;

	// GL ARB_sample_shading
	void function(GLfloat value) glMinSampleShadingARB;

	// GL ARB_sampler_objects
	void function(GLuint unit, GLuint sampler) glBindSampler;
	void function(GLsizei count, const(GLuint)* samplers) glDeleteSamplers;
	void function(GLsizei count, GLuint* samplers) glGenSamplers;
	void function(GLuint sampler, GLenum pname, GLfloat* params) glGetSamplerParameterfv;
	void function(GLuint sampler, GLenum pname, GLint* params) glGetSamplerParameterIiv;
	void function(GLuint sampler, GLenum pname, GLuint* params) glGetSamplerParameterIuiv;
	void function(GLuint sampler, GLenum pname, GLint* params) glGetSamplerParameteriv;
	GLboolean function(GLuint sampler) glIsSampler;
	void function(GLuint sampler, GLenum pname, GLfloat param) glSamplerParameterf;
	void function(GLuint sampler, GLenum pname, const(GLfloat)* param) glSamplerParameterfv;
	void function(GLuint sampler, GLenum pname, GLint param) glSamplerParameteri;
	void function(GLuint sampler, GLenum pname, const(GLint)* param) glSamplerParameterIiv;
	void function(GLuint sampler, GLenum pname, const(GLuint)* param) glSamplerParameterIuiv;
	void function(GLuint sampler, GLenum pname, const(GLint)* param) glSamplerParameteriv;

	// GL ARB_separate_shader_objects
	void function(GLuint pipeline, GLuint program) glActiveShaderProgram;
	void function(GLuint pipeline) glBindProgramPipeline;
	GLuint function(GLenum type, GLsizei count, const(GLchar*)* strings) glCreateShaderProgramv;
	void function(GLsizei n, const(GLuint)* pipelines) glDeleteProgramPipelines;
	void function(GLsizei n, GLuint* pipelines) glGenProgramPipelines;
	void function(GLuint pipeline, GLsizei bufSize, GLsizei* length, GLchar* infoLog) glGetProgramPipelineInfoLog;
	void function(GLuint pipeline, GLenum pname, GLint* params) glGetProgramPipelineiv;
	GLboolean function(GLuint pipeline) glIsProgramPipeline;
	void function(GLuint program, GLint location, GLdouble v0) glProgramUniform1d;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform1dv;
	void function(GLuint program, GLint location, GLfloat v0) glProgramUniform1f;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform1fv;
	void function(GLuint program, GLint location, GLint v0) glProgramUniform1i;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform1iv;
	void function(GLuint program, GLint location, GLuint v0) glProgramUniform1ui;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform1uiv;
	void function(GLuint program, GLint location, GLdouble v0, GLdouble v1) glProgramUniform2d;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform2dv;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1) glProgramUniform2f;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform2fv;
	void function(GLuint program, GLint location, GLint v0, GLint v1) glProgramUniform2i;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform2iv;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1) glProgramUniform2ui;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform2uiv;
	void function(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2) glProgramUniform3d;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform3dv;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2) glProgramUniform3f;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform3fv;
	void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2) glProgramUniform3i;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform3iv;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2) glProgramUniform3ui;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform3uiv;
	void function(GLuint program, GLint location, GLdouble v0, GLdouble v1, GLdouble v2, GLdouble v3) glProgramUniform4d;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform4dv;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) glProgramUniform4f;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform4fv;
	void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3) glProgramUniform4i;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform4iv;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) glProgramUniform4ui;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform4uiv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2x3dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2x3fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2x4dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2x4fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3x2dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3x2fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3x4dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3x4fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4x2dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4x2fv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4x3dv;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4x3fv;
	void function(GLuint pipeline, GLbitfield stages, GLuint program) glUseProgramStages;
	void function(GLuint pipeline) glValidateProgramPipeline;

	// GL ARB_shader_atomic_counters
	void function(GLuint program, GLuint bufferIndex, GLenum pname, GLint* params) glGetActiveAtomicCounterBufferiv;

	// GL ARB_shader_image_load_store
	void function(GLuint unit, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLenum format) glBindImageTexture;
	void function(GLbitfield barriers) glMemoryBarrier;

	// GL ARB_shader_objects
	void function(GLhandleARB containerObj, GLhandleARB obj) glAttachObjectARB;
	void function(GLhandleARB shaderObj) glCompileShaderARB;
	GLhandleARB function() glCreateProgramObjectARB;
	GLhandleARB function(GLenum shaderType) glCreateShaderObjectARB;
	void function(GLhandleARB obj) glDeleteObjectARB;
	void function(GLhandleARB containerObj, GLhandleARB attachedObj) glDetachObjectARB;
	void function(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name) glGetActiveUniformARB;
	void function(GLhandleARB containerObj, GLsizei maxCount, GLsizei* count, GLhandleARB* obj) glGetAttachedObjectsARB;
	GLhandleARB function(GLenum pname) glGetHandleARB;
	void function(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* infoLog) glGetInfoLogARB;
	void function(GLhandleARB obj, GLenum pname, GLfloat* params) glGetObjectParameterfvARB;
	void function(GLhandleARB obj, GLenum pname, GLint* params) glGetObjectParameterivARB;
	void function(GLhandleARB obj, GLsizei maxLength, GLsizei* length, GLcharARB* source) glGetShaderSourceARB;
	void function(GLhandleARB programObj, GLint location, GLfloat* params) glGetUniformfvARB;
	void function(GLhandleARB programObj, GLint location, GLint* params) glGetUniformivARB;
	GLint function(GLhandleARB programObj, const(GLcharARB)* name) glGetUniformLocationARB;
	void function(GLhandleARB programObj) glLinkProgramARB;
	void function(GLhandleARB shaderObj, GLsizei count, const(GLcharARB*)* string, const(GLint)* length) glShaderSourceARB;
	void function(GLint location, GLfloat v0) glUniform1fARB;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform1fvARB;
	void function(GLint location, GLint v0) glUniform1iARB;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform1ivARB;
	void function(GLint location, GLfloat v0, GLfloat v1) glUniform2fARB;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform2fvARB;
	void function(GLint location, GLint v0, GLint v1) glUniform2iARB;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform2ivARB;
	void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2) glUniform3fARB;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform3fvARB;
	void function(GLint location, GLint v0, GLint v1, GLint v2) glUniform3iARB;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform3ivARB;
	void function(GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) glUniform4fARB;
	void function(GLint location, GLsizei count, const(GLfloat)* value) glUniform4fvARB;
	void function(GLint location, GLint v0, GLint v1, GLint v2, GLint v3) glUniform4iARB;
	void function(GLint location, GLsizei count, const(GLint)* value) glUniform4ivARB;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix2fvARB;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix3fvARB;
	void function(GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glUniformMatrix4fvARB;
	void function(GLhandleARB programObj) glUseProgramObjectARB;
	void function(GLhandleARB programObj) glValidateProgramARB;

	// GL ARB_shader_storage_buffer_object
	void function(GLuint program, GLuint storageBlockIndex, GLuint storageBlockBinding) glShaderStorageBlockBinding;

	// GL ARB_shader_subroutine
	void function(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) glGetActiveSubroutineName;
	void function(GLuint program, GLenum shadertype, GLuint index, GLenum pname, GLint* values) glGetActiveSubroutineUniformiv;
	void function(GLuint program, GLenum shadertype, GLuint index, GLsizei bufsize, GLsizei* length, GLchar* name) glGetActiveSubroutineUniformName;
	void function(GLuint program, GLenum shadertype, GLenum pname, GLint* values) glGetProgramStageiv;
	GLuint function(GLuint program, GLenum shadertype, const(GLchar)* name) glGetSubroutineIndex;
	GLint function(GLuint program, GLenum shadertype, const(GLchar)* name) glGetSubroutineUniformLocation;
	void function(GLenum shadertype, GLint location, GLuint* params) glGetUniformSubroutineuiv;
	void function(GLenum shadertype, GLsizei count, const(GLuint)* indices) glUniformSubroutinesuiv;

	// GL ARB_shading_language_include
	void function(GLuint shader, GLsizei count, const(GLchar*)* path, const(GLint)* length) glCompileShaderIncludeARB;
	void function(GLint namelen, const(GLchar)* name) glDeleteNamedStringARB;
	void function(GLint namelen, const(GLchar)* name, GLsizei bufSize, GLint* stringlen, GLchar* string) glGetNamedStringARB;
	void function(GLint namelen, const(GLchar)* name, GLenum pname, GLint* params) glGetNamedStringivARB;
	GLboolean function(GLint namelen, const(GLchar)* name) glIsNamedStringARB;
	void function(GLenum type, GLint namelen, const(GLchar)* name, GLint stringlen, const(GLchar)* string) glNamedStringARB;

	// GL ARB_sync
	GLenum function(GLsync sync, GLbitfield flags, GLuint64 timeout) glClientWaitSync;
	void function(GLsync sync) glDeleteSync;
	GLsync function(GLenum condition, GLbitfield flags) glFenceSync;
	void function(GLenum pname, GLint64* params) glGetInteger64v;
	void function(GLsync sync, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values) glGetSynciv;
	GLboolean function(GLsync sync) glIsSync;
	void function(GLsync sync, GLbitfield flags, GLuint64 timeout) glWaitSync;

	// GL ARB_tessellation_shader
	void function(GLenum pname, const(GLfloat)* values) glPatchParameterfv;
	void function(GLenum pname, GLint value) glPatchParameteri;

	// GL ARB_texture_buffer_object
	void function(GLenum target, GLenum internalformat, GLuint buffer) glTexBufferARB;

	// GL ARB_texture_buffer_range
	void function(GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) glTexBufferRange;
	void function(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer, GLintptr offset, GLsizeiptr size) glTextureBufferRangeEXT;

	// GL ARB_texture_compression
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage1DARB;
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage2DARB;
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* data) glCompressedTexImage3DARB;
	void function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage1DARB;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage2DARB;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* data) glCompressedTexSubImage3DARB;
	void function(GLenum target, GLint level, GLvoid* img) glGetCompressedTexImageARB;

	// GL ARB_texture_multisample
	void function(GLenum pname, GLuint index, GLfloat* val) glGetMultisamplefv;
	void function(GLuint index, GLbitfield mask) glSampleMaski;
	void function(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) glTexImage2DMultisample;
	void function(GLenum target, GLsizei samples, GLint internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) glTexImage3DMultisample;

	// GL ARB_texture_storage
	void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) glTexStorage1D;
	void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) glTexStorage2D;
	void function(GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) glTexStorage3D;
	void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width) glTextureStorage1DEXT;
	void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height) glTextureStorage2DEXT;
	void function(GLuint texture, GLenum target, GLsizei levels, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth) glTextureStorage3DEXT;

	// GL ARB_texture_storage_multisample
	void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) glTexStorage2DMultisample;
	void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) glTexStorage3DMultisample;
	void function(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLboolean fixedsamplelocations) glTextureStorage2DMultisampleEXT;
	void function(GLuint texture, GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedsamplelocations) glTextureStorage3DMultisampleEXT;

	// GL ARB_texture_view
	void function(GLuint texture, GLenum target, GLuint origtexture, GLenum internalformat, GLuint minlevel, GLuint numlevels, GLuint minlayer, GLuint numlayers) glTextureView;

	// GL ARB_timer_query
	void function(GLuint id, GLenum pname, GLint64* params) glGetQueryObjecti64v;
	void function(GLuint id, GLenum pname, GLuint64* params) glGetQueryObjectui64v;
	void function(GLuint id, GLenum target) glQueryCounter;

	// GL ARB_transform_feedback_instanced
	void function(GLenum mode, GLuint id, GLsizei instancecount) glDrawTransformFeedbackInstanced;
	void function(GLenum mode, GLuint id, GLuint stream, GLsizei instancecount) glDrawTransformFeedbackStreamInstanced;

	// GL ARB_transform_feedback2
	void function(GLenum target, GLuint id) glBindTransformFeedback;
	void function(GLsizei n, const(GLuint)* ids) glDeleteTransformFeedbacks;
	void function(GLenum mode, GLuint id) glDrawTransformFeedback;
	void function(GLsizei n, GLuint* ids) glGenTransformFeedbacks;
	GLboolean function(GLuint id) glIsTransformFeedback;
	void function() glPauseTransformFeedback;
	void function() glResumeTransformFeedback;

	// GL ARB_transform_feedback3
	void function(GLenum target, GLuint index, GLuint id) glBeginQueryIndexed;
	void function(GLenum mode, GLuint id, GLuint stream) glDrawTransformFeedbackStream;
	void function(GLenum target, GLuint index) glEndQueryIndexed;
	void function(GLenum target, GLuint index, GLenum pname, GLint* params) glGetQueryIndexediv;

	// GL ARB_transpose_matrix
	void function(const(GLdouble)* m) glLoadTransposeMatrixdARB;
	void function(const(GLfloat)* m) glLoadTransposeMatrixfARB;
	void function(const(GLdouble)* m) glMultTransposeMatrixdARB;
	void function(const(GLfloat)* m) glMultTransposeMatrixfARB;

	// GL ARB_uniform_buffer_object
	void function(GLuint program, GLuint uniformBlockIndex, GLenum pname, GLint* params) glGetActiveUniformBlockiv;
	void function(GLuint program, GLuint uniformBlockIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformBlockName) glGetActiveUniformBlockName;
	void function(GLuint program, GLuint uniformIndex, GLsizei bufSize, GLsizei* length, GLchar* uniformName) glGetActiveUniformName;
	void function(GLuint program, GLsizei uniformCount, const(GLuint)* uniformIndices, GLenum pname, GLint* params) glGetActiveUniformsiv;
	GLuint function(GLuint program, const(GLchar)* uniformBlockName) glGetUniformBlockIndex;
	void function(GLuint program, GLsizei uniformCount, const(GLchar*)* uniformNames, GLuint* uniformIndices) glGetUniformIndices;
	void function(GLuint program, GLuint uniformBlockIndex, GLuint uniformBlockBinding) glUniformBlockBinding;

	// GL ARB_vertex_array_object
	void function(GLuint array) glBindVertexArray;
	void function(GLsizei n, const(GLuint)* arrays) glDeleteVertexArrays;
	void function(GLsizei n, GLuint* arrays) glGenVertexArrays;
	GLboolean function(GLuint array) glIsVertexArray;

	// GL ARB_vertex_attrib_64bit
	void function(GLuint index, GLenum pname, GLdouble* params) glGetVertexAttribLdv;
	void function(GLuint index, GLdouble x) glVertexAttribL1d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL1dv;
	void function(GLuint index, GLdouble x, GLdouble y) glVertexAttribL2d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL2dv;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) glVertexAttribL3d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL3dv;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexAttribL4d;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL4dv;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexAttribLPointer;

	// GL ARB_vertex_attrib_binding
	void function(GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) glBindVertexBuffer;
	void function(GLuint vaobj, GLuint bindingindex, GLuint buffer, GLintptr offset, GLsizei stride) glVertexArrayBindVertexBufferEXT;
	void function(GLuint vaobj, GLuint attribindex, GLuint bindingindex) glVertexArrayVertexAttribBindingEXT;
	void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) glVertexArrayVertexAttribFormatEXT;
	void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) glVertexArrayVertexAttribIFormatEXT;
	void function(GLuint vaobj, GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) glVertexArrayVertexAttribLFormatEXT;
	void function(GLuint vaobj, GLuint bindingindex, GLuint divisor) glVertexArrayVertexBindingDivisorEXT;
	void function(GLuint attribindex, GLuint bindingindex) glVertexAttribBinding;
	void function(GLuint attribindex, GLint size, GLenum type, GLboolean normalized, GLuint relativeoffset) glVertexAttribFormat;
	void function(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) glVertexAttribIFormat;
	void function(GLuint attribindex, GLint size, GLenum type, GLuint relativeoffset) glVertexAttribLFormat;
	void function(GLuint bindingindex, GLuint divisor) glVertexBindingDivisor;

	// GL ARB_vertex_blend
	void function(GLint count) glVertexBlendARB;
	void function(GLint size, const(GLbyte)* weights) glWeightbvARB;
	void function(GLint size, const(GLdouble)* weights) glWeightdvARB;
	void function(GLint size, const(GLfloat)* weights) glWeightfvARB;
	void function(GLint size, const(GLint)* weights) glWeightivARB;
	void function(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glWeightPointerARB;
	void function(GLint size, const(GLshort)* weights) glWeightsvARB;
	void function(GLint size, const(GLubyte)* weights) glWeightubvARB;
	void function(GLint size, const(GLuint)* weights) glWeightuivARB;
	void function(GLint size, const(GLushort)* weights) glWeightusvARB;

	// GL ARB_vertex_buffer_object
	void function(GLenum target, GLuint buffer) glBindBufferARB;
	void function(GLenum target, GLsizeiptrARB size, const(GLvoid)* data, GLenum usage) glBufferDataARB;
	void function(GLenum target, GLintptrARB offset, GLsizeiptrARB size, const(GLvoid)* data) glBufferSubDataARB;
	void function(GLsizei n, const(GLuint)* buffers) glDeleteBuffersARB;
	void function(GLsizei n, GLuint* buffers) glGenBuffersARB;
	void function(GLenum target, GLenum pname, GLint* params) glGetBufferParameterivARB;
	void function(GLenum target, GLenum pname, GLvoid** params) glGetBufferPointervARB;
	void function(GLenum target, GLintptrARB offset, GLsizeiptrARB size, GLvoid* data) glGetBufferSubDataARB;
	GLboolean function(GLuint buffer) glIsBufferARB;
	GLvoid* function(GLenum target, GLenum access) glMapBufferARB;
	GLboolean function(GLenum target) glUnmapBufferARB;

	// GL ARB_vertex_program
	void function(GLenum target, GLuint program) glBindProgramARB;
	void function(GLsizei n, const(GLuint)* programs) glDeleteProgramsARB;
	void function(GLuint index) glDisableVertexAttribArrayARB;
	void function(GLuint index) glEnableVertexAttribArrayARB;
	void function(GLsizei n, GLuint* programs) glGenProgramsARB;
	void function(GLenum target, GLuint index, GLdouble* params) glGetProgramEnvParameterdvARB;
	void function(GLenum target, GLuint index, GLfloat* params) glGetProgramEnvParameterfvARB;
	void function(GLenum target, GLenum pname, GLint* params) glGetProgramivARB;
	void function(GLenum target, GLuint index, GLdouble* params) glGetProgramLocalParameterdvARB;
	void function(GLenum target, GLuint index, GLfloat* params) glGetProgramLocalParameterfvARB;
	void function(GLenum target, GLenum pname, GLvoid* string) glGetProgramStringARB;
	void function(GLuint index, GLenum pname, GLdouble* params) glGetVertexAttribdvARB;
	void function(GLuint index, GLenum pname, GLfloat* params) glGetVertexAttribfvARB;
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribivARB;
	void function(GLuint index, GLenum pname, GLvoid** pointer) glGetVertexAttribPointervARB;
	GLboolean function(GLuint program) glIsProgramARB;
	void function(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glProgramEnvParameter4dARB;
	void function(GLenum target, GLuint index, const(GLdouble)* params) glProgramEnvParameter4dvARB;
	void function(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glProgramEnvParameter4fARB;
	void function(GLenum target, GLuint index, const(GLfloat)* params) glProgramEnvParameter4fvARB;
	void function(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glProgramLocalParameter4dARB;
	void function(GLenum target, GLuint index, const(GLdouble)* params) glProgramLocalParameter4dvARB;
	void function(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glProgramLocalParameter4fARB;
	void function(GLenum target, GLuint index, const(GLfloat)* params) glProgramLocalParameter4fvARB;
	void function(GLenum target, GLenum format, GLsizei len, const(GLvoid)* string) glProgramStringARB;
	void function(GLuint index, GLdouble x) glVertexAttrib1dARB;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib1dvARB;
	void function(GLuint index, GLfloat x) glVertexAttrib1fARB;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib1fvARB;
	void function(GLuint index, GLshort x) glVertexAttrib1sARB;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib1svARB;
	void function(GLuint index, GLdouble x, GLdouble y) glVertexAttrib2dARB;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib2dvARB;
	void function(GLuint index, GLfloat x, GLfloat y) glVertexAttrib2fARB;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib2fvARB;
	void function(GLuint index, GLshort x, GLshort y) glVertexAttrib2sARB;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib2svARB;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) glVertexAttrib3dARB;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib3dvARB;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z) glVertexAttrib3fARB;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib3fvARB;
	void function(GLuint index, GLshort x, GLshort y, GLshort z) glVertexAttrib3sARB;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib3svARB;
	void function(GLuint index, const(GLbyte)* v) glVertexAttrib4bvARB;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexAttrib4dARB;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib4dvARB;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glVertexAttrib4fARB;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib4fvARB;
	void function(GLuint index, const(GLint)* v) glVertexAttrib4ivARB;
	void function(GLuint index, const(GLbyte)* v) glVertexAttrib4NbvARB;
	void function(GLuint index, const(GLint)* v) glVertexAttrib4NivARB;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib4NsvARB;
	void function(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) glVertexAttrib4NubARB;
	void function(GLuint index, const(GLubyte)* v) glVertexAttrib4NubvARB;
	void function(GLuint index, const(GLuint)* v) glVertexAttrib4NuivARB;
	void function(GLuint index, const(GLushort)* v) glVertexAttrib4NusvARB;
	void function(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) glVertexAttrib4sARB;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib4svARB;
	void function(GLuint index, const(GLubyte)* v) glVertexAttrib4ubvARB;
	void function(GLuint index, const(GLuint)* v) glVertexAttrib4uivARB;
	void function(GLuint index, const(GLushort)* v) glVertexAttrib4usvARB;
	void function(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, const(GLvoid)* pointer) glVertexAttribPointerARB;

	// GL ARB_vertex_shader
	void function(GLhandleARB programObj, GLuint index, const(GLcharARB)* name) glBindAttribLocationARB;
	void function(GLhandleARB programObj, GLuint index, GLsizei maxLength, GLsizei* length, GLint* size, GLenum* type, GLcharARB* name) glGetActiveAttribARB;
	GLint function(GLhandleARB programObj, const(GLcharARB)* name) glGetAttribLocationARB;

	// GL ARB_vertex_type_2_10_10_10_rev
	void function(GLenum type, GLuint color) glColorP3ui;
	void function(GLenum type, const(GLuint)* color) glColorP3uiv;
	void function(GLenum type, GLuint color) glColorP4ui;
	void function(GLenum type, const(GLuint)* color) glColorP4uiv;
	void function(GLenum texture, GLenum type, GLuint coords) glMultiTexCoordP1ui;
	void function(GLenum texture, GLenum type, const(GLuint)* coords) glMultiTexCoordP1uiv;
	void function(GLenum texture, GLenum type, GLuint coords) glMultiTexCoordP2ui;
	void function(GLenum texture, GLenum type, const(GLuint)* coords) glMultiTexCoordP2uiv;
	void function(GLenum texture, GLenum type, GLuint coords) glMultiTexCoordP3ui;
	void function(GLenum texture, GLenum type, const(GLuint)* coords) glMultiTexCoordP3uiv;
	void function(GLenum texture, GLenum type, GLuint coords) glMultiTexCoordP4ui;
	void function(GLenum texture, GLenum type, const(GLuint)* coords) glMultiTexCoordP4uiv;
	void function(GLenum type, GLuint coords) glNormalP3ui;
	void function(GLenum type, const(GLuint)* coords) glNormalP3uiv;
	void function(GLenum type, GLuint color) glSecondaryColorP3ui;
	void function(GLenum type, const(GLuint)* color) glSecondaryColorP3uiv;
	void function(GLenum type, GLuint coords) glTexCoordP1ui;
	void function(GLenum type, const(GLuint)* coords) glTexCoordP1uiv;
	void function(GLenum type, GLuint coords) glTexCoordP2ui;
	void function(GLenum type, const(GLuint)* coords) glTexCoordP2uiv;
	void function(GLenum type, GLuint coords) glTexCoordP3ui;
	void function(GLenum type, const(GLuint)* coords) glTexCoordP3uiv;
	void function(GLenum type, GLuint coords) glTexCoordP4ui;
	void function(GLenum type, const(GLuint)* coords) glTexCoordP4uiv;
	void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) glVertexAttribP1ui;
	void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) glVertexAttribP1uiv;
	void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) glVertexAttribP2ui;
	void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) glVertexAttribP2uiv;
	void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) glVertexAttribP3ui;
	void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) glVertexAttribP3uiv;
	void function(GLuint index, GLenum type, GLboolean normalized, GLuint value) glVertexAttribP4ui;
	void function(GLuint index, GLenum type, GLboolean normalized, const(GLuint)* value) glVertexAttribP4uiv;
	void function(GLenum type, GLuint value) glVertexP2ui;
	void function(GLenum type, const(GLuint)* value) glVertexP2uiv;
	void function(GLenum type, GLuint value) glVertexP3ui;
	void function(GLenum type, const(GLuint)* value) glVertexP3uiv;
	void function(GLenum type, GLuint value) glVertexP4ui;
	void function(GLenum type, const(GLuint)* value) glVertexP4uiv;

	// GL ARB_viewport_array
	void function(GLuint first, GLsizei count, const(GLdouble)* v) glDepthRangeArrayv;
	void function(GLuint index, GLdouble n, GLdouble f) glDepthRangeIndexed;
	void function(GLenum target, GLuint index, GLdouble* data) glGetDoublei_v;
	void function(GLenum target, GLuint index, GLfloat* data) glGetFloati_v;
	void function(GLuint first, GLsizei count, const(GLint)* v) glScissorArrayv;
	void function(GLuint index, GLint left, GLint bottom, GLsizei width, GLsizei height) glScissorIndexed;
	void function(GLuint index, const(GLint)* v) glScissorIndexedv;
	void function(GLuint first, GLsizei count, const(GLfloat)* v) glViewportArrayv;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat w, GLfloat h) glViewportIndexedf;
	void function(GLuint index, const(GLfloat)* v) glViewportIndexedfv;

	// GL ARB_window_pos
	void function(GLdouble x, GLdouble y) glWindowPos2dARB;
	void function(const(GLdouble)* v) glWindowPos2dvARB;
	void function(GLfloat x, GLfloat y) glWindowPos2fARB;
	void function(const(GLfloat)* v) glWindowPos2fvARB;
	void function(GLint x, GLint y) glWindowPos2iARB;
	void function(const(GLint)* v) glWindowPos2ivARB;
	void function(GLshort x, GLshort y) glWindowPos2sARB;
	void function(const(GLshort)* v) glWindowPos2svARB;
	void function(GLdouble x, GLdouble y, GLdouble z) glWindowPos3dARB;
	void function(const(GLdouble)* v) glWindowPos3dvARB;
	void function(GLfloat x, GLfloat y, GLfloat z) glWindowPos3fARB;
	void function(const(GLfloat)* v) glWindowPos3fvARB;
	void function(GLint x, GLint y, GLint z) glWindowPos3iARB;
	void function(const(GLint)* v) glWindowPos3ivARB;
	void function(GLshort x, GLshort y, GLshort z) glWindowPos3sARB;
	void function(const(GLshort)* v) glWindowPos3svARB;

	// GL ATI_draw_buffers
	void function(GLsizei n, const(GLenum)* bufs) glDrawBuffersATI;

	// GL ATI_element_array
	void function(GLenum mode, GLsizei count) glDrawElementArrayATI;
	void function(GLenum mode, GLuint start, GLuint end, GLsizei count) glDrawRangeElementArrayATI;
	void function(GLenum type, const(GLvoid)* pointer) glElementPointerATI;

	// GL ATI_envmap_bumpmap
	void function(GLenum pname, GLfloat* param) glGetTexBumpParameterfvATI;
	void function(GLenum pname, GLint* param) glGetTexBumpParameterivATI;
	void function(GLenum pname, const(GLfloat)* param) glTexBumpParameterfvATI;
	void function(GLenum pname, const(GLint)* param) glTexBumpParameterivATI;

	// GL ATI_fragment_shader
	void function(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod) glAlphaFragmentOp1ATI;
	void function(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod) glAlphaFragmentOp2ATI;
	void function(GLenum op, GLuint dst, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod) glAlphaFragmentOp3ATI;
	void function() glBeginFragmentShaderATI;
	void function(GLuint id) glBindFragmentShaderATI;
	void function(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod) glColorFragmentOp1ATI;
	void function(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod) glColorFragmentOp2ATI;
	void function(GLenum op, GLuint dst, GLuint dstMask, GLuint dstMod, GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod, GLuint arg3, GLuint arg3Rep, GLuint arg3Mod) glColorFragmentOp3ATI;
	void function(GLuint id) glDeleteFragmentShaderATI;
	void function() glEndFragmentShaderATI;
	GLuint function(GLuint range) glGenFragmentShadersATI;
	void function(GLuint dst, GLuint coord, GLenum swizzle) glPassTexCoordATI;
	void function(GLuint dst, GLuint interp, GLenum swizzle) glSampleMapATI;
	void function(GLuint dst, const(GLfloat)* value) glSetFragmentShaderConstantATI;

	// GL ATI_map_object_buffer
	GLvoid* function(GLuint buffer) glMapObjectBufferATI;
	void function(GLuint buffer) glUnmapObjectBufferATI;

	// GL ATI_pn_triangles
	void function(GLenum pname, GLfloat param) glPNTrianglesfATI;
	void function(GLenum pname, GLint param) glPNTrianglesiATI;

	// GL ATI_separate_stencil
	void function(GLenum frontfunc, GLenum backfunc, GLint ref_, GLuint mask) glStencilFuncSeparateATI;
	void function(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass) glStencilOpSeparateATI;

	// GL ATI_vertex_array_object
	void function(GLenum array, GLint size, GLenum type, GLsizei stride, GLuint buffer, GLuint offset) glArrayObjectATI;
	void function(GLuint buffer) glFreeObjectBufferATI;
	void function(GLenum array, GLenum pname, GLfloat* params) glGetArrayObjectfvATI;
	void function(GLenum array, GLenum pname, GLint* params) glGetArrayObjectivATI;
	void function(GLuint buffer, GLenum pname, GLfloat* params) glGetObjectBufferfvATI;
	void function(GLuint buffer, GLenum pname, GLint* params) glGetObjectBufferivATI;
	void function(GLuint id, GLenum pname, GLfloat* params) glGetVariantArrayObjectfvATI;
	void function(GLuint id, GLenum pname, GLint* params) glGetVariantArrayObjectivATI;
	GLboolean function(GLuint buffer) glIsObjectBufferATI;
	GLuint function(GLsizei size, const(GLvoid)* pointer, GLenum usage) glNewObjectBufferATI;
	void function(GLuint buffer, GLuint offset, GLsizei size, const(GLvoid)* pointer, GLenum preserve) glUpdateObjectBufferATI;
	void function(GLuint id, GLenum type, GLsizei stride, GLuint buffer, GLuint offset) glVariantArrayObjectATI;

	// GL ATI_vertex_attrib_array_object
	void function(GLuint index, GLenum pname, GLfloat* params) glGetVertexAttribArrayObjectfvATI;
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribArrayObjectivATI;
	void function(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLuint buffer, GLuint offset) glVertexAttribArrayObjectATI;

	// GL ATI_vertex_streams
	void function(GLenum stream) glClientActiveVertexStreamATI;
	void function(GLenum stream, GLbyte nx, GLbyte ny, GLbyte nz) glNormalStream3bATI;
	void function(GLenum stream, const(GLbyte)* coords) glNormalStream3bvATI;
	void function(GLenum stream, GLdouble nx, GLdouble ny, GLdouble nz) glNormalStream3dATI;
	void function(GLenum stream, const(GLdouble)* coords) glNormalStream3dvATI;
	void function(GLenum stream, GLfloat nx, GLfloat ny, GLfloat nz) glNormalStream3fATI;
	void function(GLenum stream, const(GLfloat)* coords) glNormalStream3fvATI;
	void function(GLenum stream, GLint nx, GLint ny, GLint nz) glNormalStream3iATI;
	void function(GLenum stream, const(GLint)* coords) glNormalStream3ivATI;
	void function(GLenum stream, GLshort nx, GLshort ny, GLshort nz) glNormalStream3sATI;
	void function(GLenum stream, const(GLshort)* coords) glNormalStream3svATI;
	void function(GLenum pname, GLfloat param) glVertexBlendEnvfATI;
	void function(GLenum pname, GLint param) glVertexBlendEnviATI;
	void function(GLenum stream, GLdouble x) glVertexStream1dATI;
	void function(GLenum stream, const(GLdouble)* coords) glVertexStream1dvATI;
	void function(GLenum stream, GLfloat x) glVertexStream1fATI;
	void function(GLenum stream, const(GLfloat)* coords) glVertexStream1fvATI;
	void function(GLenum stream, GLint x) glVertexStream1iATI;
	void function(GLenum stream, const(GLint)* coords) glVertexStream1ivATI;
	void function(GLenum stream, GLshort x) glVertexStream1sATI;
	void function(GLenum stream, const(GLshort)* coords) glVertexStream1svATI;
	void function(GLenum stream, GLdouble x, GLdouble y) glVertexStream2dATI;
	void function(GLenum stream, const(GLdouble)* coords) glVertexStream2dvATI;
	void function(GLenum stream, GLfloat x, GLfloat y) glVertexStream2fATI;
	void function(GLenum stream, const(GLfloat)* coords) glVertexStream2fvATI;
	void function(GLenum stream, GLint x, GLint y) glVertexStream2iATI;
	void function(GLenum stream, const(GLint)* coords) glVertexStream2ivATI;
	void function(GLenum stream, GLshort x, GLshort y) glVertexStream2sATI;
	void function(GLenum stream, const(GLshort)* coords) glVertexStream2svATI;
	void function(GLenum stream, GLdouble x, GLdouble y, GLdouble z) glVertexStream3dATI;
	void function(GLenum stream, const(GLdouble)* coords) glVertexStream3dvATI;
	void function(GLenum stream, GLfloat x, GLfloat y, GLfloat z) glVertexStream3fATI;
	void function(GLenum stream, const(GLfloat)* coords) glVertexStream3fvATI;
	void function(GLenum stream, GLint x, GLint y, GLint z) glVertexStream3iATI;
	void function(GLenum stream, const(GLint)* coords) glVertexStream3ivATI;
	void function(GLenum stream, GLshort x, GLshort y, GLshort z) glVertexStream3sATI;
	void function(GLenum stream, const(GLshort)* coords) glVertexStream3svATI;
	void function(GLenum stream, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexStream4dATI;
	void function(GLenum stream, const(GLdouble)* coords) glVertexStream4dvATI;
	void function(GLenum stream, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glVertexStream4fATI;
	void function(GLenum stream, const(GLfloat)* coords) glVertexStream4fvATI;
	void function(GLenum stream, GLint x, GLint y, GLint z, GLint w) glVertexStream4iATI;
	void function(GLenum stream, const(GLint)* coords) glVertexStream4ivATI;
	void function(GLenum stream, GLshort x, GLshort y, GLshort z, GLshort w) glVertexStream4sATI;
	void function(GLenum stream, const(GLshort)* coords) glVertexStream4svATI;

	// GL EXT_bindable_uniform
	GLint function(GLuint program, GLint location) glGetUniformBufferSizeEXT;
	GLintptr function(GLuint program, GLint location) glGetUniformOffsetEXT;
	void function(GLuint program, GLint location, GLuint buffer) glUniformBufferEXT;

	// GL EXT_blend_color
	void function(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha) glBlendColorEXT;

	// GL EXT_blend_equation_separate
	void function(GLenum modeRGB, GLenum modeAlpha) glBlendEquationSeparateEXT;

	// GL EXT_blend_func_separate
	void function(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) glBlendFuncSeparateEXT;

	// GL EXT_blend_minmax
	void function(GLenum mode) glBlendEquationEXT;

	// GL EXT_color_subtable
	void function(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const(GLvoid)* data) glColorSubTableEXT;
	void function(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width) glCopyColorSubTableEXT;

	// GL EXT_compiled_vertex_array
	void function(GLint first, GLsizei count) glLockArraysEXT;
	void function() glUnlockArraysEXT;

	// GL EXT_convolution
	void function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* image) glConvolutionFilter1DEXT;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* image) glConvolutionFilter2DEXT;
	void function(GLenum target, GLenum pname, GLfloat params) glConvolutionParameterfEXT;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glConvolutionParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint params) glConvolutionParameteriEXT;
	void function(GLenum target, GLenum pname, const(GLint)* params) glConvolutionParameterivEXT;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) glCopyConvolutionFilter1DEXT;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height) glCopyConvolutionFilter2DEXT;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* image) glGetConvolutionFilterEXT;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetConvolutionParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetConvolutionParameterivEXT;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* row, GLvoid* column, GLvoid* span) glGetSeparableFilterEXT;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* row, const(GLvoid)* column) glSeparableFilter2DEXT;

	// GL EXT_coordinate_frame
	void function(GLbyte bx, GLbyte by, GLbyte bz) glBinormal3bEXT;
	void function(const(GLbyte)* v) glBinormal3bvEXT;
	void function(GLdouble bx, GLdouble by, GLdouble bz) glBinormal3dEXT;
	void function(const(GLdouble)* v) glBinormal3dvEXT;
	void function(GLfloat bx, GLfloat by, GLfloat bz) glBinormal3fEXT;
	void function(const(GLfloat)* v) glBinormal3fvEXT;
	void function(GLint bx, GLint by, GLint bz) glBinormal3iEXT;
	void function(const(GLint)* v) glBinormal3ivEXT;
	void function(GLshort bx, GLshort by, GLshort bz) glBinormal3sEXT;
	void function(const(GLshort)* v) glBinormal3svEXT;
	void function(GLenum type, GLsizei stride, const(GLvoid)* pointer) glBinormalPointerEXT;
	void function(GLbyte tx, GLbyte ty, GLbyte tz) glTangent3bEXT;
	void function(const(GLbyte)* v) glTangent3bvEXT;
	void function(GLdouble tx, GLdouble ty, GLdouble tz) glTangent3dEXT;
	void function(const(GLdouble)* v) glTangent3dvEXT;
	void function(GLfloat tx, GLfloat ty, GLfloat tz) glTangent3fEXT;
	void function(const(GLfloat)* v) glTangent3fvEXT;
	void function(GLint tx, GLint ty, GLint tz) glTangent3iEXT;
	void function(const(GLint)* v) glTangent3ivEXT;
	void function(GLshort tx, GLshort ty, GLshort tz) glTangent3sEXT;
	void function(const(GLshort)* v) glTangent3svEXT;
	void function(GLenum type, GLsizei stride, const(GLvoid)* pointer) glTangentPointerEXT;

	// GL EXT_copy_texture
	void function(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border) glCopyTexImage1DEXT;
	void function(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) glCopyTexImage2DEXT;
	void function(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) glCopyTexSubImage1DEXT;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyTexSubImage2DEXT;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyTexSubImage3DEXT;

	// GL EXT_cull_vertex
	void function(GLenum pname, GLdouble* params) glCullParameterdvEXT;
	void function(GLenum pname, GLfloat* params) glCullParameterfvEXT;

	// GL EXT_depth_bounds_test
	void function(GLclampd zmin, GLclampd zmax) glDepthBoundsEXT;

	// GL EXT_direct_state_access
	void function(GLenum texunit, GLenum target, GLuint texture) glBindMultiTextureEXT;
	GLenum function(GLuint framebuffer, GLenum target) glCheckNamedFramebufferStatusEXT;
	void function(GLbitfield mask) glClientAttribDefaultEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexImage3DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexSubImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexSubImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedMultiTexSubImage3DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureImage3DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureSubImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureSubImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const(GLvoid)* bits) glCompressedTextureSubImage3DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border) glCopyMultiTexImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) glCopyMultiTexImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) glCopyMultiTexSubImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyMultiTexSubImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyMultiTexSubImage3DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border) glCopyTextureImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border) glCopyTextureImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width) glCopyTextureSubImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyTextureSubImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height) glCopyTextureSubImage3DEXT;
	void function(GLenum array, GLuint index) glDisableClientStateiEXT;
	void function(GLenum array, GLuint index) glDisableClientStateIndexedEXT;
	void function(GLuint vaobj, GLuint index) glDisableVertexArrayAttribEXT;
	void function(GLuint vaobj, GLenum array) glDisableVertexArrayEXT;
	void function(GLenum array, GLuint index) glEnableClientStateiEXT;
	void function(GLenum array, GLuint index) glEnableClientStateIndexedEXT;
	void function(GLuint vaobj, GLuint index) glEnableVertexArrayAttribEXT;
	void function(GLuint vaobj, GLenum array) glEnableVertexArrayEXT;
	void function(GLuint buffer, GLintptr offset, GLsizeiptr length) glFlushMappedNamedBufferRangeEXT;
	void function(GLuint framebuffer, GLenum mode) glFramebufferDrawBufferEXT;
	void function(GLuint framebuffer, GLsizei n, const(GLenum)* bufs) glFramebufferDrawBuffersEXT;
	void function(GLuint framebuffer, GLenum mode) glFramebufferReadBufferEXT;
	void function(GLenum texunit, GLenum target) glGenerateMultiTexMipmapEXT;
	void function(GLuint texture, GLenum target) glGenerateTextureMipmapEXT;
	void function(GLenum texunit, GLenum target, GLint lod, GLvoid* img) glGetCompressedMultiTexImageEXT;
	void function(GLuint texture, GLenum target, GLint lod, GLvoid* img) glGetCompressedTextureImageEXT;
	void function(GLenum target, GLuint index, GLdouble* data) glGetDoublei_vEXT;
	void function(GLenum target, GLuint index, GLdouble* data) glGetDoubleIndexedvEXT;
	void function(GLenum target, GLuint index, GLfloat* data) glGetFloati_vEXT;
	void function(GLenum target, GLuint index, GLfloat* data) glGetFloatIndexedvEXT;
	void function(GLuint framebuffer, GLenum pname, GLint* params) glGetFramebufferParameterivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLfloat* params) glGetMultiTexEnvfvEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLint* params) glGetMultiTexEnvivEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLdouble* params) glGetMultiTexGendvEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLfloat* params) glGetMultiTexGenfvEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLint* params) glGetMultiTexGenivEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels) glGetMultiTexImageEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum pname, GLfloat* params) glGetMultiTexLevelParameterfvEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum pname, GLint* params) glGetMultiTexLevelParameterivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLfloat* params) glGetMultiTexParameterfvEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLint* params) glGetMultiTexParameterIivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLuint* params) glGetMultiTexParameterIuivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLint* params) glGetMultiTexParameterivEXT;
	void function(GLuint buffer, GLenum pname, GLint* params) glGetNamedBufferParameterivEXT;
	void function(GLuint buffer, GLenum pname, GLvoid** params) glGetNamedBufferPointervEXT;
	void function(GLuint buffer, GLintptr offset, GLsizeiptr size, GLvoid* data) glGetNamedBufferSubDataEXT;
	void function(GLuint framebuffer, GLenum attachment, GLenum pname, GLint* params) glGetNamedFramebufferAttachmentParameterivEXT;
	void function(GLuint program, GLenum target, GLenum pname, GLint* params) glGetNamedProgramivEXT;
	void function(GLuint program, GLenum target, GLuint index, GLdouble* params) glGetNamedProgramLocalParameterdvEXT;
	void function(GLuint program, GLenum target, GLuint index, GLfloat* params) glGetNamedProgramLocalParameterfvEXT;
	void function(GLuint program, GLenum target, GLuint index, GLint* params) glGetNamedProgramLocalParameterIivEXT;
	void function(GLuint program, GLenum target, GLuint index, GLuint* params) glGetNamedProgramLocalParameterIuivEXT;
	void function(GLuint program, GLenum target, GLenum pname, GLvoid* string) glGetNamedProgramStringEXT;
	void function(GLuint renderbuffer, GLenum pname, GLint* params) glGetNamedRenderbufferParameterivEXT;
	void function(GLenum target, GLuint index, GLvoid** data) glGetPointeri_vEXT;
	void function(GLenum target, GLuint index, GLvoid** data) glGetPointerIndexedvEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum format, GLenum type, GLvoid* pixels) glGetTextureImageEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum pname, GLfloat* params) glGetTextureLevelParameterfvEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum pname, GLint* params) glGetTextureLevelParameterivEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLfloat* params) glGetTextureParameterfvEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLint* params) glGetTextureParameterIivEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLuint* params) glGetTextureParameterIuivEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLint* params) glGetTextureParameterivEXT;
	void function(GLuint vaobj, GLuint index, GLenum pname, GLint* param) glGetVertexArrayIntegeri_vEXT;
	void function(GLuint vaobj, GLenum pname, GLint* param) glGetVertexArrayIntegervEXT;
	void function(GLuint vaobj, GLuint index, GLenum pname, GLvoid** param) glGetVertexArrayPointeri_vEXT;
	void function(GLuint vaobj, GLenum pname, GLvoid** param) glGetVertexArrayPointervEXT;
	GLvoid* function(GLuint buffer, GLenum access) glMapNamedBufferEXT;
	GLvoid* function(GLuint buffer, GLintptr offset, GLsizeiptr length, GLbitfield access) glMapNamedBufferRangeEXT;
	void function(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) glMatrixFrustumEXT;
	void function(GLenum mode, const(GLdouble)* m) glMatrixLoaddEXT;
	void function(GLenum mode, const(GLfloat)* m) glMatrixLoadfEXT;
	void function(GLenum mode) glMatrixLoadIdentityEXT;
	void function(GLenum mode, const(GLdouble)* m) glMatrixLoadTransposedEXT;
	void function(GLenum mode, const(GLfloat)* m) glMatrixLoadTransposefEXT;
	void function(GLenum mode, const(GLdouble)* m) glMatrixMultdEXT;
	void function(GLenum mode, const(GLfloat)* m) glMatrixMultfEXT;
	void function(GLenum mode, const(GLdouble)* m) glMatrixMultTransposedEXT;
	void function(GLenum mode, const(GLfloat)* m) glMatrixMultTransposefEXT;
	void function(GLenum mode, GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble zNear, GLdouble zFar) glMatrixOrthoEXT;
	void function(GLenum mode) glMatrixPopEXT;
	void function(GLenum mode) glMatrixPushEXT;
	void function(GLenum mode, GLdouble angle, GLdouble x, GLdouble y, GLdouble z) glMatrixRotatedEXT;
	void function(GLenum mode, GLfloat angle, GLfloat x, GLfloat y, GLfloat z) glMatrixRotatefEXT;
	void function(GLenum mode, GLdouble x, GLdouble y, GLdouble z) glMatrixScaledEXT;
	void function(GLenum mode, GLfloat x, GLfloat y, GLfloat z) glMatrixScalefEXT;
	void function(GLenum mode, GLdouble x, GLdouble y, GLdouble z) glMatrixTranslatedEXT;
	void function(GLenum mode, GLfloat x, GLfloat y, GLfloat z) glMatrixTranslatefEXT;
	void function(GLenum texunit, GLenum target, GLenum internalformat, GLuint buffer) glMultiTexBufferEXT;
	void function(GLenum texunit, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glMultiTexCoordPointerEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLfloat param) glMultiTexEnvfEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params) glMultiTexEnvfvEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLint param) glMultiTexEnviEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLint)* params) glMultiTexEnvivEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLdouble param) glMultiTexGendEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, const(GLdouble)* params) glMultiTexGendvEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLfloat param) glMultiTexGenfEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, const(GLfloat)* params) glMultiTexGenfvEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, GLint param) glMultiTexGeniEXT;
	void function(GLenum texunit, GLenum coord, GLenum pname, const(GLint)* params) glMultiTexGenivEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexImage3DEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLfloat param) glMultiTexParameterfEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLfloat)* params) glMultiTexParameterfvEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, GLint param) glMultiTexParameteriEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLint)* params) glMultiTexParameterIivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLuint)* params) glMultiTexParameterIuivEXT;
	void function(GLenum texunit, GLenum target, GLenum pname, const(GLint)* params) glMultiTexParameterivEXT;
	void function(GLenum texunit, GLenum target, GLuint renderbuffer) glMultiTexRenderbufferEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexSubImage1DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexSubImage2DEXT;
	void function(GLenum texunit, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) glMultiTexSubImage3DEXT;
	void function(GLuint buffer, GLsizeiptr size, const(GLvoid)* data, GLenum usage) glNamedBufferDataEXT;
	void function(GLuint buffer, GLintptr offset, GLsizeiptr size, const(GLvoid)* data) glNamedBufferSubDataEXT;
	void function(GLuint readBuffer, GLuint writeBuffer, GLintptr readOffset, GLintptr writeOffset, GLsizeiptr size) glNamedCopyBufferSubDataEXT;
	void function(GLuint framebuffer, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) glNamedFramebufferRenderbufferEXT;
	void function(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glNamedFramebufferTexture1DEXT;
	void function(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glNamedFramebufferTexture2DEXT;
	void function(GLuint framebuffer, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) glNamedFramebufferTexture3DEXT;
	void function(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level) glNamedFramebufferTextureEXT;
	void function(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLenum face) glNamedFramebufferTextureFaceEXT;
	void function(GLuint framebuffer, GLenum attachment, GLuint texture, GLint level, GLint layer) glNamedFramebufferTextureLayerEXT;
	void function(GLuint program, GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glNamedProgramLocalParameter4dEXT;
	void function(GLuint program, GLenum target, GLuint index, const(GLdouble)* params) glNamedProgramLocalParameter4dvEXT;
	void function(GLuint program, GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glNamedProgramLocalParameter4fEXT;
	void function(GLuint program, GLenum target, GLuint index, const(GLfloat)* params) glNamedProgramLocalParameter4fvEXT;
	void function(GLuint program, GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w) glNamedProgramLocalParameterI4iEXT;
	void function(GLuint program, GLenum target, GLuint index, const(GLint)* params) glNamedProgramLocalParameterI4ivEXT;
	void function(GLuint program, GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) glNamedProgramLocalParameterI4uiEXT;
	void function(GLuint program, GLenum target, GLuint index, const(GLuint)* params) glNamedProgramLocalParameterI4uivEXT;
	void function(GLuint program, GLenum target, GLuint index, GLsizei count, const(GLfloat)* params) glNamedProgramLocalParameters4fvEXT;
	void function(GLuint program, GLenum target, GLuint index, GLsizei count, const(GLint)* params) glNamedProgramLocalParametersI4ivEXT;
	void function(GLuint program, GLenum target, GLuint index, GLsizei count, const(GLuint)* params) glNamedProgramLocalParametersI4uivEXT;
	void function(GLuint program, GLenum target, GLenum format, GLsizei len, const(GLvoid)* string) glNamedProgramStringEXT;
	void function(GLuint renderbuffer, GLenum internalformat, GLsizei width, GLsizei height) glNamedRenderbufferStorageEXT;
	void function(GLuint renderbuffer, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height) glNamedRenderbufferStorageMultisampleCoverageEXT;
	void function(GLuint renderbuffer, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) glNamedRenderbufferStorageMultisampleEXT;
	void function(GLuint program, GLint location, GLdouble x) glProgramUniform1dEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform1dvEXT;
	void function(GLuint program, GLint location, GLfloat v0) glProgramUniform1fEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform1fvEXT;
	void function(GLuint program, GLint location, GLint v0) glProgramUniform1iEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform1ivEXT;
	void function(GLuint program, GLint location, GLuint v0) glProgramUniform1uiEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform1uivEXT;
	void function(GLuint program, GLint location, GLdouble x, GLdouble y) glProgramUniform2dEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform2dvEXT;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1) glProgramUniform2fEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform2fvEXT;
	void function(GLuint program, GLint location, GLint v0, GLint v1) glProgramUniform2iEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform2ivEXT;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1) glProgramUniform2uiEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform2uivEXT;
	void function(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z) glProgramUniform3dEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform3dvEXT;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2) glProgramUniform3fEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform3fvEXT;
	void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2) glProgramUniform3iEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform3ivEXT;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2) glProgramUniform3uiEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform3uivEXT;
	void function(GLuint program, GLint location, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glProgramUniform4dEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLdouble)* value) glProgramUniform4dvEXT;
	void function(GLuint program, GLint location, GLfloat v0, GLfloat v1, GLfloat v2, GLfloat v3) glProgramUniform4fEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLfloat)* value) glProgramUniform4fvEXT;
	void function(GLuint program, GLint location, GLint v0, GLint v1, GLint v2, GLint v3) glProgramUniform4iEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLint)* value) glProgramUniform4ivEXT;
	void function(GLuint program, GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) glProgramUniform4uiEXT;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint)* value) glProgramUniform4uivEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2x3dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2x3fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix2x4dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix2x4fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3x2dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3x2fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix3x4dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix3x4fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4x2dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4x2fvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLdouble)* value) glProgramUniformMatrix4x3dvEXT;
	void function(GLuint program, GLint location, GLsizei count, GLboolean transpose, const(GLfloat)* value) glProgramUniformMatrix4x3fvEXT;
	void function(GLbitfield mask) glPushClientAttribDefaultEXT;
	void function(GLuint texture, GLenum target, GLenum internalformat, GLuint buffer) glTextureBufferEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureImage3DEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLfloat param) glTextureParameterfEXT;
	void function(GLuint texture, GLenum target, GLenum pname, const(GLfloat)* params) glTextureParameterfvEXT;
	void function(GLuint texture, GLenum target, GLenum pname, GLint param) glTextureParameteriEXT;
	void function(GLuint texture, GLenum target, GLenum pname, const(GLint)* params) glTextureParameterIivEXT;
	void function(GLuint texture, GLenum target, GLenum pname, const(GLuint)* params) glTextureParameterIuivEXT;
	void function(GLuint texture, GLenum target, GLenum pname, const(GLint)* params) glTextureParameterivEXT;
	void function(GLuint texture, GLenum target, GLuint renderbuffer) glTextureRenderbufferEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureSubImage1DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureSubImage2DEXT;
	void function(GLuint texture, GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) glTextureSubImage3DEXT;
	GLboolean function(GLuint buffer) glUnmapNamedBufferEXT;
	void function(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayColorOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLsizei stride, GLintptr offset) glVertexArrayEdgeFlagOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayFogCoordOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayIndexOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLenum texunit, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayMultiTexCoordOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayNormalOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArraySecondaryColorOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayTexCoordOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayVertexAttribIOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride, GLintptr offset) glVertexArrayVertexAttribOffsetEXT;
	void function(GLuint vaobj, GLuint buffer, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayVertexOffsetEXT;

	// GL EXT_draw_buffers2
	void function(GLuint index, GLboolean r, GLboolean g, GLboolean b, GLboolean a) glColorMaskIndexedEXT;
	void function(GLenum target, GLuint index) glDisableIndexedEXT;
	void function(GLenum target, GLuint index) glEnableIndexedEXT;
	void function(GLenum target, GLuint index, GLboolean* data) glGetBooleanIndexedvEXT;
	void function(GLenum target, GLuint index, GLint* data) glGetIntegerIndexedvEXT;
	GLboolean function(GLenum target, GLuint index) glIsEnabledIndexedEXT;

	// GL EXT_draw_instanced
	void function(GLenum mode, GLint start, GLsizei count, GLsizei primcount) glDrawArraysInstancedEXT;
	void function(GLenum mode, GLsizei count, GLenum type, const(GLvoid)* indices, GLsizei primcount) glDrawElementsInstancedEXT;

	// GL EXT_draw_range_elements
	void function(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const(GLvoid)* indices) glDrawRangeElementsEXT;

	// GL EXT_fog_coord
	void function(GLdouble coord) glFogCoorddEXT;
	void function(const(GLdouble)* coord) glFogCoorddvEXT;
	void function(GLfloat coord) glFogCoordfEXT;
	void function(const(GLfloat)* coord) glFogCoordfvEXT;
	void function(GLenum type, GLsizei stride, const(GLvoid)* pointer) glFogCoordPointerEXT;

	// GL EXT_framebuffer_blit
	void function(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter) glBlitFramebufferEXT;

	// GL EXT_framebuffer_multisample
	void function(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height) glRenderbufferStorageMultisampleEXT;

	// GL EXT_framebuffer_object
	void function(GLenum target, GLuint framebuffer) glBindFramebufferEXT;
	void function(GLenum target, GLuint renderbuffer) glBindRenderbufferEXT;
	GLenum function(GLenum target) glCheckFramebufferStatusEXT;
	void function(GLsizei n, const(GLuint)* framebuffers) glDeleteFramebuffersEXT;
	void function(GLsizei n, const(GLuint)* renderbuffers) glDeleteRenderbuffersEXT;
	void function(GLenum target, GLenum attachment, GLenum renderbuffertarget, GLuint renderbuffer) glFramebufferRenderbufferEXT;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glFramebufferTexture1DEXT;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level) glFramebufferTexture2DEXT;
	void function(GLenum target, GLenum attachment, GLenum textarget, GLuint texture, GLint level, GLint zoffset) glFramebufferTexture3DEXT;
	void function(GLenum target) glGenerateMipmapEXT;
	void function(GLsizei n, GLuint* framebuffers) glGenFramebuffersEXT;
	void function(GLsizei n, GLuint* renderbuffers) glGenRenderbuffersEXT;
	void function(GLenum target, GLenum attachment, GLenum pname, GLint* params) glGetFramebufferAttachmentParameterivEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetRenderbufferParameterivEXT;
	GLboolean function(GLuint framebuffer) glIsFramebufferEXT;
	GLboolean function(GLuint renderbuffer) glIsRenderbufferEXT;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLsizei height) glRenderbufferStorageEXT;

	// GL EXT_geometry_shader4
	void function(GLuint program, GLenum pname, GLint value) glProgramParameteriEXT;

	// GL EXT_gpu_program_parameters
	void function(GLenum target, GLuint index, GLsizei count, const(GLfloat)* params) glProgramEnvParameters4fvEXT;
	void function(GLenum target, GLuint index, GLsizei count, const(GLfloat)* params) glProgramLocalParameters4fvEXT;

	// GL EXT_gpu_shader4
	void function(GLuint program, GLuint color, const(GLchar)* name) glBindFragDataLocationEXT;
	GLint function(GLuint program, const(GLchar)* name) glGetFragDataLocationEXT;
	void function(GLuint program, GLint location, GLuint* params) glGetUniformuivEXT;
	void function(GLint location, GLuint v0) glUniform1uiEXT;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform1uivEXT;
	void function(GLint location, GLuint v0, GLuint v1) glUniform2uiEXT;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform2uivEXT;
	void function(GLint location, GLuint v0, GLuint v1, GLuint v2) glUniform3uiEXT;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform3uivEXT;
	void function(GLint location, GLuint v0, GLuint v1, GLuint v2, GLuint v3) glUniform4uiEXT;
	void function(GLint location, GLsizei count, const(GLuint)* value) glUniform4uivEXT;

	// GL EXT_histogram
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) glGetHistogramEXT;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetHistogramParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetHistogramParameterivEXT;
	void function(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid* values) glGetMinmaxEXT;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetMinmaxParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetMinmaxParameterivEXT;
	void function(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink) glHistogramEXT;
	void function(GLenum target, GLenum internalformat, GLboolean sink) glMinmaxEXT;
	void function(GLenum target) glResetHistogramEXT;
	void function(GLenum target) glResetMinmaxEXT;

	// GL EXT_index_func
	void function(GLenum func, GLclampf ref_) glIndexFuncEXT;

	// GL EXT_index_material
	void function(GLenum face, GLenum mode) glIndexMaterialEXT;

	// GL EXT_light_texture
	void function(GLenum mode) glApplyTextureEXT;
	void function(GLenum pname) glTextureLightEXT;
	void function(GLenum face, GLenum mode) glTextureMaterialEXT;

	// GL EXT_multi_draw_arrays
	void function(GLenum mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount) glMultiDrawArraysEXT;
	void function(GLenum mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei primcount) glMultiDrawElementsEXT;

	// GL EXT_multisample
	void function(GLclampf value, GLboolean invert) glSampleMaskEXT;
	void function(GLenum pattern) glSamplePatternEXT;

	// GL EXT_paletted_texture
	void function(GLenum target, GLenum internalFormat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* table) glColorTableEXT;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* data) glGetColorTableEXT;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetColorTableParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetColorTableParameterivEXT;

	// GL EXT_pixel_transform
	void function(GLenum target, GLenum pname, GLfloat* params) glGetPixelTransformParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetPixelTransformParameterivEXT;
	void function(GLenum target, GLenum pname, GLfloat param) glPixelTransformParameterfEXT;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glPixelTransformParameterfvEXT;
	void function(GLenum target, GLenum pname, GLint param) glPixelTransformParameteriEXT;
	void function(GLenum target, GLenum pname, const(GLint)* params) glPixelTransformParameterivEXT;

	// GL EXT_point_parameters
	void function(GLenum pname, GLfloat param) glPointParameterfEXT;
	void function(GLenum pname, const(GLfloat)* params) glPointParameterfvEXT;

	// GL EXT_polygon_offset
	void function(GLfloat factor, GLfloat bias) glPolygonOffsetEXT;

	// GL EXT_provoking_vertex
	void function(GLenum mode) glProvokingVertexEXT;

	// GL EXT_secondary_color
	void function(GLbyte red, GLbyte green, GLbyte blue) glSecondaryColor3bEXT;
	void function(const(GLbyte)* v) glSecondaryColor3bvEXT;
	void function(GLdouble red, GLdouble green, GLdouble blue) glSecondaryColor3dEXT;
	void function(const(GLdouble)* v) glSecondaryColor3dvEXT;
	void function(GLfloat red, GLfloat green, GLfloat blue) glSecondaryColor3fEXT;
	void function(const(GLfloat)* v) glSecondaryColor3fvEXT;
	void function(GLint red, GLint green, GLint blue) glSecondaryColor3iEXT;
	void function(const(GLint)* v) glSecondaryColor3ivEXT;
	void function(GLshort red, GLshort green, GLshort blue) glSecondaryColor3sEXT;
	void function(const(GLshort)* v) glSecondaryColor3svEXT;
	void function(GLubyte red, GLubyte green, GLubyte blue) glSecondaryColor3ubEXT;
	void function(const(GLubyte)* v) glSecondaryColor3ubvEXT;
	void function(GLuint red, GLuint green, GLuint blue) glSecondaryColor3uiEXT;
	void function(const(GLuint)* v) glSecondaryColor3uivEXT;
	void function(GLushort red, GLushort green, GLushort blue) glSecondaryColor3usEXT;
	void function(const(GLushort)* v) glSecondaryColor3usvEXT;
	void function(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glSecondaryColorPointerEXT;

	// GL EXT_separate_shader_objects
	void function(GLuint program) glActiveProgramEXT;
	GLuint function(GLenum type, const(GLchar)* string) glCreateShaderProgramEXT;
	void function(GLenum type, GLuint program) glUseShaderProgramEXT;

	// GL EXT_shader_image_load_store
	void function(GLuint index, GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum access, GLint format) glBindImageTextureEXT;
	void function(GLbitfield barriers) glMemoryBarrierEXT;

	// GL EXT_stencil_clear_tag
	void function(GLsizei stencilTagBits, GLuint stencilClearTag) glStencilClearTagEXT;

	// GL EXT_stencil_two_side
	void function(GLenum face) glActiveStencilFaceEXT;

	// GL EXT_subtexture
	void function(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const(GLvoid)* pixels) glTexSubImage1DEXT;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const(GLvoid)* pixels) glTexSubImage2DEXT;

	// GL EXT_texture_buffer_object
	void function(GLenum target, GLenum internalformat, GLuint buffer) glTexBufferEXT;

	// GL EXT_texture_integer
	void function(GLint red, GLint green, GLint blue, GLint alpha) glClearColorIiEXT;
	void function(GLuint red, GLuint green, GLuint blue, GLuint alpha) glClearColorIuiEXT;
	void function(GLenum target, GLenum pname, GLint* params) glGetTexParameterIivEXT;
	void function(GLenum target, GLenum pname, GLuint* params) glGetTexParameterIuivEXT;
	void function(GLenum target, GLenum pname, const(GLint)* params) glTexParameterIivEXT;
	void function(GLenum target, GLenum pname, const(GLuint)* params) glTexParameterIuivEXT;

	// GL EXT_texture_object
	GLboolean function(GLsizei n, const(GLuint)* textures, GLboolean* residences) glAreTexturesResidentEXT;
	void function(GLenum target, GLuint texture) glBindTextureEXT;
	void function(GLsizei n, const(GLuint)* textures) glDeleteTexturesEXT;
	void function(GLsizei n, GLuint* textures) glGenTexturesEXT;
	GLboolean function(GLuint texture) glIsTextureEXT;
	void function(GLsizei n, const(GLuint)* textures, const(GLclampf)* priorities) glPrioritizeTexturesEXT;

	// GL EXT_texture_perturb_normal
	void function(GLenum mode) glTextureNormalEXT;

	// GL EXT_texture3D
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTexImage3DEXT;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const(GLvoid)* pixels) glTexSubImage3DEXT;

	// GL EXT_timer_query
	void function(GLuint id, GLenum pname, GLint64EXT* params) glGetQueryObjecti64vEXT;
	void function(GLuint id, GLenum pname, GLuint64EXT* params) glGetQueryObjectui64vEXT;

	// GL EXT_transform_feedback
	void function(GLenum primitiveMode) glBeginTransformFeedbackEXT;
	void function(GLenum target, GLuint index, GLuint buffer) glBindBufferBaseEXT;
	void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset) glBindBufferOffsetEXT;
	void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) glBindBufferRangeEXT;
	void function() glEndTransformFeedbackEXT;
	void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) glGetTransformFeedbackVaryingEXT;
	void function(GLuint program, GLsizei count, const(GLchar*)* varyings, GLenum bufferMode) glTransformFeedbackVaryingsEXT;

	// GL EXT_vertex_array
	void function(GLint i) glArrayElementEXT;
	void function(GLint size, GLenum type, GLsizei stride, GLsizei count, const(GLvoid)* pointer) glColorPointerEXT;
	void function(GLenum mode, GLint first, GLsizei count) glDrawArraysEXT;
	void function(GLsizei stride, GLsizei count, const(GLboolean)* pointer) glEdgeFlagPointerEXT;
	void function(GLenum pname, GLvoid** params) glGetPointervEXT;
	void function(GLenum type, GLsizei stride, GLsizei count, const(GLvoid)* pointer) glIndexPointerEXT;
	void function(GLenum type, GLsizei stride, GLsizei count, const(GLvoid)* pointer) glNormalPointerEXT;
	void function(GLint size, GLenum type, GLsizei stride, GLsizei count, const(GLvoid)* pointer) glTexCoordPointerEXT;
	void function(GLint size, GLenum type, GLsizei stride, GLsizei count, const(GLvoid)* pointer) glVertexPointerEXT;

	// GL EXT_vertex_attrib_64bit
	void function(GLuint index, GLenum pname, GLdouble* params) glGetVertexAttribLdvEXT;
	void function(GLuint vaobj, GLuint buffer, GLuint index, GLint size, GLenum type, GLsizei stride, GLintptr offset) glVertexArrayVertexAttribLOffsetEXT;
	void function(GLuint index, GLdouble x) glVertexAttribL1dEXT;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL1dvEXT;
	void function(GLuint index, GLdouble x, GLdouble y) glVertexAttribL2dEXT;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL2dvEXT;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) glVertexAttribL3dEXT;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL3dvEXT;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexAttribL4dEXT;
	void function(GLuint index, const(GLdouble)* v) glVertexAttribL4dvEXT;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexAttribLPointerEXT;

	// GL EXT_vertex_shader
	void function() glBeginVertexShaderEXT;
	GLuint function(GLenum light, GLenum value) glBindLightParameterEXT;
	GLuint function(GLenum face, GLenum value) glBindMaterialParameterEXT;
	GLuint function(GLenum value) glBindParameterEXT;
	GLuint function(GLenum unit, GLenum coord, GLenum value) glBindTexGenParameterEXT;
	GLuint function(GLenum unit, GLenum value) glBindTextureUnitParameterEXT;
	void function(GLuint id) glBindVertexShaderEXT;
	void function(GLuint id) glDeleteVertexShaderEXT;
	void function(GLuint id) glDisableVariantClientStateEXT;
	void function(GLuint id) glEnableVariantClientStateEXT;
	void function() glEndVertexShaderEXT;
	void function(GLuint res, GLuint src, GLuint num) glExtractComponentEXT;
	GLuint function(GLenum datatype, GLenum storagetype, GLenum range, GLuint components) glGenSymbolsEXT;
	GLuint function(GLuint range) glGenVertexShadersEXT;
	void function(GLuint id, GLenum value, GLboolean* data) glGetInvariantBooleanvEXT;
	void function(GLuint id, GLenum value, GLfloat* data) glGetInvariantFloatvEXT;
	void function(GLuint id, GLenum value, GLint* data) glGetInvariantIntegervEXT;
	void function(GLuint id, GLenum value, GLboolean* data) glGetLocalConstantBooleanvEXT;
	void function(GLuint id, GLenum value, GLfloat* data) glGetLocalConstantFloatvEXT;
	void function(GLuint id, GLenum value, GLint* data) glGetLocalConstantIntegervEXT;
	void function(GLuint id, GLenum value, GLboolean* data) glGetVariantBooleanvEXT;
	void function(GLuint id, GLenum value, GLfloat* data) glGetVariantFloatvEXT;
	void function(GLuint id, GLenum value, GLint* data) glGetVariantIntegervEXT;
	void function(GLuint id, GLenum value, GLvoid** data) glGetVariantPointervEXT;
	void function(GLuint res, GLuint src, GLuint num) glInsertComponentEXT;
	GLboolean function(GLuint id, GLenum cap) glIsVariantEnabledEXT;
	void function(GLuint id, GLenum type, const(GLvoid)* addr) glSetInvariantEXT;
	void function(GLuint id, GLenum type, const(GLvoid)* addr) glSetLocalConstantEXT;
	void function(GLenum op, GLuint res, GLuint arg1) glShaderOp1EXT;
	void function(GLenum op, GLuint res, GLuint arg1, GLuint arg2) glShaderOp2EXT;
	void function(GLenum op, GLuint res, GLuint arg1, GLuint arg2, GLuint arg3) glShaderOp3EXT;
	void function(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW) glSwizzleEXT;
	void function(GLuint id, const(GLbyte)* addr) glVariantbvEXT;
	void function(GLuint id, const(GLdouble)* addr) glVariantdvEXT;
	void function(GLuint id, const(GLfloat)* addr) glVariantfvEXT;
	void function(GLuint id, const(GLint)* addr) glVariantivEXT;
	void function(GLuint id, GLenum type, GLuint stride, const(GLvoid)* addr) glVariantPointerEXT;
	void function(GLuint id, const(GLshort)* addr) glVariantsvEXT;
	void function(GLuint id, const(GLubyte)* addr) glVariantubvEXT;
	void function(GLuint id, const(GLuint)* addr) glVariantuivEXT;
	void function(GLuint id, const(GLushort)* addr) glVariantusvEXT;
	void function(GLuint res, GLuint in_, GLenum outX, GLenum outY, GLenum outZ, GLenum outW) glWriteMaskEXT;

	// GL EXT_vertex_weighting
	void function(GLfloat weight) glVertexWeightfEXT;
	void function(const(GLfloat)* weight) glVertexWeightfvEXT;
	void function(GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexWeightPointerEXT;

	// GL EXT_x11_sync_object
	GLsync function(GLenum external_sync_type, GLintptr external_sync, GLbitfield flags) glImportSyncEXT;

	// GL GREMEDY_frame_terminator
	void function() glFrameTerminatorGREMEDY;

	// GL GREMEDY_string_marker
	void function(GLsizei len, const(GLvoid)* string) glStringMarkerGREMEDY;

	// GL HP_image_transform
	void function(GLenum target, GLenum pname, GLfloat* params) glGetImageTransformParameterfvHP;
	void function(GLenum target, GLenum pname, GLint* params) glGetImageTransformParameterivHP;
	void function(GLenum target, GLenum pname, GLfloat param) glImageTransformParameterfHP;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glImageTransformParameterfvHP;
	void function(GLenum target, GLenum pname, GLint param) glImageTransformParameteriHP;
	void function(GLenum target, GLenum pname, const(GLint)* params) glImageTransformParameterivHP;

	// GL IBM_multimode_draw_arrays
	void function(const(GLenum)* mode, const(GLint)* first, const(GLsizei)* count, GLsizei primcount, GLint modestride) glMultiModeDrawArraysIBM;
	void function(const(GLenum)* mode, const(GLsizei)* count, GLenum type, const(GLvoid*)* indices, GLsizei primcount, GLint modestride) glMultiModeDrawElementsIBM;

	// GL IBM_vertex_array_lists
	void function(GLint size, GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glColorPointerListIBM;
	void function(GLint stride, const(GLboolean*)* pointer, GLint ptrstride) glEdgeFlagPointerListIBM;
	void function(GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glFogCoordPointerListIBM;
	void function(GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glIndexPointerListIBM;
	void function(GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glNormalPointerListIBM;
	void function(GLint size, GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glSecondaryColorPointerListIBM;
	void function(GLint size, GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glTexCoordPointerListIBM;
	void function(GLint size, GLenum type, GLint stride, const(GLvoid*)* pointer, GLint ptrstride) glVertexPointerListIBM;

	// GL INGR_blend_func_separate
	void function(GLenum sfactorRGB, GLenum dfactorRGB, GLenum sfactorAlpha, GLenum dfactorAlpha) glBlendFuncSeparateINGR;

	// GL INTEL_parallel_arrays
	void function(GLint size, GLenum type, const(GLvoid*)* pointer) glColorPointervINTEL;
	void function(GLenum type, const(GLvoid*)* pointer) glNormalPointervINTEL;
	void function(GLint size, GLenum type, const(GLvoid*)* pointer) glTexCoordPointervINTEL;
	void function(GLint size, GLenum type, const(GLvoid*)* pointer) glVertexPointervINTEL;

	// GL KHR_debug
	void function(GLDEBUGPROC callback, const(void)* userParam) glDebugMessageCallback;
	void function(GLenum source, GLenum type, GLenum severity, GLsizei count, const(GLuint)* ids, GLboolean enabled) glDebugMessageControl;
	void function(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const(GLchar)* buf) glDebugMessageInsert;
	GLuint function(GLuint count, GLsizei bufsize, GLenum* sources, GLenum* types, GLuint* ids, GLenum* severities, GLsizei* lengths, GLchar* messageLog) glGetDebugMessageLog;
	void function(GLenum identifier, GLuint name, GLsizei bufSize, GLsizei* length, GLchar* label) glGetObjectLabel;
	void function(const(void)* ptr, GLsizei bufSize, GLsizei* length, GLchar* label) glGetObjectPtrLabel;
	void function(GLenum identifier, GLuint name, GLsizei length, const(GLchar)* label) glObjectLabel;
	void function(const(void)* ptr, GLsizei length, const(GLchar)* label) glObjectPtrLabel;
	void function() glPopDebugGroup;
	void function(GLenum source, GLuint id, GLsizei length, const(GLchar)* message) glPushDebugGroup;

	// GL MESA_resize_buffers
	void function() glResizeBuffersMESA;

	// GL MESA_window_pos
	void function(GLdouble x, GLdouble y) glWindowPos2dMESA;
	void function(const(GLdouble)* v) glWindowPos2dvMESA;
	void function(GLfloat x, GLfloat y) glWindowPos2fMESA;
	void function(const(GLfloat)* v) glWindowPos2fvMESA;
	void function(GLint x, GLint y) glWindowPos2iMESA;
	void function(const(GLint)* v) glWindowPos2ivMESA;
	void function(GLshort x, GLshort y) glWindowPos2sMESA;
	void function(const(GLshort)* v) glWindowPos2svMESA;
	void function(GLdouble x, GLdouble y, GLdouble z) glWindowPos3dMESA;
	void function(const(GLdouble)* v) glWindowPos3dvMESA;
	void function(GLfloat x, GLfloat y, GLfloat z) glWindowPos3fMESA;
	void function(const(GLfloat)* v) glWindowPos3fvMESA;
	void function(GLint x, GLint y, GLint z) glWindowPos3iMESA;
	void function(const(GLint)* v) glWindowPos3ivMESA;
	void function(GLshort x, GLshort y, GLshort z) glWindowPos3sMESA;
	void function(const(GLshort)* v) glWindowPos3svMESA;
	void function(GLdouble x, GLdouble y, GLdouble z, GLdouble w) glWindowPos4dMESA;
	void function(const(GLdouble)* v) glWindowPos4dvMESA;
	void function(GLfloat x, GLfloat y, GLfloat z, GLfloat w) glWindowPos4fMESA;
	void function(const(GLfloat)* v) glWindowPos4fvMESA;
	void function(GLint x, GLint y, GLint z, GLint w) glWindowPos4iMESA;
	void function(const(GLint)* v) glWindowPos4ivMESA;
	void function(GLshort x, GLshort y, GLshort z, GLshort w) glWindowPos4sMESA;
	void function(const(GLshort)* v) glWindowPos4svMESA;

	// GL NV_bindless_texture
	GLuint64 function(GLuint texture, GLint level, GLboolean layered, GLint layer, GLenum format) glGetImageHandleNV;
	GLuint64 function(GLuint texture) glGetTextureHandleNV;
	GLuint64 function(GLuint texture, GLuint sampler) glGetTextureSamplerHandleNV;
	GLboolean function(GLuint64 handle) glIsImageHandleResidentNV;
	GLboolean function(GLuint64 handle) glIsTextureHandleResidentNV;
	void function(GLuint64 handle) glMakeImageHandleNonResidentNV;
	void function(GLuint64 handle, GLenum access) glMakeImageHandleResidentNV;
	void function(GLuint64 handle) glMakeTextureHandleNonResidentNV;
	void function(GLuint64 handle) glMakeTextureHandleResidentNV;
	void function(GLuint program, GLint location, GLuint64 value) glProgramUniformHandleui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64)* values) glProgramUniformHandleui64vNV;
	void function(GLint location, GLuint64 value) glUniformHandleui64NV;
	void function(GLint location, GLsizei count, const(GLuint64)* value) glUniformHandleui64vNV;

	// GL NV_conditional_render
	void function(GLuint id, GLenum mode) glBeginConditionalRenderNV;
	void function() glEndConditionalRenderNV;

	// GL NV_copy_image
	void function(GLuint srcName, GLenum srcTarget, GLint srcLevel, GLint srcX, GLint srcY, GLint srcZ, GLuint dstName, GLenum dstTarget, GLint dstLevel, GLint dstX, GLint dstY, GLint dstZ, GLsizei width, GLsizei height, GLsizei depth) glCopyImageSubDataNV;

	// GL NV_depth_buffer_float
	void function(GLdouble depth) glClearDepthdNV;
	void function(GLdouble zmin, GLdouble zmax) glDepthBoundsdNV;
	void function(GLdouble zNear, GLdouble zFar) glDepthRangedNV;

	// GL NV_evaluators
	void function(GLenum target, GLenum mode) glEvalMapsNV;
	void function(GLenum target, GLuint index, GLenum pname, GLfloat* params) glGetMapAttribParameterfvNV;
	void function(GLenum target, GLuint index, GLenum pname, GLint* params) glGetMapAttribParameterivNV;
	void function(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLboolean packed, GLvoid* points) glGetMapControlPointsNV;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetMapParameterfvNV;
	void function(GLenum target, GLenum pname, GLint* params) glGetMapParameterivNV;
	void function(GLenum target, GLuint index, GLenum type, GLsizei ustride, GLsizei vstride, GLint uorder, GLint vorder, GLboolean packed, const(GLvoid)* points) glMapControlPointsNV;
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glMapParameterfvNV;
	void function(GLenum target, GLenum pname, const(GLint)* params) glMapParameterivNV;

	// GL NV_explicit_multisample
	void function(GLenum pname, GLuint index, GLfloat* val) glGetMultisamplefvNV;
	void function(GLuint index, GLbitfield mask) glSampleMaskIndexedNV;
	void function(GLenum target, GLuint renderbuffer) glTexRenderbufferNV;

	// GL NV_fence
	void function(GLsizei n, const(GLuint)* fences) glDeleteFencesNV;
	void function(GLuint fence) glFinishFenceNV;
	void function(GLsizei n, GLuint* fences) glGenFencesNV;
	void function(GLuint fence, GLenum pname, GLint* params) glGetFenceivNV;
	GLboolean function(GLuint fence) glIsFenceNV;
	void function(GLuint fence, GLenum condition) glSetFenceNV;
	GLboolean function(GLuint fence) glTestFenceNV;

	// GL NV_fragment_program
	void function(GLuint id, GLsizei len, const(GLubyte)* name, GLdouble* params) glGetProgramNamedParameterdvNV;
	void function(GLuint id, GLsizei len, const(GLubyte)* name, GLfloat* params) glGetProgramNamedParameterfvNV;
	void function(GLuint id, GLsizei len, const(GLubyte)* name, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glProgramNamedParameter4dNV;
	void function(GLuint id, GLsizei len, const(GLubyte)* name, const(GLdouble)* v) glProgramNamedParameter4dvNV;
	void function(GLuint id, GLsizei len, const(GLubyte)* name, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glProgramNamedParameter4fNV;
	void function(GLuint id, GLsizei len, const(GLubyte)* name, const(GLfloat)* v) glProgramNamedParameter4fvNV;

	// GL NV_framebuffer_multisample_coverage
	void function(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLenum internalformat, GLsizei width, GLsizei height) glRenderbufferStorageMultisampleCoverageNV;

	// GL NV_geometry_program4
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level) glFramebufferTextureEXT;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLenum face) glFramebufferTextureFaceEXT;
	void function(GLenum target, GLenum attachment, GLuint texture, GLint level, GLint layer) glFramebufferTextureLayerEXT;
	void function(GLenum target, GLint limit) glProgramVertexLimitNV;

	// GL NV_gpu_program4
	void function(GLenum target, GLuint index, GLint* params) glGetProgramEnvParameterIivNV;
	void function(GLenum target, GLuint index, GLuint* params) glGetProgramEnvParameterIuivNV;
	void function(GLenum target, GLuint index, GLint* params) glGetProgramLocalParameterIivNV;
	void function(GLenum target, GLuint index, GLuint* params) glGetProgramLocalParameterIuivNV;
	void function(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w) glProgramEnvParameterI4iNV;
	void function(GLenum target, GLuint index, const(GLint)* params) glProgramEnvParameterI4ivNV;
	void function(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) glProgramEnvParameterI4uiNV;
	void function(GLenum target, GLuint index, const(GLuint)* params) glProgramEnvParameterI4uivNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLint)* params) glProgramEnvParametersI4ivNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLuint)* params) glProgramEnvParametersI4uivNV;
	void function(GLenum target, GLuint index, GLint x, GLint y, GLint z, GLint w) glProgramLocalParameterI4iNV;
	void function(GLenum target, GLuint index, const(GLint)* params) glProgramLocalParameterI4ivNV;
	void function(GLenum target, GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) glProgramLocalParameterI4uiNV;
	void function(GLenum target, GLuint index, const(GLuint)* params) glProgramLocalParameterI4uivNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLint)* params) glProgramLocalParametersI4ivNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLuint)* params) glProgramLocalParametersI4uivNV;

	// GL NV_gpu_program5
	void function(GLenum target, GLuint index, GLuint* param) glGetProgramSubroutineParameteruivNV;
	void function(GLenum target, GLsizei count, const(GLuint)* params) glProgramSubroutineParametersuivNV;

	// GL NV_gpu_shader5
	void function(GLuint program, GLint location, GLint64EXT* params) glGetUniformi64vNV;
	void function(GLuint program, GLint location, GLint64EXT x) glProgramUniform1i64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value) glProgramUniform1i64vNV;
	void function(GLuint program, GLint location, GLuint64EXT x) glProgramUniform1ui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value) glProgramUniform1ui64vNV;
	void function(GLuint program, GLint location, GLint64EXT x, GLint64EXT y) glProgramUniform2i64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value) glProgramUniform2i64vNV;
	void function(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y) glProgramUniform2ui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value) glProgramUniform2ui64vNV;
	void function(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z) glProgramUniform3i64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value) glProgramUniform3i64vNV;
	void function(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z) glProgramUniform3ui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value) glProgramUniform3ui64vNV;
	void function(GLuint program, GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w) glProgramUniform4i64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLint64EXT)* value) glProgramUniform4i64vNV;
	void function(GLuint program, GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w) glProgramUniform4ui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value) glProgramUniform4ui64vNV;
	void function(GLint location, GLint64EXT x) glUniform1i64NV;
	void function(GLint location, GLsizei count, const(GLint64EXT)* value) glUniform1i64vNV;
	void function(GLint location, GLuint64EXT x) glUniform1ui64NV;
	void function(GLint location, GLsizei count, const(GLuint64EXT)* value) glUniform1ui64vNV;
	void function(GLint location, GLint64EXT x, GLint64EXT y) glUniform2i64NV;
	void function(GLint location, GLsizei count, const(GLint64EXT)* value) glUniform2i64vNV;
	void function(GLint location, GLuint64EXT x, GLuint64EXT y) glUniform2ui64NV;
	void function(GLint location, GLsizei count, const(GLuint64EXT)* value) glUniform2ui64vNV;
	void function(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z) glUniform3i64NV;
	void function(GLint location, GLsizei count, const(GLint64EXT)* value) glUniform3i64vNV;
	void function(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z) glUniform3ui64NV;
	void function(GLint location, GLsizei count, const(GLuint64EXT)* value) glUniform3ui64vNV;
	void function(GLint location, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w) glUniform4i64NV;
	void function(GLint location, GLsizei count, const(GLint64EXT)* value) glUniform4i64vNV;
	void function(GLint location, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w) glUniform4ui64NV;
	void function(GLint location, GLsizei count, const(GLuint64EXT)* value) glUniform4ui64vNV;

	// GL NV_half_float
	void function(GLhalfNV red, GLhalfNV green, GLhalfNV blue) glColor3hNV;
	void function(const(GLhalfNV)* v) glColor3hvNV;
	void function(GLhalfNV red, GLhalfNV green, GLhalfNV blue, GLhalfNV alpha) glColor4hNV;
	void function(const(GLhalfNV)* v) glColor4hvNV;
	void function(GLhalfNV fog) glFogCoordhNV;
	void function(const(GLhalfNV)* fog) glFogCoordhvNV;
	void function(GLenum target, GLhalfNV s) glMultiTexCoord1hNV;
	void function(GLenum target, const(GLhalfNV)* v) glMultiTexCoord1hvNV;
	void function(GLenum target, GLhalfNV s, GLhalfNV t) glMultiTexCoord2hNV;
	void function(GLenum target, const(GLhalfNV)* v) glMultiTexCoord2hvNV;
	void function(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r) glMultiTexCoord3hNV;
	void function(GLenum target, const(GLhalfNV)* v) glMultiTexCoord3hvNV;
	void function(GLenum target, GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q) glMultiTexCoord4hNV;
	void function(GLenum target, const(GLhalfNV)* v) glMultiTexCoord4hvNV;
	void function(GLhalfNV nx, GLhalfNV ny, GLhalfNV nz) glNormal3hNV;
	void function(const(GLhalfNV)* v) glNormal3hvNV;
	void function(GLhalfNV red, GLhalfNV green, GLhalfNV blue) glSecondaryColor3hNV;
	void function(const(GLhalfNV)* v) glSecondaryColor3hvNV;
	void function(GLhalfNV s) glTexCoord1hNV;
	void function(const(GLhalfNV)* v) glTexCoord1hvNV;
	void function(GLhalfNV s, GLhalfNV t) glTexCoord2hNV;
	void function(const(GLhalfNV)* v) glTexCoord2hvNV;
	void function(GLhalfNV s, GLhalfNV t, GLhalfNV r) glTexCoord3hNV;
	void function(const(GLhalfNV)* v) glTexCoord3hvNV;
	void function(GLhalfNV s, GLhalfNV t, GLhalfNV r, GLhalfNV q) glTexCoord4hNV;
	void function(const(GLhalfNV)* v) glTexCoord4hvNV;
	void function(GLhalfNV x, GLhalfNV y) glVertex2hNV;
	void function(const(GLhalfNV)* v) glVertex2hvNV;
	void function(GLhalfNV x, GLhalfNV y, GLhalfNV z) glVertex3hNV;
	void function(const(GLhalfNV)* v) glVertex3hvNV;
	void function(GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w) glVertex4hNV;
	void function(const(GLhalfNV)* v) glVertex4hvNV;
	void function(GLuint index, GLhalfNV x) glVertexAttrib1hNV;
	void function(GLuint index, const(GLhalfNV)* v) glVertexAttrib1hvNV;
	void function(GLuint index, GLhalfNV x, GLhalfNV y) glVertexAttrib2hNV;
	void function(GLuint index, const(GLhalfNV)* v) glVertexAttrib2hvNV;
	void function(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z) glVertexAttrib3hNV;
	void function(GLuint index, const(GLhalfNV)* v) glVertexAttrib3hvNV;
	void function(GLuint index, GLhalfNV x, GLhalfNV y, GLhalfNV z, GLhalfNV w) glVertexAttrib4hNV;
	void function(GLuint index, const(GLhalfNV)* v) glVertexAttrib4hvNV;
	void function(GLuint index, GLsizei n, const(GLhalfNV)* v) glVertexAttribs1hvNV;
	void function(GLuint index, GLsizei n, const(GLhalfNV)* v) glVertexAttribs2hvNV;
	void function(GLuint index, GLsizei n, const(GLhalfNV)* v) glVertexAttribs3hvNV;
	void function(GLuint index, GLsizei n, const(GLhalfNV)* v) glVertexAttribs4hvNV;
	void function(GLhalfNV weight) glVertexWeighthNV;
	void function(const(GLhalfNV)* weight) glVertexWeighthvNV;

	// GL NV_occlusion_query
	void function(GLuint id) glBeginOcclusionQueryNV;
	void function(GLsizei n, const(GLuint)* ids) glDeleteOcclusionQueriesNV;
	void function() glEndOcclusionQueryNV;
	void function(GLsizei n, GLuint* ids) glGenOcclusionQueriesNV;
	void function(GLuint id, GLenum pname, GLint* params) glGetOcclusionQueryivNV;
	void function(GLuint id, GLenum pname, GLuint* params) glGetOcclusionQueryuivNV;
	GLboolean function(GLuint id) glIsOcclusionQueryNV;

	// GL NV_parameter_buffer_object
	void function(GLenum target, GLuint buffer, GLuint index, GLsizei count, const(GLfloat)* params) glProgramBufferParametersfvNV;
	void function(GLenum target, GLuint buffer, GLuint index, GLsizei count, const(GLint)* params) glProgramBufferParametersIivNV;
	void function(GLenum target, GLuint buffer, GLuint index, GLsizei count, const(GLuint)* params) glProgramBufferParametersIuivNV;

	// GL NV_path_rendering
	void function(GLuint resultPath, GLuint srcPath) glCopyPathNV;
	void function(GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues) glCoverFillPathInstancedNV;
	void function(GLuint path, GLenum coverMode) glCoverFillPathNV;
	void function(GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLenum coverMode, GLenum transformType, const(GLfloat)* transformValues) glCoverStrokePathInstancedNV;
	void function(GLuint path, GLenum coverMode) glCoverStrokePathNV;
	void function(GLuint path, GLsizei range) glDeletePathsNV;
	GLuint function(GLsizei range) glGenPathsNV;
	void function(GLenum color, GLenum pname, GLfloat* value) glGetPathColorGenfvNV;
	void function(GLenum color, GLenum pname, GLint* value) glGetPathColorGenivNV;
	void function(GLuint path, GLubyte* commands) glGetPathCommandsNV;
	void function(GLuint path, GLfloat* coords) glGetPathCoordsNV;
	void function(GLuint path, GLfloat* dashArray) glGetPathDashArrayNV;
	GLfloat function(GLuint path, GLsizei startSegment, GLsizei numSegments) glGetPathLengthNV;
	void function(GLbitfield metricQueryMask, GLuint firstPathName, GLsizei numPaths, GLsizei stride, GLfloat* metrics) glGetPathMetricRangeNV;
	void function(GLbitfield metricQueryMask, GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLsizei stride, GLfloat* metrics) glGetPathMetricsNV;
	void function(GLuint path, GLenum pname, GLfloat* value) glGetPathParameterfvNV;
	void function(GLuint path, GLenum pname, GLint* value) glGetPathParameterivNV;
	void function(GLenum pathListMode, GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLfloat advanceScale, GLfloat kerningScale, GLenum transformType, GLfloat* returnedSpacing) glGetPathSpacingNV;
	void function(GLenum texCoordSet, GLenum pname, GLfloat* value) glGetPathTexGenfvNV;
	void function(GLenum texCoordSet, GLenum pname, GLint* value) glGetPathTexGenivNV;
	void function(GLuint resultPath, GLuint pathA, GLuint pathB, GLfloat weight) glInterpolatePathsNV;
	GLboolean function(GLuint path) glIsPathNV;
	GLboolean function(GLuint path, GLuint mask, GLfloat x, GLfloat y) glIsPointInFillPathNV;
	GLboolean function(GLuint path, GLfloat x, GLfloat y) glIsPointInStrokePathNV;
	void function(GLenum color, GLenum genMode, GLenum colorFormat, const(GLfloat)* coeffs) glPathColorGenNV;
	void function(GLuint path, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(GLvoid)* coords) glPathCommandsNV;
	void function(GLuint path, GLsizei numCoords, GLenum coordType, const(GLvoid)* coords) glPathCoordsNV;
	void function(GLenum func) glPathCoverDepthFuncNV;
	void function(GLuint path, GLsizei dashCount, const(GLfloat)* dashArray) glPathDashArrayNV;
	void function(GLenum genMode) glPathFogGenNV;
	void function(GLuint firstPathName, GLenum fontTarget, const(GLvoid)* fontName, GLbitfield fontStyle, GLuint firstGlyph, GLsizei numGlyphs, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale) glPathGlyphRangeNV;
	void function(GLuint firstPathName, GLenum fontTarget, const(GLvoid)* fontName, GLbitfield fontStyle, GLsizei numGlyphs, GLenum type, const(GLvoid)* charcodes, GLenum handleMissingGlyphs, GLuint pathParameterTemplate, GLfloat emScale) glPathGlyphsNV;
	void function(GLuint path, GLenum pname, GLfloat value) glPathParameterfNV;
	void function(GLuint path, GLenum pname, const(GLfloat)* value) glPathParameterfvNV;
	void function(GLuint path, GLenum pname, GLint value) glPathParameteriNV;
	void function(GLuint path, GLenum pname, const(GLint)* value) glPathParameterivNV;
	void function(GLfloat factor, GLfloat units) glPathStencilDepthOffsetNV;
	void function(GLenum func, GLint ref_, GLuint mask) glPathStencilFuncNV;
	void function(GLuint path, GLenum format, GLsizei length, const(GLvoid)* pathString) glPathStringNV;
	void function(GLuint path, GLsizei commandStart, GLsizei commandsToDelete, GLsizei numCommands, const(GLubyte)* commands, GLsizei numCoords, GLenum coordType, const(GLvoid)* coords) glPathSubCommandsNV;
	void function(GLuint path, GLsizei coordStart, GLsizei numCoords, GLenum coordType, const(GLvoid)* coords) glPathSubCoordsNV;
	void function(GLenum texCoordSet, GLenum genMode, GLint components, const(GLfloat)* coeffs) glPathTexGenNV;
	GLboolean function(GLuint path, GLsizei startSegment, GLsizei numSegments, GLfloat distance, GLfloat* x, GLfloat* y, GLfloat* tangentX, GLfloat* tangentY) glPointAlongPathNV;
	void function(GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLenum fillMode, GLuint mask, GLenum transformType, const(GLfloat)* transformValues) glStencilFillPathInstancedNV;
	void function(GLuint path, GLenum fillMode, GLuint mask) glStencilFillPathNV;
	void function(GLsizei numPaths, GLenum pathNameType, const(GLvoid)* paths, GLuint pathBase, GLint reference, GLuint mask, GLenum transformType, const(GLfloat)* transformValues) glStencilStrokePathInstancedNV;
	void function(GLuint path, GLint reference, GLuint mask) glStencilStrokePathNV;
	void function(GLuint resultPath, GLuint srcPath, GLenum transformType, const(GLfloat)* transformValues) glTransformPathNV;
	void function(GLuint resultPath, GLsizei numPaths, const(GLuint)* paths, const(GLfloat)* weights) glWeightPathsNV;

	// GL NV_pixel_data_range
	void function(GLenum target) glFlushPixelDataRangeNV;
	void function(GLenum target, GLsizei length, const(GLvoid)* pointer) glPixelDataRangeNV;

	// GL NV_point_sprite
	void function(GLenum pname, GLint param) glPointParameteriNV;
	void function(GLenum pname, const(GLint)* params) glPointParameterivNV;

	// GL NV_present_video
	void function(GLuint video_slot, GLenum pname, GLint64EXT* params) glGetVideoi64vNV;
	void function(GLuint video_slot, GLenum pname, GLint* params) glGetVideoivNV;
	void function(GLuint video_slot, GLenum pname, GLuint64EXT* params) glGetVideoui64vNV;
	void function(GLuint video_slot, GLenum pname, GLuint* params) glGetVideouivNV;
	void function(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLenum target1, GLuint fill1, GLenum target2, GLuint fill2, GLenum target3, GLuint fill3) glPresentFrameDualFillNV;
	void function(GLuint video_slot, GLuint64EXT minPresentTime, GLuint beginPresentTimeId, GLuint presentDurationId, GLenum type, GLenum target0, GLuint fill0, GLuint key0, GLenum target1, GLuint fill1, GLuint key1) glPresentFrameKeyedNV;

	// GL NV_primitive_restart
	void function(GLuint index) glPrimitiveRestartIndexNV;
	void function() glPrimitiveRestartNV;

	// GL NV_register_combiners
	void function(GLenum stage, GLenum portion, GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage) glCombinerInputNV;
	void function(GLenum stage, GLenum portion, GLenum abOutput, GLenum cdOutput, GLenum sumOutput, GLenum scale, GLenum bias, GLboolean abDotProduct, GLboolean cdDotProduct, GLboolean muxSum) glCombinerOutputNV;
	void function(GLenum pname, GLfloat param) glCombinerParameterfNV;
	void function(GLenum pname, const(GLfloat)* params) glCombinerParameterfvNV;
	void function(GLenum pname, GLint param) glCombinerParameteriNV;
	void function(GLenum pname, const(GLint)* params) glCombinerParameterivNV;
	void function(GLenum variable, GLenum input, GLenum mapping, GLenum componentUsage) glFinalCombinerInputNV;
	void function(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLfloat* params) glGetCombinerInputParameterfvNV;
	void function(GLenum stage, GLenum portion, GLenum variable, GLenum pname, GLint* params) glGetCombinerInputParameterivNV;
	void function(GLenum stage, GLenum portion, GLenum pname, GLfloat* params) glGetCombinerOutputParameterfvNV;
	void function(GLenum stage, GLenum portion, GLenum pname, GLint* params) glGetCombinerOutputParameterivNV;
	void function(GLenum variable, GLenum pname, GLfloat* params) glGetFinalCombinerInputParameterfvNV;
	void function(GLenum variable, GLenum pname, GLint* params) glGetFinalCombinerInputParameterivNV;

	// GL NV_register_combiners2
	void function(GLenum stage, GLenum pname, const(GLfloat)* params) glCombinerStageParameterfvNV;
	void function(GLenum stage, GLenum pname, GLfloat* params) glGetCombinerStageParameterfvNV;

	// GL NV_shader_buffer_load
	void function(GLenum target, GLenum pname, GLuint64EXT* params) glGetBufferParameterui64vNV;
	void function(GLenum value, GLuint64EXT* result) glGetIntegerui64vNV;
	void function(GLuint buffer, GLenum pname, GLuint64EXT* params) glGetNamedBufferParameterui64vNV;
	void function(GLuint program, GLint location, GLuint64EXT* params) glGetUniformui64vNV;
	GLboolean function(GLenum target) glIsBufferResidentNV;
	GLboolean function(GLuint buffer) glIsNamedBufferResidentNV;
	void function(GLenum target) glMakeBufferNonResidentNV;
	void function(GLenum target, GLenum access) glMakeBufferResidentNV;
	void function(GLuint buffer) glMakeNamedBufferNonResidentNV;
	void function(GLuint buffer, GLenum access) glMakeNamedBufferResidentNV;
	void function(GLuint program, GLint location, GLuint64EXT value) glProgramUniformui64NV;
	void function(GLuint program, GLint location, GLsizei count, const(GLuint64EXT)* value) glProgramUniformui64vNV;
	void function(GLint location, GLuint64EXT value) glUniformui64NV;
	void function(GLint location, GLsizei count, const(GLuint64EXT)* value) glUniformui64vNV;

	// GL NV_texture_barrier
	void function() glTextureBarrierNV;

	// GL NV_texture_multisample
	void function(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations) glTexImage2DMultisampleCoverageNV;
	void function(GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations) glTexImage3DMultisampleCoverageNV;
	void function(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations) glTextureImage2DMultisampleCoverageNV;
	void function(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLboolean fixedSampleLocations) glTextureImage2DMultisampleNV;
	void function(GLuint texture, GLenum target, GLsizei coverageSamples, GLsizei colorSamples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations) glTextureImage3DMultisampleCoverageNV;
	void function(GLuint texture, GLenum target, GLsizei samples, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLboolean fixedSampleLocations) glTextureImage3DMultisampleNV;

	// GL NV_transform_feedback
	void function(GLuint program, const(GLchar)* name) glActiveVaryingNV;
	void function(GLenum primitiveMode) glBeginTransformFeedbackNV;
	void function(GLenum target, GLuint index, GLuint buffer) glBindBufferBaseNV;
	void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset) glBindBufferOffsetNV;
	void function(GLenum target, GLuint index, GLuint buffer, GLintptr offset, GLsizeiptr size) glBindBufferRangeNV;
	void function() glEndTransformFeedbackNV;
	void function(GLuint program, GLuint index, GLsizei bufSize, GLsizei* length, GLsizei* size, GLenum* type, GLchar* name) glGetActiveVaryingNV;
	void function(GLuint program, GLuint index, GLint* location) glGetTransformFeedbackVaryingNV;
	GLint function(GLuint program, const(GLchar)* name) glGetVaryingLocationNV;
	void function(GLsizei count, const(GLint)* attribs, GLenum bufferMode) glTransformFeedbackAttribsNV;
	void function(GLsizei count, const(GLint)* attribs, GLsizei nbuffers, const(GLint)* bufstreams, GLenum bufferMode) glTransformFeedbackStreamAttribsNV;
	void function(GLuint program, GLsizei count, const(GLint)* locations, GLenum bufferMode) glTransformFeedbackVaryingsNV;

	// GL NV_transform_feedback2
	void function(GLenum target, GLuint id) glBindTransformFeedbackNV;
	void function(GLsizei n, const(GLuint)* ids) glDeleteTransformFeedbacksNV;
	void function(GLenum mode, GLuint id) glDrawTransformFeedbackNV;
	void function(GLsizei n, GLuint* ids) glGenTransformFeedbacksNV;
	GLboolean function(GLuint id) glIsTransformFeedbackNV;
	void function() glPauseTransformFeedbackNV;
	void function() glResumeTransformFeedbackNV;

	// GL NV_vdpau_interop
	void function() glVDPAUFiniNV;
	void function(GLvdpauSurfaceNV surface, GLenum pname, GLsizei bufSize, GLsizei* length, GLint* values) glVDPAUGetSurfaceivNV;
	void function(const(GLvoid)* vdpDevice, const(GLvoid)* getProcAddress) glVDPAUInitNV;
	void function(GLvdpauSurfaceNV surface) glVDPAUIsSurfaceNV;
	void function(GLsizei numSurfaces, const(GLvdpauSurfaceNV)* surfaces) glVDPAUMapSurfacesNV;
	GLvdpauSurfaceNV function(GLvoid* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames) glVDPAURegisterOutputSurfaceNV;
	GLvdpauSurfaceNV function(const(GLvoid)* vdpSurface, GLenum target, GLsizei numTextureNames, const(GLuint)* textureNames) glVDPAURegisterVideoSurfaceNV;
	void function(GLvdpauSurfaceNV surface, GLenum access) glVDPAUSurfaceAccessNV;
	void function(GLsizei numSurface, const(GLvdpauSurfaceNV)* surfaces) glVDPAUUnmapSurfacesNV;
	void function(GLvdpauSurfaceNV surface) glVDPAUUnregisterSurfaceNV;

	// GL NV_vertex_array_range
	void function() glFlushVertexArrayRangeNV;
	void function(GLsizei length, const(GLvoid)* pointer) glVertexArrayRangeNV;

	// GL NV_vertex_attrib_integer_64bit
	void function(GLuint index, GLenum pname, GLint64EXT* params) glGetVertexAttribLi64vNV;
	void function(GLuint index, GLenum pname, GLuint64EXT* params) glGetVertexAttribLui64vNV;
	void function(GLuint index, GLint64EXT x) glVertexAttribL1i64NV;
	void function(GLuint index, const(GLint64EXT)* v) glVertexAttribL1i64vNV;
	void function(GLuint index, GLuint64EXT x) glVertexAttribL1ui64NV;
	void function(GLuint index, const(GLuint64EXT)* v) glVertexAttribL1ui64vNV;
	void function(GLuint index, GLint64EXT x, GLint64EXT y) glVertexAttribL2i64NV;
	void function(GLuint index, const(GLint64EXT)* v) glVertexAttribL2i64vNV;
	void function(GLuint index, GLuint64EXT x, GLuint64EXT y) glVertexAttribL2ui64NV;
	void function(GLuint index, const(GLuint64EXT)* v) glVertexAttribL2ui64vNV;
	void function(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z) glVertexAttribL3i64NV;
	void function(GLuint index, const(GLint64EXT)* v) glVertexAttribL3i64vNV;
	void function(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z) glVertexAttribL3ui64NV;
	void function(GLuint index, const(GLuint64EXT)* v) glVertexAttribL3ui64vNV;
	void function(GLuint index, GLint64EXT x, GLint64EXT y, GLint64EXT z, GLint64EXT w) glVertexAttribL4i64NV;
	void function(GLuint index, const(GLint64EXT)* v) glVertexAttribL4i64vNV;
	void function(GLuint index, GLuint64EXT x, GLuint64EXT y, GLuint64EXT z, GLuint64EXT w) glVertexAttribL4ui64NV;
	void function(GLuint index, const(GLuint64EXT)* v) glVertexAttribL4ui64vNV;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride) glVertexAttribLFormatNV;

	// GL NV_vertex_buffer_unified_memory
	void function(GLenum pname, GLuint index, GLuint64EXT address, GLsizeiptr length) glBufferAddressRangeNV;
	void function(GLint size, GLenum type, GLsizei stride) glColorFormatNV;
	void function(GLsizei stride) glEdgeFlagFormatNV;
	void function(GLenum type, GLsizei stride) glFogCoordFormatNV;
	void function(GLenum value, GLuint index, GLuint64EXT* result) glGetIntegerui64i_vNV;
	void function(GLenum type, GLsizei stride) glIndexFormatNV;
	void function(GLenum type, GLsizei stride) glNormalFormatNV;
	void function(GLint size, GLenum type, GLsizei stride) glSecondaryColorFormatNV;
	void function(GLint size, GLenum type, GLsizei stride) glTexCoordFormatNV;
	void function(GLuint index, GLint size, GLenum type, GLboolean normalized, GLsizei stride) glVertexAttribFormatNV;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride) glVertexAttribIFormatNV;
	void function(GLint size, GLenum type, GLsizei stride) glVertexFormatNV;

	// GL NV_vertex_program
	GLboolean function(GLsizei n, const(GLuint)* programs, GLboolean* residences) glAreProgramsResidentNV;
	void function(GLenum target, GLuint id) glBindProgramNV;
	void function(GLsizei n, const(GLuint)* programs) glDeleteProgramsNV;
	void function(GLenum target, GLuint id, const(GLfloat)* params) glExecuteProgramNV;
	void function(GLsizei n, GLuint* programs) glGenProgramsNV;
	void function(GLuint id, GLenum pname, GLint* params) glGetProgramivNV;
	void function(GLenum target, GLuint index, GLenum pname, GLdouble* params) glGetProgramParameterdvNV;
	void function(GLenum target, GLuint index, GLenum pname, GLfloat* params) glGetProgramParameterfvNV;
	void function(GLuint id, GLenum pname, GLubyte* program) glGetProgramStringNV;
	void function(GLenum target, GLuint address, GLenum pname, GLint* params) glGetTrackMatrixivNV;
	void function(GLuint index, GLenum pname, GLdouble* params) glGetVertexAttribdvNV;
	void function(GLuint index, GLenum pname, GLfloat* params) glGetVertexAttribfvNV;
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribivNV;
	void function(GLuint index, GLenum pname, GLvoid** pointer) glGetVertexAttribPointervNV;
	GLboolean function(GLuint id) glIsProgramNV;
	void function(GLenum target, GLuint id, GLsizei len, const(GLubyte)* program) glLoadProgramNV;
	void function(GLenum target, GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glProgramParameter4dNV;
	void function(GLenum target, GLuint index, const(GLdouble)* v) glProgramParameter4dvNV;
	void function(GLenum target, GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glProgramParameter4fNV;
	void function(GLenum target, GLuint index, const(GLfloat)* v) glProgramParameter4fvNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLdouble)* v) glProgramParameters4dvNV;
	void function(GLenum target, GLuint index, GLsizei count, const(GLfloat)* v) glProgramParameters4fvNV;
	void function(GLsizei n, const(GLuint)* programs) glRequestResidentProgramsNV;
	void function(GLenum target, GLuint address, GLenum matrix, GLenum transform) glTrackMatrixNV;
	void function(GLuint index, GLdouble x) glVertexAttrib1dNV;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib1dvNV;
	void function(GLuint index, GLfloat x) glVertexAttrib1fNV;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib1fvNV;
	void function(GLuint index, GLshort x) glVertexAttrib1sNV;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib1svNV;
	void function(GLuint index, GLdouble x, GLdouble y) glVertexAttrib2dNV;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib2dvNV;
	void function(GLuint index, GLfloat x, GLfloat y) glVertexAttrib2fNV;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib2fvNV;
	void function(GLuint index, GLshort x, GLshort y) glVertexAttrib2sNV;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib2svNV;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z) glVertexAttrib3dNV;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib3dvNV;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z) glVertexAttrib3fNV;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib3fvNV;
	void function(GLuint index, GLshort x, GLshort y, GLshort z) glVertexAttrib3sNV;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib3svNV;
	void function(GLuint index, GLdouble x, GLdouble y, GLdouble z, GLdouble w) glVertexAttrib4dNV;
	void function(GLuint index, const(GLdouble)* v) glVertexAttrib4dvNV;
	void function(GLuint index, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glVertexAttrib4fNV;
	void function(GLuint index, const(GLfloat)* v) glVertexAttrib4fvNV;
	void function(GLuint index, GLshort x, GLshort y, GLshort z, GLshort w) glVertexAttrib4sNV;
	void function(GLuint index, const(GLshort)* v) glVertexAttrib4svNV;
	void function(GLuint index, GLubyte x, GLubyte y, GLubyte z, GLubyte w) glVertexAttrib4ubNV;
	void function(GLuint index, const(GLubyte)* v) glVertexAttrib4ubvNV;
	void function(GLuint index, GLint fsize, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexAttribPointerNV;
	void function(GLuint index, GLsizei count, const(GLdouble)* v) glVertexAttribs1dvNV;
	void function(GLuint index, GLsizei count, const(GLfloat)* v) glVertexAttribs1fvNV;
	void function(GLuint index, GLsizei count, const(GLshort)* v) glVertexAttribs1svNV;
	void function(GLuint index, GLsizei count, const(GLdouble)* v) glVertexAttribs2dvNV;
	void function(GLuint index, GLsizei count, const(GLfloat)* v) glVertexAttribs2fvNV;
	void function(GLuint index, GLsizei count, const(GLshort)* v) glVertexAttribs2svNV;
	void function(GLuint index, GLsizei count, const(GLdouble)* v) glVertexAttribs3dvNV;
	void function(GLuint index, GLsizei count, const(GLfloat)* v) glVertexAttribs3fvNV;
	void function(GLuint index, GLsizei count, const(GLshort)* v) glVertexAttribs3svNV;
	void function(GLuint index, GLsizei count, const(GLdouble)* v) glVertexAttribs4dvNV;
	void function(GLuint index, GLsizei count, const(GLfloat)* v) glVertexAttribs4fvNV;
	void function(GLuint index, GLsizei count, const(GLshort)* v) glVertexAttribs4svNV;
	void function(GLuint index, GLsizei count, const(GLubyte)* v) glVertexAttribs4ubvNV;

	// GL NV_vertex_program4
	void function(GLuint index, GLenum pname, GLint* params) glGetVertexAttribIivEXT;
	void function(GLuint index, GLenum pname, GLuint* params) glGetVertexAttribIuivEXT;
	void function(GLuint index, GLint x) glVertexAttribI1iEXT;
	void function(GLuint index, const(GLint)* v) glVertexAttribI1ivEXT;
	void function(GLuint index, GLuint x) glVertexAttribI1uiEXT;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI1uivEXT;
	void function(GLuint index, GLint x, GLint y) glVertexAttribI2iEXT;
	void function(GLuint index, const(GLint)* v) glVertexAttribI2ivEXT;
	void function(GLuint index, GLuint x, GLuint y) glVertexAttribI2uiEXT;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI2uivEXT;
	void function(GLuint index, GLint x, GLint y, GLint z) glVertexAttribI3iEXT;
	void function(GLuint index, const(GLint)* v) glVertexAttribI3ivEXT;
	void function(GLuint index, GLuint x, GLuint y, GLuint z) glVertexAttribI3uiEXT;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI3uivEXT;
	void function(GLuint index, const(GLbyte)* v) glVertexAttribI4bvEXT;
	void function(GLuint index, GLint x, GLint y, GLint z, GLint w) glVertexAttribI4iEXT;
	void function(GLuint index, const(GLint)* v) glVertexAttribI4ivEXT;
	void function(GLuint index, const(GLshort)* v) glVertexAttribI4svEXT;
	void function(GLuint index, const(GLubyte)* v) glVertexAttribI4ubvEXT;
	void function(GLuint index, GLuint x, GLuint y, GLuint z, GLuint w) glVertexAttribI4uiEXT;
	void function(GLuint index, const(GLuint)* v) glVertexAttribI4uivEXT;
	void function(GLuint index, const(GLushort)* v) glVertexAttribI4usvEXT;
	void function(GLuint index, GLint size, GLenum type, GLsizei stride, const(GLvoid)* pointer) glVertexAttribIPointerEXT;

	// GL NV_video_capture
	void function(GLuint video_capture_slot) glBeginVideoCaptureNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLintptrARB offset) glBindVideoCaptureStreamBufferNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum frame_region, GLenum target, GLuint texture) glBindVideoCaptureStreamTextureNV;
	void function(GLuint video_capture_slot) glEndVideoCaptureNV;
	void function(GLuint video_capture_slot, GLenum pname, GLint* params) glGetVideoCaptureivNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, GLdouble* params) glGetVideoCaptureStreamdvNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, GLfloat* params) glGetVideoCaptureStreamfvNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, GLint* params) glGetVideoCaptureStreamivNV;
	GLenum function(GLuint video_capture_slot, GLuint* sequence_num, GLuint64EXT* capture_time) glVideoCaptureNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLdouble)* params) glVideoCaptureStreamParameterdvNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLfloat)* params) glVideoCaptureStreamParameterfvNV;
	void function(GLuint video_capture_slot, GLuint stream, GLenum pname, const(GLint)* params) glVideoCaptureStreamParameterivNV;

	// GL PGI_misc_hints
	void function(GLenum target, GLint mode) glHintPGI;

	// GL SGI_color_table
	void function(GLenum target, GLenum pname, const(GLfloat)* params) glColorTableParameterfvSGI;
	void function(GLenum target, GLenum pname, const(GLint)* params) glColorTableParameterivSGI;
	void function(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const(GLvoid)* table) glColorTableSGI;
	void function(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width) glCopyColorTableSGI;
	void function(GLenum target, GLenum pname, GLfloat* params) glGetColorTableParameterfvSGI;
	void function(GLenum target, GLenum pname, GLint* params) glGetColorTableParameterivSGI;
	void function(GLenum target, GLenum format, GLenum type, GLvoid* table) glGetColorTableSGI;

	// GL SGIS_detail_texture
	void function(GLenum target, GLsizei n, const(GLfloat)* points) glDetailTexFuncSGIS;
	void function(GLenum target, GLfloat* points) glGetDetailTexFuncSGIS;

	// GL SGIS_fog_function
	void function(GLsizei n, const(GLfloat)* points) glFogFuncSGIS;
	void function(GLfloat* points) glGetFogFuncSGIS;

	// GL SGIS_multisample
	void function(GLclampf value, GLboolean invert) glSampleMaskSGIS;
	void function(GLenum pattern) glSamplePatternSGIS;

	// GL SGIS_pixel_texture
	void function(GLenum pname, GLfloat* params) glGetPixelTexGenParameterfvSGIS;
	void function(GLenum pname, GLint* params) glGetPixelTexGenParameterivSGIS;
	void function(GLenum pname, GLfloat param) glPixelTexGenParameterfSGIS;
	void function(GLenum pname, const(GLfloat)* params) glPixelTexGenParameterfvSGIS;
	void function(GLenum pname, GLint param) glPixelTexGenParameteriSGIS;
	void function(GLenum pname, const(GLint)* params) glPixelTexGenParameterivSGIS;

	// GL SGIS_point_parameters
	void function(GLenum pname, GLfloat param) glPointParameterfSGIS;
	void function(GLenum pname, const(GLfloat)* params) glPointParameterfvSGIS;

	// GL SGIS_sharpen_texture
	void function(GLenum target, GLfloat* points) glGetSharpenTexFuncSGIS;
	void function(GLenum target, GLsizei n, const(GLfloat)* points) glSharpenTexFuncSGIS;

	// GL SGIS_texture_color_mask
	void function(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha) glTextureColorMaskSGIS;

	// GL SGIS_texture_filter4
	void function(GLenum target, GLenum filter, GLfloat* weights) glGetTexFilterFuncSGIS;
	void function(GLenum target, GLenum filter, GLsizei n, const(GLfloat)* weights) glTexFilterFuncSGIS;

	// GL SGIS_texture4D
	void function(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLint border, GLenum format, GLenum type, const(GLvoid)* pixels) glTexImage4DSGIS;
	void function(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint woffset, GLsizei width, GLsizei height, GLsizei depth, GLsizei size4d, GLenum format, GLenum type, const(GLvoid)* pixels) glTexSubImage4DSGIS;

	// GL SGIX_async
	void function(GLuint marker) glAsyncMarkerSGIX;
	void function(GLuint marker, GLsizei range) glDeleteAsyncMarkersSGIX;
	GLint function(GLuint* markerp) glFinishAsyncSGIX;
	GLuint function(GLsizei range) glGenAsyncMarkersSGIX;
	GLboolean function(GLuint marker) glIsAsyncMarkerSGIX;
	GLint function(GLuint* markerp) glPollAsyncSGIX;

	// GL SGIX_flush_raster
	void function() glFlushRasterSGIX;

	// GL SGIX_fragment_lighting
	void function(GLenum face, GLenum mode) glFragmentColorMaterialSGIX;
	void function(GLenum light, GLenum pname, GLfloat param) glFragmentLightfSGIX;
	void function(GLenum light, GLenum pname, const(GLfloat)* params) glFragmentLightfvSGIX;
	void function(GLenum light, GLenum pname, GLint param) glFragmentLightiSGIX;
	void function(GLenum light, GLenum pname, const(GLint)* params) glFragmentLightivSGIX;
	void function(GLenum pname, GLfloat param) glFragmentLightModelfSGIX;
	void function(GLenum pname, const(GLfloat)* params) glFragmentLightModelfvSGIX;
	void function(GLenum pname, GLint param) glFragmentLightModeliSGIX;
	void function(GLenum pname, const(GLint)* params) glFragmentLightModelivSGIX;
	void function(GLenum face, GLenum pname, GLfloat param) glFragmentMaterialfSGIX;
	void function(GLenum face, GLenum pname, const(GLfloat)* params) glFragmentMaterialfvSGIX;
	void function(GLenum face, GLenum pname, GLint param) glFragmentMaterialiSGIX;
	void function(GLenum face, GLenum pname, const(GLint)* params) glFragmentMaterialivSGIX;
	void function(GLenum light, GLenum pname, GLfloat* params) glGetFragmentLightfvSGIX;
	void function(GLenum light, GLenum pname, GLint* params) glGetFragmentLightivSGIX;
	void function(GLenum face, GLenum pname, GLfloat* params) glGetFragmentMaterialfvSGIX;
	void function(GLenum face, GLenum pname, GLint* params) glGetFragmentMaterialivSGIX;
	void function(GLenum pname, GLint param) glLightEnviSGIX;

	// GL SGIX_framezoom
	void function(GLint factor) glFrameZoomSGIX;

	// GL SGIX_igloo_interface
	void function(GLenum pname, const(GLvoid)* params) glIglooInterfaceSGIX;

	// GL SGIX_instruments
	GLint function() glGetInstrumentsSGIX;
	void function(GLsizei size, GLint* buffer) glInstrumentsBufferSGIX;
	GLint function(GLint* marker_p) glPollInstrumentsSGIX;
	void function(GLint marker) glReadInstrumentsSGIX;
	void function() glStartInstrumentsSGIX;
	void function(GLint marker) glStopInstrumentsSGIX;

	// GL SGIX_list_priority
	void function(GLuint list, GLenum pname, GLfloat* params) glGetListParameterfvSGIX;
	void function(GLuint list, GLenum pname, GLint* params) glGetListParameterivSGIX;
	void function(GLuint list, GLenum pname, GLfloat param) glListParameterfSGIX;
	void function(GLuint list, GLenum pname, const(GLfloat)* params) glListParameterfvSGIX;
	void function(GLuint list, GLenum pname, GLint param) glListParameteriSGIX;
	void function(GLuint list, GLenum pname, const(GLint)* params) glListParameterivSGIX;

	// GL SGIX_pixel_texture
	void function(GLenum mode) glPixelTexGenSGIX;

	// GL SGIX_polynomial_ffd
	void function(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, GLdouble w1, GLdouble w2, GLint wstride, GLint worder, const(GLdouble)* points) glDeformationMap3dSGIX;
	void function(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, GLfloat w1, GLfloat w2, GLint wstride, GLint worder, const(GLfloat)* points) glDeformationMap3fSGIX;
	void function(GLbitfield mask) glDeformSGIX;
	void function(GLbitfield mask) glLoadIdentityDeformationMapSGIX;

	// GL SGIX_reference_plane
	void function(const(GLdouble)* equation) glReferencePlaneSGIX;

	// GL SGIX_sprite
	void function(GLenum pname, GLfloat param) glSpriteParameterfSGIX;
	void function(GLenum pname, const(GLfloat)* params) glSpriteParameterfvSGIX;
	void function(GLenum pname, GLint param) glSpriteParameteriSGIX;
	void function(GLenum pname, const(GLint)* params) glSpriteParameterivSGIX;

	// GL SGIX_tag_sample_buffer
	void function() glTagSampleBufferSGIX;

	// GL SUN_global_alpha
	void function(GLbyte factor) glGlobalAlphaFactorbSUN;
	void function(GLdouble factor) glGlobalAlphaFactordSUN;
	void function(GLfloat factor) glGlobalAlphaFactorfSUN;
	void function(GLint factor) glGlobalAlphaFactoriSUN;
	void function(GLshort factor) glGlobalAlphaFactorsSUN;
	void function(GLubyte factor) glGlobalAlphaFactorubSUN;
	void function(GLuint factor) glGlobalAlphaFactoruiSUN;
	void function(GLushort factor) glGlobalAlphaFactorusSUN;

	// GL SUN_mesh_array
	void function(GLenum mode, GLint first, GLsizei count, GLsizei width) glDrawMeshArraysSUN;

	// GL SUN_triangle_list
	void function(GLenum type, GLsizei stride, const(GLvoid*)* pointer) glReplacementCodePointerSUN;
	void function(GLubyte code) glReplacementCodeubSUN;
	void function(const(GLubyte)* code) glReplacementCodeubvSUN;
	void function(GLuint code) glReplacementCodeuiSUN;
	void function(const(GLuint)* code) glReplacementCodeuivSUN;
	void function(GLushort code) glReplacementCodeusSUN;
	void function(const(GLushort)* code) glReplacementCodeusvSUN;

	// GL SUN_vertex
	void function(GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z) glColor3fVertex3fSUN;
	void function(const(GLfloat)* c, const(GLfloat)* v) glColor3fVertex3fvSUN;
	void function(GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glColor4fNormal3fVertex3fSUN;
	void function(const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v) glColor4fNormal3fVertex3fvSUN;
	void function(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y) glColor4ubVertex2fSUN;
	void function(const(GLubyte)* c, const(GLfloat)* v) glColor4ubVertex2fvSUN;
	void function(GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z) glColor4ubVertex3fSUN;
	void function(const(GLubyte)* c, const(GLfloat)* v) glColor4ubVertex3fvSUN;
	void function(GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glNormal3fVertex3fSUN;
	void function(const(GLfloat)* n, const(GLfloat)* v) glNormal3fVertex3fvSUN;
	void function(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiColor3fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* v) glReplacementCodeuiColor3fVertex3fvSUN;
	void function(GLuint rc, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiColor4fNormal3fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v) glReplacementCodeuiColor4fNormal3fVertex3fvSUN;
	void function(GLuint rc, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiColor4ubVertex3fSUN;
	void function(const(GLuint)* rc, const(GLubyte)* c, const(GLfloat)* v) glReplacementCodeuiColor4ubVertex3fvSUN;
	void function(GLuint rc, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiNormal3fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* n, const(GLfloat)* v) glReplacementCodeuiNormal3fVertex3fvSUN;
	void function(GLuint rc, GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v) glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN;
	void function(GLuint rc, GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v) glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN;
	void function(GLuint rc, GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiTexCoord2fVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* tc, const(GLfloat)* v) glReplacementCodeuiTexCoord2fVertex3fvSUN;
	void function(GLuint rc, GLfloat x, GLfloat y, GLfloat z) glReplacementCodeuiVertex3fSUN;
	void function(const(GLuint)* rc, const(GLfloat)* v) glReplacementCodeuiVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat x, GLfloat y, GLfloat z) glTexCoord2fColor3fVertex3fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* v) glTexCoord2fColor3fVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glTexCoord2fColor4fNormal3fVertex3fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v) glTexCoord2fColor4fNormal3fVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLubyte r, GLubyte g, GLubyte b, GLubyte a, GLfloat x, GLfloat y, GLfloat z) glTexCoord2fColor4ubVertex3fSUN;
	void function(const(GLfloat)* tc, const(GLubyte)* c, const(GLfloat)* v) glTexCoord2fColor4ubVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z) glTexCoord2fNormal3fVertex3fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* n, const(GLfloat)* v) glTexCoord2fNormal3fVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat x, GLfloat y, GLfloat z) glTexCoord2fVertex3fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* v) glTexCoord2fVertex3fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat r, GLfloat g, GLfloat b, GLfloat a, GLfloat nx, GLfloat ny, GLfloat nz, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glTexCoord4fColor4fNormal3fVertex4fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* c, const(GLfloat)* n, const(GLfloat)* v) glTexCoord4fColor4fNormal3fVertex4fvSUN;
	void function(GLfloat s, GLfloat t, GLfloat p, GLfloat q, GLfloat x, GLfloat y, GLfloat z, GLfloat w) glTexCoord4fVertex4fSUN;
	void function(const(GLfloat)* tc, const(GLfloat)* v) glTexCoord4fVertex4fvSUN;

	// GL SUNX_constant_data
	void function() glFinishTextureSUNX;
}
// GL loader
template loadGL(alias binder, double glver, extensions...) {
	template bindFunc(T) {
		void bindFunc(out T fptr, string name) {
			fptr = cast(T)binder(name.ptr);
		}
	}
	void loadGL() {
		static bool usingExt(string name) {
			static if (extensions.length) {
				return [extensions[]].canFind(name);
			} else {
				return false;
			}
		}
		// GL 1.2
		static if (glver >= 1.2) {
			bindFunc(glBlendColor, `glBlendColor`);
			bindFunc(glBlendEquation, `glBlendEquation`);
			bindFunc(glBlendEquationi, `glBlendEquationi`);
			bindFunc(glBlendEquationSeparatei, `glBlendEquationSeparatei`);
			bindFunc(glBlendFunci, `glBlendFunci`);
			bindFunc(glBlendFuncSeparatei, `glBlendFuncSeparatei`);
			bindFunc(glColorSubTable, `glColorSubTable`);
			bindFunc(glColorTable, `glColorTable`);
			bindFunc(glColorTableParameterfv, `glColorTableParameterfv`);
			bindFunc(glColorTableParameteriv, `glColorTableParameteriv`);
			bindFunc(glConvolutionFilter1D, `glConvolutionFilter1D`);
			bindFunc(glConvolutionFilter2D, `glConvolutionFilter2D`);
			bindFunc(glConvolutionParameterf, `glConvolutionParameterf`);
			bindFunc(glConvolutionParameterfv, `glConvolutionParameterfv`);
			bindFunc(glConvolutionParameteri, `glConvolutionParameteri`);
			bindFunc(glConvolutionParameteriv, `glConvolutionParameteriv`);
			bindFunc(glCopyColorSubTable, `glCopyColorSubTable`);
			bindFunc(glCopyColorTable, `glCopyColorTable`);
			bindFunc(glCopyConvolutionFilter1D, `glCopyConvolutionFilter1D`);
			bindFunc(glCopyConvolutionFilter2D, `glCopyConvolutionFilter2D`);
			bindFunc(glCopyTexSubImage3D, `glCopyTexSubImage3D`);
			bindFunc(glDrawRangeElements, `glDrawRangeElements`);
			bindFunc(glFramebufferTexture, `glFramebufferTexture`);
			bindFunc(glGetColorTable, `glGetColorTable`);
			bindFunc(glGetColorTableParameterfv, `glGetColorTableParameterfv`);
			bindFunc(glGetColorTableParameteriv, `glGetColorTableParameteriv`);
			bindFunc(glGetConvolutionFilter, `glGetConvolutionFilter`);
			bindFunc(glGetConvolutionParameterfv, `glGetConvolutionParameterfv`);
			bindFunc(glGetConvolutionParameteriv, `glGetConvolutionParameteriv`);
			bindFunc(glGetHistogram, `glGetHistogram`);
			bindFunc(glGetHistogramParameterfv, `glGetHistogramParameterfv`);
			bindFunc(glGetHistogramParameteriv, `glGetHistogramParameteriv`);
			bindFunc(glGetMinmax, `glGetMinmax`);
			bindFunc(glGetMinmaxParameterfv, `glGetMinmaxParameterfv`);
			bindFunc(glGetMinmaxParameteriv, `glGetMinmaxParameteriv`);
			bindFunc(glGetSeparableFilter, `glGetSeparableFilter`);
			bindFunc(glHistogram, `glHistogram`);
			bindFunc(glMinmax, `glMinmax`);
			bindFunc(glMinSampleShading, `glMinSampleShading`);
			bindFunc(glResetHistogram, `glResetHistogram`);
			bindFunc(glResetMinmax, `glResetMinmax`);
			bindFunc(glSeparableFilter2D, `glSeparableFilter2D`);
			bindFunc(glTexImage3D, `glTexImage3D`);
			bindFunc(glTexSubImage3D, `glTexSubImage3D`);
		}
		// GL 1.3
		static if (glver >= 1.3) {
			bindFunc(glActiveTexture, `glActiveTexture`);
			bindFunc(glClientActiveTexture, `glClientActiveTexture`);
			bindFunc(glCompressedTexImage1D, `glCompressedTexImage1D`);
			bindFunc(glCompressedTexImage2D, `glCompressedTexImage2D`);
			bindFunc(glCompressedTexImage3D, `glCompressedTexImage3D`);
			bindFunc(glCompressedTexSubImage1D, `glCompressedTexSubImage1D`);
			bindFunc(glCompressedTexSubImage2D, `glCompressedTexSubImage2D`);
			bindFunc(glCompressedTexSubImage3D, `glCompressedTexSubImage3D`);
			bindFunc(glGetCompressedTexImage, `glGetCompressedTexImage`);
			bindFunc(glLoadTransposeMatrixd, `glLoadTransposeMatrixd`);
			bindFunc(glLoadTransposeMatrixf, `glLoadTransposeMatrixf`);
			bindFunc(glMultiTexCoord1d, `glMultiTexCoord1d`);
			bindFunc(glMultiTexCoord1dv, `glMultiTexCoord1dv`);
			bindFunc(glMultiTexCoord1f, `glMultiTexCoord1f`);
			bindFunc(glMultiTexCoord1fv, `glMultiTexCoord1fv`);
			bindFunc(glMultiTexCoord1i, `glMultiTexCoord1i`);
			bindFunc(glMultiTexCoord1iv, `glMultiTexCoord1iv`);
			bindFunc(glMultiTexCoord1s, `glMultiTexCoord1s`);
			bindFunc(glMultiTexCoord1sv, `glMultiTexCoord1sv`);
			bindFunc(glMultiTexCoord2d, `glMultiTexCoord2d`);
			bindFunc(glMultiTexCoord2dv, `glMultiTexCoord2dv`);
			bindFunc(glMultiTexCoord2f, `glMultiTexCoord2f`);
			bindFunc(glMultiTexCoord2fv, `glMultiTexCoord2fv`);
			bindFunc(glMultiTexCoord2i, `glMultiTexCoord2i`);
			bindFunc(glMultiTexCoord2iv, `glMultiTexCoord2iv`);
			bindFunc(glMultiTexCoord2s, `glMultiTexCoord2s`);
			bindFunc(glMultiTexCoord2sv, `glMultiTexCoord2sv`);
			bindFunc(glMultiTexCoord3d, `glMultiTexCoord3d`);
			bindFunc(glMultiTexCoord3dv, `glMultiTexCoord3dv`);
			bindFunc(glMultiTexCoord3f, `glMultiTexCoord3f`);
			bindFunc(glMultiTexCoord3fv, `glMultiTexCoord3fv`);
			bindFunc(glMultiTexCoord3i, `glMultiTexCoord3i`);
			bindFunc(glMultiTexCoord3iv, `glMultiTexCoord3iv`);
			bindFunc(glMultiTexCoord3s, `glMultiTexCoord3s`);
			bindFunc(glMultiTexCoord3sv, `glMultiTexCoord3sv`);
			bindFunc(glMultiTexCoord4d, `glMultiTexCoord4d`);
			bindFunc(glMultiTexCoord4dv, `glMultiTexCoord4dv`);
			bindFunc(glMultiTexCoord4f, `glMultiTexCoord4f`);
			bindFunc(glMultiTexCoord4fv, `glMultiTexCoord4fv`);
			bindFunc(glMultiTexCoord4i, `glMultiTexCoord4i`);
			bindFunc(glMultiTexCoord4iv, `glMultiTexCoord4iv`);
			bindFunc(glMultiTexCoord4s, `glMultiTexCoord4s`);
			bindFunc(glMultiTexCoord4sv, `glMultiTexCoord4sv`);
			bindFunc(glMultTransposeMatrixd, `glMultTransposeMatrixd`);
			bindFunc(glMultTransposeMatrixf, `glMultTransposeMatrixf`);
			bindFunc(glSampleCoverage, `glSampleCoverage`);
		}
		// GL 1.4
		static if (glver >= 1.4) {
			bindFunc(glBlendFuncSeparate, `glBlendFuncSeparate`);
			bindFunc(glFogCoordd, `glFogCoordd`);
			bindFunc(glFogCoorddv, `glFogCoorddv`);
			bindFunc(glFogCoordf, `glFogCoordf`);
			bindFunc(glFogCoordfv, `glFogCoordfv`);
			bindFunc(glFogCoordPointer, `glFogCoordPointer`);
			bindFunc(glMultiDrawArrays, `glMultiDrawArrays`);
			bindFunc(glMultiDrawElements, `glMultiDrawElements`);
			bindFunc(glPointParameterf, `glPointParameterf`);
			bindFunc(glPointParameterfv, `glPointParameterfv`);
			bindFunc(glPointParameteri, `glPointParameteri`);
			bindFunc(glPointParameteriv, `glPointParameteriv`);
			bindFunc(glSecondaryColor3b, `glSecondaryColor3b`);
			bindFunc(glSecondaryColor3bv, `glSecondaryColor3bv`);
			bindFunc(glSecondaryColor3d, `glSecondaryColor3d`);
			bindFunc(glSecondaryColor3dv, `glSecondaryColor3dv`);
			bindFunc(glSecondaryColor3f, `glSecondaryColor3f`);
			bindFunc(glSecondaryColor3fv, `glSecondaryColor3fv`);
			bindFunc(glSecondaryColor3i, `glSecondaryColor3i`);
			bindFunc(glSecondaryColor3iv, `glSecondaryColor3iv`);
			bindFunc(glSecondaryColor3s, `glSecondaryColor3s`);
			bindFunc(glSecondaryColor3sv, `glSecondaryColor3sv`);
			bindFunc(glSecondaryColor3ub, `glSecondaryColor3ub`);
			bindFunc(glSecondaryColor3ubv, `glSecondaryColor3ubv`);
			bindFunc(glSecondaryColor3ui, `glSecondaryColor3ui`);
			bindFunc(glSecondaryColor3uiv, `glSecondaryColor3uiv`);
			bindFunc(glSecondaryColor3us, `glSecondaryColor3us`);
			bindFunc(glSecondaryColor3usv, `glSecondaryColor3usv`);
			bindFunc(glSecondaryColorPointer, `glSecondaryColorPointer`);
			bindFunc(glWindowPos2d, `glWindowPos2d`);
			bindFunc(glWindowPos2dv, `glWindowPos2dv`);
			bindFunc(glWindowPos2f, `glWindowPos2f`);
			bindFunc(glWindowPos2fv, `glWindowPos2fv`);
			bindFunc(glWindowPos2i, `glWindowPos2i`);
			bindFunc(glWindowPos2iv, `glWindowPos2iv`);
			bindFunc(glWindowPos2s, `glWindowPos2s`);
			bindFunc(glWindowPos2sv, `glWindowPos2sv`);
			bindFunc(glWindowPos3d, `glWindowPos3d`);
			bindFunc(glWindowPos3dv, `glWindowPos3dv`);
			bindFunc(glWindowPos3f, `glWindowPos3f`);
			bindFunc(glWindowPos3fv, `glWindowPos3fv`);
			bindFunc(glWindowPos3i, `glWindowPos3i`);
			bindFunc(glWindowPos3iv, `glWindowPos3iv`);
			bindFunc(glWindowPos3s, `glWindowPos3s`);
			bindFunc(glWindowPos3sv, `glWindowPos3sv`);
		}
		// GL 1.5
		static if (glver >= 1.5) {
			bindFunc(glBeginQuery, `glBeginQuery`);
			bindFunc(glBindBuffer, `glBindBuffer`);
			bindFunc(glBufferData, `glBufferData`);
			bindFunc(glBufferSubData, `glBufferSubData`);
			bindFunc(glDeleteBuffers, `glDeleteBuffers`);
			bindFunc(glDeleteQueries, `glDeleteQueries`);
			bindFunc(glEndQuery, `glEndQuery`);
			bindFunc(glGenBuffers, `glGenBuffers`);
			bindFunc(glGenQueries, `glGenQueries`);
			bindFunc(glGetBufferParameteriv, `glGetBufferParameteriv`);
			bindFunc(glGetBufferPointerv, `glGetBufferPointerv`);
			bindFunc(glGetBufferSubData, `glGetBufferSubData`);
			bindFunc(glGetQueryiv, `glGetQueryiv`);
			bindFunc(glGetQueryObjectiv, `glGetQueryObjectiv`);
			bindFunc(glGetQueryObjectuiv, `glGetQueryObjectuiv`);
			bindFunc(glIsBuffer, `glIsBuffer`);
			bindFunc(glIsQuery, `glIsQuery`);
			bindFunc(glMapBuffer, `glMapBuffer`);
			bindFunc(glUnmapBuffer, `glUnmapBuffer`);
		}
		// GL 2.0
		static if (glver >= 2.0) {
			bindFunc(glAttachShader, `glAttachShader`);
			bindFunc(glBindAttribLocation, `glBindAttribLocation`);
			bindFunc(glBlendEquationSeparate, `glBlendEquationSeparate`);
			bindFunc(glCompileShader, `glCompileShader`);
			bindFunc(glCreateProgram, `glCreateProgram`);
			bindFunc(glCreateShader, `glCreateShader`);
			bindFunc(glDeleteProgram, `glDeleteProgram`);
			bindFunc(glDeleteShader, `glDeleteShader`);
			bindFunc(glDetachShader, `glDetachShader`);
			bindFunc(glDisableVertexAttribArray, `glDisableVertexAttribArray`);
			bindFunc(glDrawBuffers, `glDrawBuffers`);
			bindFunc(glEnableVertexAttribArray, `glEnableVertexAttribArray`);
			bindFunc(glGetActiveAttrib, `glGetActiveAttrib`);
			bindFunc(glGetActiveUniform, `glGetActiveUniform`);
			bindFunc(glGetAttachedShaders, `glGetAttachedShaders`);
			bindFunc(glGetAttribLocation, `glGetAttribLocation`);
			bindFunc(glGetProgramInfoLog, `glGetProgramInfoLog`);
			bindFunc(glGetProgramiv, `glGetProgramiv`);
			bindFunc(glGetShaderInfoLog, `glGetShaderInfoLog`);
			bindFunc(glGetShaderiv, `glGetShaderiv`);
			bindFunc(glGetShaderSource, `glGetShaderSource`);
			bindFunc(glGetUniformfv, `glGetUniformfv`);
			bindFunc(glGetUniformiv, `glGetUniformiv`);
			bindFunc(glGetUniformLocation, `glGetUniformLocation`);
			bindFunc(glGetVertexAttribdv, `glGetVertexAttribdv`);
			bindFunc(glGetVertexAttribfv, `glGetVertexAttribfv`);
			bindFunc(glGetVertexAttribiv, `glGetVertexAttribiv`);
			bindFunc(glGetVertexAttribPointerv, `glGetVertexAttribPointerv`);
			bindFunc(glIsProgram, `glIsProgram`);
			bindFunc(glIsShader, `glIsShader`);
			bindFunc(glLinkProgram, `glLinkProgram`);
			bindFunc(glShaderSource, `glShaderSource`);
			bindFunc(glStencilFuncSeparate, `glStencilFuncSeparate`);
			bindFunc(glStencilMaskSeparate, `glStencilMaskSeparate`);
			bindFunc(glStencilOpSeparate, `glStencilOpSeparate`);
			bindFunc(glUniform1f, `glUniform1f`);
			bindFunc(glUniform1fv, `glUniform1fv`);
			bindFunc(glUniform1i, `glUniform1i`);
			bindFunc(glUniform1iv, `glUniform1iv`);
			bindFunc(glUniform2f, `glUniform2f`);
			bindFunc(glUniform2fv, `glUniform2fv`);
			bindFunc(glUniform2i, `glUniform2i`);
			bindFunc(glUniform2iv, `glUniform2iv`);
			bindFunc(glUniform3f, `glUniform3f`);
			bindFunc(glUniform3fv, `glUniform3fv`);
			bindFunc(glUniform3i, `glUniform3i`);
			bindFunc(glUniform3iv, `glUniform3iv`);
			bindFunc(glUniform4f, `glUniform4f`);
			bindFunc(glUniform4fv, `glUniform4fv`);
			bindFunc(glUniform4i, `glUniform4i`);
			bindFunc(glUniform4iv, `glUniform4iv`);
			bindFunc(glUniformMatrix2fv, `glUniformMatrix2fv`);
			bindFunc(glUniformMatrix3fv, `glUniformMatrix3fv`);
			bindFunc(glUniformMatrix4fv, `glUniformMatrix4fv`);
			bindFunc(glUseProgram, `glUseProgram`);
			bindFunc(glValidateProgram, `glValidateProgram`);
			bindFunc(glVertexAttrib1d, `glVertexAttrib1d`);
			bindFunc(glVertexAttrib1dv, `glVertexAttrib1dv`);
			bindFunc(glVertexAttrib1f, `glVertexAttrib1f`);
			bindFunc(glVertexAttrib1fv, `glVertexAttrib1fv`);
			bindFunc(glVertexAttrib1s, `glVertexAttrib1s`);
			bindFunc(glVertexAttrib1sv, `glVertexAttrib1sv`);
			bindFunc(glVertexAttrib2d, `glVertexAttrib2d`);
			bindFunc(glVertexAttrib2dv, `glVertexAttrib2dv`);
			bindFunc(glVertexAttrib2f, `glVertexAttrib2f`);
			bindFunc(glVertexAttrib2fv, `glVertexAttrib2fv`);
			bindFunc(glVertexAttrib2s, `glVertexAttrib2s`);
			bindFunc(glVertexAttrib2sv, `glVertexAttrib2sv`);
			bindFunc(glVertexAttrib3d, `glVertexAttrib3d`);
			bindFunc(glVertexAttrib3dv, `glVertexAttrib3dv`);
			bindFunc(glVertexAttrib3f, `glVertexAttrib3f`);
			bindFunc(glVertexAttrib3fv, `glVertexAttrib3fv`);
			bindFunc(glVertexAttrib3s, `glVertexAttrib3s`);
			bindFunc(glVertexAttrib3sv, `glVertexAttrib3sv`);
			bindFunc(glVertexAttrib4bv, `glVertexAttrib4bv`);
			bindFunc(glVertexAttrib4d, `glVertexAttrib4d`);
			bindFunc(glVertexAttrib4dv, `glVertexAttrib4dv`);
			bindFunc(glVertexAttrib4f, `glVertexAttrib4f`);
			bindFunc(glVertexAttrib4fv, `glVertexAttrib4fv`);
			bindFunc(glVertexAttrib4iv, `glVertexAttrib4iv`);
			bindFunc(glVertexAttrib4Nbv, `glVertexAttrib4Nbv`);
			bindFunc(glVertexAttrib4Niv, `glVertexAttrib4Niv`);
			bindFunc(glVertexAttrib4Nsv, `glVertexAttrib4Nsv`);
			bindFunc(glVertexAttrib4Nub, `glVertexAttrib4Nub`);
			bindFunc(glVertexAttrib4Nubv, `glVertexAttrib4Nubv`);
			bindFunc(glVertexAttrib4Nuiv, `glVertexAttrib4Nuiv`);
			bindFunc(glVertexAttrib4Nusv, `glVertexAttrib4Nusv`);
			bindFunc(glVertexAttrib4s, `glVertexAttrib4s`);
			bindFunc(glVertexAttrib4sv, `glVertexAttrib4sv`);
			bindFunc(glVertexAttrib4ubv, `glVertexAttrib4ubv`);
			bindFunc(glVertexAttrib4uiv, `glVertexAttrib4uiv`);
			bindFunc(glVertexAttrib4usv, `glVertexAttrib4usv`);
			bindFunc(glVertexAttribPointer, `glVertexAttribPointer`);
		}
		// GL 2.1
		static if (glver >= 2.1) {
			bindFunc(glUniformMatrix2x3fv, `glUniformMatrix2x3fv`);
			bindFunc(glUniformMatrix2x4fv, `glUniformMatrix2x4fv`);
			bindFunc(glUniformMatrix3x2fv, `glUniformMatrix3x2fv`);
			bindFunc(glUniformMatrix3x4fv, `glUniformMatrix3x4fv`);
			bindFunc(glUniformMatrix4x2fv, `glUniformMatrix4x2fv`);
			bindFunc(glUniformMatrix4x3fv, `glUniformMatrix4x3fv`);
		}
		// GL 3.0
		static if (glver >= 3.0) {
			bindFunc(glBeginConditionalRender, `glBeginConditionalRender`);
			bindFunc(glBeginTransformFeedback, `glBeginTransformFeedback`);
			bindFunc(glBindBufferBase, `glBindBufferBase`);
			bindFunc(glBindBufferRange, `glBindBufferRange`);
			bindFunc(glBindFragDataLocation, `glBindFragDataLocation`);
			bindFunc(glClampColor, `glClampColor`);
			bindFunc(glClearBufferfi, `glClearBufferfi`);
			bindFunc(glClearBufferfv, `glClearBufferfv`);
			bindFunc(glClearBufferiv, `glClearBufferiv`);
			bindFunc(glClearBufferuiv, `glClearBufferuiv`);
			bindFunc(glColorMaski, `glColorMaski`);
			bindFunc(glDisablei, `glDisablei`);
			bindFunc(glEnablei, `glEnablei`);
			bindFunc(glEndConditionalRender, `glEndConditionalRender`);
			bindFunc(glEndTransformFeedback, `glEndTransformFeedback`);
			bindFunc(glGetBooleani_v, `glGetBooleani_v`);
			bindFunc(glGetFragDataLocation, `glGetFragDataLocation`);
			bindFunc(glGetIntegeri_v, `glGetIntegeri_v`);
			bindFunc(glGetStringi, `glGetStringi`);
			bindFunc(glGetTexParameterIiv, `glGetTexParameterIiv`);
			bindFunc(glGetTexParameterIuiv, `glGetTexParameterIuiv`);
			bindFunc(glGetTransformFeedbackVarying, `glGetTransformFeedbackVarying`);
			bindFunc(glGetUniformuiv, `glGetUniformuiv`);
			bindFunc(glGetVertexAttribIiv, `glGetVertexAttribIiv`);
			bindFunc(glGetVertexAttribIuiv, `glGetVertexAttribIuiv`);
			bindFunc(glIsEnabledi, `glIsEnabledi`);
			bindFunc(glTexParameterIiv, `glTexParameterIiv`);
			bindFunc(glTexParameterIuiv, `glTexParameterIuiv`);
			bindFunc(glTransformFeedbackVaryings, `glTransformFeedbackVaryings`);
			bindFunc(glUniform1ui, `glUniform1ui`);
			bindFunc(glUniform1uiv, `glUniform1uiv`);
			bindFunc(glUniform2ui, `glUniform2ui`);
			bindFunc(glUniform2uiv, `glUniform2uiv`);
			bindFunc(glUniform3ui, `glUniform3ui`);
			bindFunc(glUniform3uiv, `glUniform3uiv`);
			bindFunc(glUniform4ui, `glUniform4ui`);
			bindFunc(glUniform4uiv, `glUniform4uiv`);
			bindFunc(glVertexAttribI1i, `glVertexAttribI1i`);
			bindFunc(glVertexAttribI1iv, `glVertexAttribI1iv`);
			bindFunc(glVertexAttribI1ui, `glVertexAttribI1ui`);
			bindFunc(glVertexAttribI1uiv, `glVertexAttribI1uiv`);
			bindFunc(glVertexAttribI2i, `glVertexAttribI2i`);
			bindFunc(glVertexAttribI2iv, `glVertexAttribI2iv`);
			bindFunc(glVertexAttribI2ui, `glVertexAttribI2ui`);
			bindFunc(glVertexAttribI2uiv, `glVertexAttribI2uiv`);
			bindFunc(glVertexAttribI3i, `glVertexAttribI3i`);
			bindFunc(glVertexAttribI3iv, `glVertexAttribI3iv`);
			bindFunc(glVertexAttribI3ui, `glVertexAttribI3ui`);
			bindFunc(glVertexAttribI3uiv, `glVertexAttribI3uiv`);
			bindFunc(glVertexAttribI4bv, `glVertexAttribI4bv`);
			bindFunc(glVertexAttribI4i, `glVertexAttribI4i`);
			bindFunc(glVertexAttribI4iv, `glVertexAttribI4iv`);
			bindFunc(glVertexAttribI4sv, `glVertexAttribI4sv`);
			bindFunc(glVertexAttribI4ubv, `glVertexAttribI4ubv`);
			bindFunc(glVertexAttribI4ui, `glVertexAttribI4ui`);
			bindFunc(glVertexAttribI4uiv, `glVertexAttribI4uiv`);
			bindFunc(glVertexAttribI4usv, `glVertexAttribI4usv`);
			bindFunc(glVertexAttribIPointer, `glVertexAttribIPointer`);
		}
		// GL 3.1
		static if (glver >= 3.1) {
			bindFunc(glDrawArraysInstanced, `glDrawArraysInstanced`);
			bindFunc(glDrawElementsInstanced, `glDrawElementsInstanced`);
			bindFunc(glPrimitiveRestartIndex, `glPrimitiveRestartIndex`);
			bindFunc(glTexBuffer, `glTexBuffer`);
		}
		// GL 3.2
		static if (glver >= 3.2) {
			bindFunc(glGetBufferParameteri64v, `glGetBufferParameteri64v`);
			bindFunc(glGetInteger64i_v, `glGetInteger64i_v`);
		}
		// GL 3DFX_tbuffer
		static if (usingExt(`3DFX_tbuffer`)) {
			bindFunc(glTbufferMask3DFX, `glTbufferMask3DFX`);
		}
		// GL AMD_debug_output
		static if (usingExt(`AMD_debug_output`)) {
			bindFunc(glDebugMessageCallbackAMD, `glDebugMessageCallbackAMD`);
			bindFunc(glDebugMessageEnableAMD, `glDebugMessageEnableAMD`);
			bindFunc(glDebugMessageInsertAMD, `glDebugMessageInsertAMD`);
			bindFunc(glGetDebugMessageLogAMD, `glGetDebugMessageLogAMD`);
		}
		// GL AMD_draw_buffers_blend
		static if (usingExt(`AMD_draw_buffers_blend`)) {
			bindFunc(glBlendEquationIndexedAMD, `glBlendEquationIndexedAMD`);
			bindFunc(glBlendEquationSeparateIndexedAMD, `glBlendEquationSeparateIndexedAMD`);
			bindFunc(glBlendFuncIndexedAMD, `glBlendFuncIndexedAMD`);
			bindFunc(glBlendFuncSeparateIndexedAMD, `glBlendFuncSeparateIndexedAMD`);
		}
		// GL AMD_multi_draw_indirect
		static if (usingExt(`AMD_multi_draw_indirect`)) {
			bindFunc(glMultiDrawArraysIndirectAMD, `glMultiDrawArraysIndirectAMD`);
			bindFunc(glMultiDrawElementsIndirectAMD, `glMultiDrawElementsIndirectAMD`);
		}
		// GL AMD_name_gen_delete
		static if (usingExt(`AMD_name_gen_delete`)) {
			bindFunc(glDeleteNamesAMD, `glDeleteNamesAMD`);
			bindFunc(glGenNamesAMD, `glGenNamesAMD`);
			bindFunc(glIsNameAMD, `glIsNameAMD`);
		}
		// GL AMD_performance_monitor
		static if (usingExt(`AMD_performance_monitor`)) {
			bindFunc(glBeginPerfMonitorAMD, `glBeginPerfMonitorAMD`);
			bindFunc(glDeletePerfMonitorsAMD, `glDeletePerfMonitorsAMD`);
			bindFunc(glEndPerfMonitorAMD, `glEndPerfMonitorAMD`);
			bindFunc(glGenPerfMonitorsAMD, `glGenPerfMonitorsAMD`);
			bindFunc(glGetPerfMonitorCounterDataAMD, `glGetPerfMonitorCounterDataAMD`);
			bindFunc(glGetPerfMonitorCounterInfoAMD, `glGetPerfMonitorCounterInfoAMD`);
			bindFunc(glGetPerfMonitorCountersAMD, `glGetPerfMonitorCountersAMD`);
			bindFunc(glGetPerfMonitorCounterStringAMD, `glGetPerfMonitorCounterStringAMD`);
			bindFunc(glGetPerfMonitorGroupsAMD, `glGetPerfMonitorGroupsAMD`);
			bindFunc(glGetPerfMonitorGroupStringAMD, `glGetPerfMonitorGroupStringAMD`);
			bindFunc(glSelectPerfMonitorCountersAMD, `glSelectPerfMonitorCountersAMD`);
		}
		// GL AMD_sample_positions
		static if (usingExt(`AMD_sample_positions`)) {
			bindFunc(glSetMultisamplefvAMD, `glSetMultisamplefvAMD`);
		}
		// GL AMD_sparse_texture
		static if (usingExt(`AMD_sparse_texture`)) {
			bindFunc(glTexStorageSparseAMD, `glTexStorageSparseAMD`);
			bindFunc(glTextureStorageSparseAMD, `glTextureStorageSparseAMD`);
		}
		// GL AMD_stencil_operation_extended
		static if (usingExt(`AMD_stencil_operation_extended`)) {
			bindFunc(glStencilOpValueAMD, `glStencilOpValueAMD`);
		}
		// GL AMD_vertex_shader_tessellator
		static if (usingExt(`AMD_vertex_shader_tessellator`)) {
			bindFunc(glTessellationFactorAMD, `glTessellationFactorAMD`);
			bindFunc(glTessellationModeAMD, `glTessellationModeAMD`);
		}
		// GL APPLE_element_array
		static if (usingExt(`APPLE_element_array`)) {
			bindFunc(glDrawElementArrayAPPLE, `glDrawElementArrayAPPLE`);
			bindFunc(glDrawRangeElementArrayAPPLE, `glDrawRangeElementArrayAPPLE`);
			bindFunc(glElementPointerAPPLE, `glElementPointerAPPLE`);
			bindFunc(glMultiDrawElementArrayAPPLE, `glMultiDrawElementArrayAPPLE`);
			bindFunc(glMultiDrawRangeElementArrayAPPLE, `glMultiDrawRangeElementArrayAPPLE`);
		}
		// GL APPLE_fence
		static if (usingExt(`APPLE_fence`)) {
			bindFunc(glDeleteFencesAPPLE, `glDeleteFencesAPPLE`);
			bindFunc(glFinishFenceAPPLE, `glFinishFenceAPPLE`);
			bindFunc(glFinishObjectAPPLE, `glFinishObjectAPPLE`);
			bindFunc(glGenFencesAPPLE, `glGenFencesAPPLE`);
			bindFunc(glIsFenceAPPLE, `glIsFenceAPPLE`);
			bindFunc(glSetFenceAPPLE, `glSetFenceAPPLE`);
			bindFunc(glTestFenceAPPLE, `glTestFenceAPPLE`);
			bindFunc(glTestObjectAPPLE, `glTestObjectAPPLE`);
		}
		// GL APPLE_flush_buffer_range
		static if (usingExt(`APPLE_flush_buffer_range`)) {
			bindFunc(glBufferParameteriAPPLE, `glBufferParameteriAPPLE`);
			bindFunc(glFlushMappedBufferRangeAPPLE, `glFlushMappedBufferRangeAPPLE`);
		}
		// GL APPLE_object_purgeable
		static if (usingExt(`APPLE_object_purgeable`)) {
			bindFunc(glGetObjectParameterivAPPLE, `glGetObjectParameterivAPPLE`);
			bindFunc(glObjectPurgeableAPPLE, `glObjectPurgeableAPPLE`);
			bindFunc(glObjectUnpurgeableAPPLE, `glObjectUnpurgeableAPPLE`);
		}
		// GL APPLE_texture_range
		static if (usingExt(`APPLE_texture_range`)) {
			bindFunc(glGetTexParameterPointervAPPLE, `glGetTexParameterPointervAPPLE`);
			bindFunc(glTextureRangeAPPLE, `glTextureRangeAPPLE`);
		}
		// GL APPLE_vertex_array_object
		static if (usingExt(`APPLE_vertex_array_object`)) {
			bindFunc(glBindVertexArrayAPPLE, `glBindVertexArrayAPPLE`);
			bindFunc(glDeleteVertexArraysAPPLE, `glDeleteVertexArraysAPPLE`);
			bindFunc(glGenVertexArraysAPPLE, `glGenVertexArraysAPPLE`);
			bindFunc(glIsVertexArrayAPPLE, `glIsVertexArrayAPPLE`);
		}
		// GL APPLE_vertex_array_range
		static if (usingExt(`APPLE_vertex_array_range`)) {
			bindFunc(glFlushVertexArrayRangeAPPLE, `glFlushVertexArrayRangeAPPLE`);
			bindFunc(glVertexArrayParameteriAPPLE, `glVertexArrayParameteriAPPLE`);
			bindFunc(glVertexArrayRangeAPPLE, `glVertexArrayRangeAPPLE`);
		}
		// GL APPLE_vertex_program_evaluators
		static if (usingExt(`APPLE_vertex_program_evaluators`)) {
			bindFunc(glDisableVertexAttribAPPLE, `glDisableVertexAttribAPPLE`);
			bindFunc(glEnableVertexAttribAPPLE, `glEnableVertexAttribAPPLE`);
			bindFunc(glIsVertexAttribEnabledAPPLE, `glIsVertexAttribEnabledAPPLE`);
			bindFunc(glMapVertexAttrib1dAPPLE, `glMapVertexAttrib1dAPPLE`);
			bindFunc(glMapVertexAttrib1fAPPLE, `glMapVertexAttrib1fAPPLE`);
			bindFunc(glMapVertexAttrib2dAPPLE, `glMapVertexAttrib2dAPPLE`);
			bindFunc(glMapVertexAttrib2fAPPLE, `glMapVertexAttrib2fAPPLE`);
		}
		// GL ARB_base_instance
		static if (usingExt(`ARB_base_instance`)) {
			bindFunc(glDrawArraysInstancedBaseInstance, `glDrawArraysInstancedBaseInstance`);
			bindFunc(glDrawElementsInstancedBaseInstance, `glDrawElementsInstancedBaseInstance`);
			bindFunc(glDrawElementsInstancedBaseVertexBaseInstance, `glDrawElementsInstancedBaseVertexBaseInstance`);
		}
		// GL ARB_blend_func_extended
		static if (usingExt(`ARB_blend_func_extended`)) {
			bindFunc(glBindFragDataLocationIndexed, `glBindFragDataLocationIndexed`);
			bindFunc(glGetFragDataIndex, `glGetFragDataIndex`);
		}
		// GL ARB_cl_event
		static if (usingExt(`ARB_cl_event`)) {
			bindFunc(glCreateSyncFromCLeventARB, `glCreateSyncFromCLeventARB`);
		}
		// GL ARB_clear_buffer_object
		static if (usingExt(`ARB_clear_buffer_object`)) {
			bindFunc(glClearBufferData, `glClearBufferData`);
			bindFunc(glClearBufferSubData, `glClearBufferSubData`);
			bindFunc(glClearNamedBufferDataEXT, `glClearNamedBufferDataEXT`);
			bindFunc(glClearNamedBufferSubDataEXT, `glClearNamedBufferSubDataEXT`);
		}
		// GL ARB_color_buffer_float
		static if (usingExt(`ARB_color_buffer_float`)) {
			bindFunc(glClampColorARB, `glClampColorARB`);
		}
		// GL ARB_compute_shader
		static if (usingExt(`ARB_compute_shader`)) {
			bindFunc(glDispatchCompute, `glDispatchCompute`);
			bindFunc(glDispatchComputeIndirect, `glDispatchComputeIndirect`);
		}
		// GL ARB_copy_buffer
		static if (usingExt(`ARB_copy_buffer`)) {
			bindFunc(glCopyBufferSubData, `glCopyBufferSubData`);
		}
		// GL ARB_copy_image
		static if (usingExt(`ARB_copy_image`)) {
			bindFunc(glCopyImageSubData, `glCopyImageSubData`);
		}
		// GL ARB_debug_output
		static if (usingExt(`ARB_debug_output`)) {
			bindFunc(glDebugMessageCallbackARB, `glDebugMessageCallbackARB`);
			bindFunc(glDebugMessageControlARB, `glDebugMessageControlARB`);
			bindFunc(glDebugMessageInsertARB, `glDebugMessageInsertARB`);
			bindFunc(glGetDebugMessageLogARB, `glGetDebugMessageLogARB`);
		}
		// GL ARB_draw_buffers
		static if (usingExt(`ARB_draw_buffers`)) {
			bindFunc(glDrawBuffersARB, `glDrawBuffersARB`);
		}
		// GL ARB_draw_buffers_blend
		static if (usingExt(`ARB_draw_buffers_blend`)) {
			bindFunc(glBlendEquationiARB, `glBlendEquationiARB`);
			bindFunc(glBlendEquationSeparateiARB, `glBlendEquationSeparateiARB`);
			bindFunc(glBlendFunciARB, `glBlendFunciARB`);
			bindFunc(glBlendFuncSeparateiARB, `glBlendFuncSeparateiARB`);
		}
		// GL ARB_draw_elements_base_vertex
		static if (usingExt(`ARB_draw_elements_base_vertex`)) {
			bindFunc(glDrawElementsBaseVertex, `glDrawElementsBaseVertex`);
			bindFunc(glDrawElementsInstancedBaseVertex, `glDrawElementsInstancedBaseVertex`);
			bindFunc(glDrawRangeElementsBaseVertex, `glDrawRangeElementsBaseVertex`);
			bindFunc(glMultiDrawElementsBaseVertex, `glMultiDrawElementsBaseVertex`);
		}
		// GL ARB_draw_indirect
		static if (usingExt(`ARB_draw_indirect`)) {
			bindFunc(glDrawArraysIndirect, `glDrawArraysIndirect`);
			bindFunc(glDrawElementsIndirect, `glDrawElementsIndirect`);
		}
		// GL ARB_draw_instanced
		static if (usingExt(`ARB_draw_instanced`)) {
			bindFunc(glDrawArraysInstancedARB, `glDrawArraysInstancedARB`);
			bindFunc(glDrawElementsInstancedARB, `glDrawElementsInstancedARB`);
		}
		// GL ARB_ES2_compatibility
		static if (usingExt(`ARB_ES2_compatibility`)) {
			bindFunc(glClearDepthf, `glClearDepthf`);
			bindFunc(glDepthRangef, `glDepthRangef`);
			bindFunc(glGetShaderPrecisionFormat, `glGetShaderPrecisionFormat`);
			bindFunc(glReleaseShaderCompiler, `glReleaseShaderCompiler`);
			bindFunc(glShaderBinary, `glShaderBinary`);
		}
		// GL ARB_framebuffer_no_attachments
		static if (usingExt(`ARB_framebuffer_no_attachments`)) {
			bindFunc(glFramebufferParameteri, `glFramebufferParameteri`);
			bindFunc(glGetFramebufferParameteriv, `glGetFramebufferParameteriv`);
			bindFunc(glGetNamedFramebufferParameterivEXT, `glGetNamedFramebufferParameterivEXT`);
			bindFunc(glNamedFramebufferParameteriEXT, `glNamedFramebufferParameteriEXT`);
		}
		// GL ARB_framebuffer_object
		static if (usingExt(`ARB_framebuffer_object`)) {
			bindFunc(glBindFramebuffer, `glBindFramebuffer`);
			bindFunc(glBindRenderbuffer, `glBindRenderbuffer`);
			bindFunc(glBlitFramebuffer, `glBlitFramebuffer`);
			bindFunc(glCheckFramebufferStatus, `glCheckFramebufferStatus`);
			bindFunc(glDeleteFramebuffers, `glDeleteFramebuffers`);
			bindFunc(glDeleteRenderbuffers, `glDeleteRenderbuffers`);
			bindFunc(glFramebufferRenderbuffer, `glFramebufferRenderbuffer`);
			bindFunc(glFramebufferTexture1D, `glFramebufferTexture1D`);
			bindFunc(glFramebufferTexture2D, `glFramebufferTexture2D`);
			bindFunc(glFramebufferTexture3D, `glFramebufferTexture3D`);
			bindFunc(glFramebufferTextureLayer, `glFramebufferTextureLayer`);
			bindFunc(glGenerateMipmap, `glGenerateMipmap`);
			bindFunc(glGenFramebuffers, `glGenFramebuffers`);
			bindFunc(glGenRenderbuffers, `glGenRenderbuffers`);
			bindFunc(glGetFramebufferAttachmentParameteriv, `glGetFramebufferAttachmentParameteriv`);
			bindFunc(glGetRenderbufferParameteriv, `glGetRenderbufferParameteriv`);
			bindFunc(glIsFramebuffer, `glIsFramebuffer`);
			bindFunc(glIsRenderbuffer, `glIsRenderbuffer`);
			bindFunc(glRenderbufferStorage, `glRenderbufferStorage`);
			bindFunc(glRenderbufferStorageMultisample, `glRenderbufferStorageMultisample`);
		}
		// GL ARB_geometry_shader4
		static if (usingExt(`ARB_geometry_shader4`)) {
			bindFunc(glFramebufferTextureARB, `glFramebufferTextureARB`);
			bindFunc(glFramebufferTextureFaceARB, `glFramebufferTextureFaceARB`);
			bindFunc(glFramebufferTextureLayerARB, `glFramebufferTextureLayerARB`);
			bindFunc(glProgramParameteriARB, `glProgramParameteriARB`);
		}
		// GL ARB_get_program_binary
		static if (usingExt(`ARB_get_program_binary`)) {
			bindFunc(glGetProgramBinary, `glGetProgramBinary`);
			bindFunc(glProgramBinary, `glProgramBinary`);
			bindFunc(glProgramParameteri, `glProgramParameteri`);
		}
		// GL ARB_gpu_shader_fp64
		static if (usingExt(`ARB_gpu_shader_fp64`)) {
			bindFunc(glGetUniformdv, `glGetUniformdv`);
			bindFunc(glUniform1d, `glUniform1d`);
			bindFunc(glUniform1dv, `glUniform1dv`);
			bindFunc(glUniform2d, `glUniform2d`);
			bindFunc(glUniform2dv, `glUniform2dv`);
			bindFunc(glUniform3d, `glUniform3d`);
			bindFunc(glUniform3dv, `glUniform3dv`);
			bindFunc(glUniform4d, `glUniform4d`);
			bindFunc(glUniform4dv, `glUniform4dv`);
			bindFunc(glUniformMatrix2dv, `glUniformMatrix2dv`);
			bindFunc(glUniformMatrix2x3dv, `glUniformMatrix2x3dv`);
			bindFunc(glUniformMatrix2x4dv, `glUniformMatrix2x4dv`);
			bindFunc(glUniformMatrix3dv, `glUniformMatrix3dv`);
			bindFunc(glUniformMatrix3x2dv, `glUniformMatrix3x2dv`);
			bindFunc(glUniformMatrix3x4dv, `glUniformMatrix3x4dv`);
			bindFunc(glUniformMatrix4dv, `glUniformMatrix4dv`);
			bindFunc(glUniformMatrix4x2dv, `glUniformMatrix4x2dv`);
			bindFunc(glUniformMatrix4x3dv, `glUniformMatrix4x3dv`);
		}
		// GL ARB_instanced_arrays
		static if (usingExt(`ARB_instanced_arrays`)) {
			bindFunc(glVertexAttribDivisorARB, `glVertexAttribDivisorARB`);
		}
		// GL ARB_internalformat_query
		static if (usingExt(`ARB_internalformat_query`)) {
			bindFunc(glGetInternalformativ, `glGetInternalformativ`);
		}
		// GL ARB_internalformat_query2
		static if (usingExt(`ARB_internalformat_query2`)) {
			bindFunc(glGetInternalformati64v, `glGetInternalformati64v`);
		}
		// GL ARB_invalidate_subdata
		static if (usingExt(`ARB_invalidate_subdata`)) {
			bindFunc(glInvalidateBufferData, `glInvalidateBufferData`);
			bindFunc(glInvalidateBufferSubData, `glInvalidateBufferSubData`);
			bindFunc(glInvalidateFramebuffer, `glInvalidateFramebuffer`);
			bindFunc(glInvalidateSubFramebuffer, `glInvalidateSubFramebuffer`);
			bindFunc(glInvalidateTexImage, `glInvalidateTexImage`);
			bindFunc(glInvalidateTexSubImage, `glInvalidateTexSubImage`);
		}
		// GL ARB_map_buffer_range
		static if (usingExt(`ARB_map_buffer_range`)) {
			bindFunc(glFlushMappedBufferRange, `glFlushMappedBufferRange`);
			bindFunc(glMapBufferRange, `glMapBufferRange`);
		}
		// GL ARB_matrix_palette
		static if (usingExt(`ARB_matrix_palette`)) {
			bindFunc(glCurrentPaletteMatrixARB, `glCurrentPaletteMatrixARB`);
			bindFunc(glMatrixIndexPointerARB, `glMatrixIndexPointerARB`);
			bindFunc(glMatrixIndexubvARB, `glMatrixIndexubvARB`);
			bindFunc(glMatrixIndexuivARB, `glMatrixIndexuivARB`);
			bindFunc(glMatrixIndexusvARB, `glMatrixIndexusvARB`);
		}
		// GL ARB_multi_draw_indirect
		static if (usingExt(`ARB_multi_draw_indirect`)) {
			bindFunc(glMultiDrawArraysIndirect, `glMultiDrawArraysIndirect`);
			bindFunc(glMultiDrawElementsIndirect, `glMultiDrawElementsIndirect`);
		}
		// GL ARB_multisample
		static if (usingExt(`ARB_multisample`)) {
			bindFunc(glSampleCoverageARB, `glSampleCoverageARB`);
		}
		// GL ARB_multitexture
		static if (usingExt(`ARB_multitexture`)) {
			bindFunc(glActiveTextureARB, `glActiveTextureARB`);
			bindFunc(glClientActiveTextureARB, `glClientActiveTextureARB`);
			bindFunc(glMultiTexCoord1dARB, `glMultiTexCoord1dARB`);
			bindFunc(glMultiTexCoord1dvARB, `glMultiTexCoord1dvARB`);
			bindFunc(glMultiTexCoord1fARB, `glMultiTexCoord1fARB`);
			bindFunc(glMultiTexCoord1fvARB, `glMultiTexCoord1fvARB`);
			bindFunc(glMultiTexCoord1iARB, `glMultiTexCoord1iARB`);
			bindFunc(glMultiTexCoord1ivARB, `glMultiTexCoord1ivARB`);
			bindFunc(glMultiTexCoord1sARB, `glMultiTexCoord1sARB`);
			bindFunc(glMultiTexCoord1svARB, `glMultiTexCoord1svARB`);
			bindFunc(glMultiTexCoord2dARB, `glMultiTexCoord2dARB`);
			bindFunc(glMultiTexCoord2dvARB, `glMultiTexCoord2dvARB`);
			bindFunc(glMultiTexCoord2fARB, `glMultiTexCoord2fARB`);
			bindFunc(glMultiTexCoord2fvARB, `glMultiTexCoord2fvARB`);
			bindFunc(glMultiTexCoord2iARB, `glMultiTexCoord2iARB`);
			bindFunc(glMultiTexCoord2ivARB, `glMultiTexCoord2ivARB`);
			bindFunc(glMultiTexCoord2sARB, `glMultiTexCoord2sARB`);
			bindFunc(glMultiTexCoord2svARB, `glMultiTexCoord2svARB`);
			bindFunc(glMultiTexCoord3dARB, `glMultiTexCoord3dARB`);
			bindFunc(glMultiTexCoord3dvARB, `glMultiTexCoord3dvARB`);
			bindFunc(glMultiTexCoord3fARB, `glMultiTexCoord3fARB`);
			bindFunc(glMultiTexCoord3fvARB, `glMultiTexCoord3fvARB`);
			bindFunc(glMultiTexCoord3iARB, `glMultiTexCoord3iARB`);
			bindFunc(glMultiTexCoord3ivARB, `glMultiTexCoord3ivARB`);
			bindFunc(glMultiTexCoord3sARB, `glMultiTexCoord3sARB`);
			bindFunc(glMultiTexCoord3svARB, `glMultiTexCoord3svARB`);
			bindFunc(glMultiTexCoord4dARB, `glMultiTexCoord4dARB`);
			bindFunc(glMultiTexCoord4dvARB, `glMultiTexCoord4dvARB`);
			bindFunc(glMultiTexCoord4fARB, `glMultiTexCoord4fARB`);
			bindFunc(glMultiTexCoord4fvARB, `glMultiTexCoord4fvARB`);
			bindFunc(glMultiTexCoord4iARB, `glMultiTexCoord4iARB`);
			bindFunc(glMultiTexCoord4ivARB, `glMultiTexCoord4ivARB`);
			bindFunc(glMultiTexCoord4sARB, `glMultiTexCoord4sARB`);
			bindFunc(glMultiTexCoord4svARB, `glMultiTexCoord4svARB`);
		}
		// GL ARB_occlusion_query
		static if (usingExt(`ARB_occlusion_query`)) {
			bindFunc(glBeginQueryARB, `glBeginQueryARB`);
			bindFunc(glDeleteQueriesARB, `glDeleteQueriesARB`);
			bindFunc(glEndQueryARB, `glEndQueryARB`);
			bindFunc(glGenQueriesARB, `glGenQueriesARB`);
			bindFunc(glGetQueryivARB, `glGetQueryivARB`);
			bindFunc(glGetQueryObjectivARB, `glGetQueryObjectivARB`);
			bindFunc(glGetQueryObjectuivARB, `glGetQueryObjectuivARB`);
			bindFunc(glIsQueryARB, `glIsQueryARB`);
		}
		// GL ARB_point_parameters
		static if (usingExt(`ARB_point_parameters`)) {
			bindFunc(glPointParameterfARB, `glPointParameterfARB`);
			bindFunc(glPointParameterfvARB, `glPointParameterfvARB`);
		}
		// GL ARB_program_interface_query
		static if (usingExt(`ARB_program_interface_query`)) {
			bindFunc(glGetProgramInterfaceiv, `glGetProgramInterfaceiv`);
			bindFunc(glGetProgramResourceIndex, `glGetProgramResourceIndex`);
			bindFunc(glGetProgramResourceiv, `glGetProgramResourceiv`);
			bindFunc(glGetProgramResourceLocation, `glGetProgramResourceLocation`);
			bindFunc(glGetProgramResourceLocationIndex, `glGetProgramResourceLocationIndex`);
			bindFunc(glGetProgramResourceName, `glGetProgramResourceName`);
		}
		// GL ARB_provoking_vertex
		static if (usingExt(`ARB_provoking_vertex`)) {
			bindFunc(glProvokingVertex, `glProvokingVertex`);
		}
		// GL ARB_robustness
		static if (usingExt(`ARB_robustness`)) {
			bindFunc(glGetGraphicsResetStatusARB, `glGetGraphicsResetStatusARB`);
			bindFunc(glGetnColorTableARB, `glGetnColorTableARB`);
			bindFunc(glGetnCompressedTexImageARB, `glGetnCompressedTexImageARB`);
			bindFunc(glGetnConvolutionFilterARB, `glGetnConvolutionFilterARB`);
			bindFunc(glGetnHistogramARB, `glGetnHistogramARB`);
			bindFunc(glGetnMapdvARB, `glGetnMapdvARB`);
			bindFunc(glGetnMapfvARB, `glGetnMapfvARB`);
			bindFunc(glGetnMapivARB, `glGetnMapivARB`);
			bindFunc(glGetnMinmaxARB, `glGetnMinmaxARB`);
			bindFunc(glGetnPixelMapfvARB, `glGetnPixelMapfvARB`);
			bindFunc(glGetnPixelMapuivARB, `glGetnPixelMapuivARB`);
			bindFunc(glGetnPixelMapusvARB, `glGetnPixelMapusvARB`);
			bindFunc(glGetnPolygonStippleARB, `glGetnPolygonStippleARB`);
			bindFunc(glGetnSeparableFilterARB, `glGetnSeparableFilterARB`);
			bindFunc(glGetnTexImageARB, `glGetnTexImageARB`);
			bindFunc(glGetnUniformdvARB, `glGetnUniformdvARB`);
			bindFunc(glGetnUniformfvARB, `glGetnUniformfvARB`);
			bindFunc(glGetnUniformivARB, `glGetnUniformivARB`);
			bindFunc(glGetnUniformuivARB, `glGetnUniformuivARB`);
			bindFunc(glReadnPixelsARB, `glReadnPixelsARB`);
		}
		// GL ARB_sample_shading
		static if (usingExt(`ARB_sample_shading`)) {
			bindFunc(glMinSampleShadingARB, `glMinSampleShadingARB`);
		}
		// GL ARB_sampler_objects
		static if (usingExt(`ARB_sampler_objects`)) {
			bindFunc(glBindSampler, `glBindSampler`);
			bindFunc(glDeleteSamplers, `glDeleteSamplers`);
			bindFunc(glGenSamplers, `glGenSamplers`);
			bindFunc(glGetSamplerParameterfv, `glGetSamplerParameterfv`);
			bindFunc(glGetSamplerParameterIiv, `glGetSamplerParameterIiv`);
			bindFunc(glGetSamplerParameterIuiv, `glGetSamplerParameterIuiv`);
			bindFunc(glGetSamplerParameteriv, `glGetSamplerParameteriv`);
			bindFunc(glIsSampler, `glIsSampler`);
			bindFunc(glSamplerParameterf, `glSamplerParameterf`);
			bindFunc(glSamplerParameterfv, `glSamplerParameterfv`);
			bindFunc(glSamplerParameteri, `glSamplerParameteri`);
			bindFunc(glSamplerParameterIiv, `glSamplerParameterIiv`);
			bindFunc(glSamplerParameterIuiv, `glSamplerParameterIuiv`);
			bindFunc(glSamplerParameteriv, `glSamplerParameteriv`);
		}
		// GL ARB_separate_shader_objects
		static if (usingExt(`ARB_separate_shader_objects`)) {
			bindFunc(glActiveShaderProgram, `glActiveShaderProgram`);
			bindFunc(glBindProgramPipeline, `glBindProgramPipeline`);
			bindFunc(glCreateShaderProgramv, `glCreateShaderProgramv`);
			bindFunc(glDeleteProgramPipelines, `glDeleteProgramPipelines`);
			bindFunc(glGenProgramPipelines, `glGenProgramPipelines`);
			bindFunc(glGetProgramPipelineInfoLog, `glGetProgramPipelineInfoLog`);
			bindFunc(glGetProgramPipelineiv, `glGetProgramPipelineiv`);
			bindFunc(glIsProgramPipeline, `glIsProgramPipeline`);
			bindFunc(glProgramUniform1d, `glProgramUniform1d`);
			bindFunc(glProgramUniform1dv, `glProgramUniform1dv`);
			bindFunc(glProgramUniform1f, `glProgramUniform1f`);
			bindFunc(glProgramUniform1fv, `glProgramUniform1fv`);
			bindFunc(glProgramUniform1i, `glProgramUniform1i`);
			bindFunc(glProgramUniform1iv, `glProgramUniform1iv`);
			bindFunc(glProgramUniform1ui, `glProgramUniform1ui`);
			bindFunc(glProgramUniform1uiv, `glProgramUniform1uiv`);
			bindFunc(glProgramUniform2d, `glProgramUniform2d`);
			bindFunc(glProgramUniform2dv, `glProgramUniform2dv`);
			bindFunc(glProgramUniform2f, `glProgramUniform2f`);
			bindFunc(glProgramUniform2fv, `glProgramUniform2fv`);
			bindFunc(glProgramUniform2i, `glProgramUniform2i`);
			bindFunc(glProgramUniform2iv, `glProgramUniform2iv`);
			bindFunc(glProgramUniform2ui, `glProgramUniform2ui`);
			bindFunc(glProgramUniform2uiv, `glProgramUniform2uiv`);
			bindFunc(glProgramUniform3d, `glProgramUniform3d`);
			bindFunc(glProgramUniform3dv, `glProgramUniform3dv`);
			bindFunc(glProgramUniform3f, `glProgramUniform3f`);
			bindFunc(glProgramUniform3fv, `glProgramUniform3fv`);
			bindFunc(glProgramUniform3i, `glProgramUniform3i`);
			bindFunc(glProgramUniform3iv, `glProgramUniform3iv`);
			bindFunc(glProgramUniform3ui, `glProgramUniform3ui`);
			bindFunc(glProgramUniform3uiv, `glProgramUniform3uiv`);
			bindFunc(glProgramUniform4d, `glProgramUniform4d`);
			bindFunc(glProgramUniform4dv, `glProgramUniform4dv`);
			bindFunc(glProgramUniform4f, `glProgramUniform4f`);
			bindFunc(glProgramUniform4fv, `glProgramUniform4fv`);
			bindFunc(glProgramUniform4i, `glProgramUniform4i`);
			bindFunc(glProgramUniform4iv, `glProgramUniform4iv`);
			bindFunc(glProgramUniform4ui, `glProgramUniform4ui`);
			bindFunc(glProgramUniform4uiv, `glProgramUniform4uiv`);
			bindFunc(glProgramUniformMatrix2dv, `glProgramUniformMatrix2dv`);
			bindFunc(glProgramUniformMatrix2fv, `glProgramUniformMatrix2fv`);
			bindFunc(glProgramUniformMatrix2x3dv, `glProgramUniformMatrix2x3dv`);
			bindFunc(glProgramUniformMatrix2x3fv, `glProgramUniformMatrix2x3fv`);
			bindFunc(glProgramUniformMatrix2x4dv, `glProgramUniformMatrix2x4dv`);
			bindFunc(glProgramUniformMatrix2x4fv, `glProgramUniformMatrix2x4fv`);
			bindFunc(glProgramUniformMatrix3dv, `glProgramUniformMatrix3dv`);
			bindFunc(glProgramUniformMatrix3fv, `glProgramUniformMatrix3fv`);
			bindFunc(glProgramUniformMatrix3x2dv, `glProgramUniformMatrix3x2dv`);
			bindFunc(glProgramUniformMatrix3x2fv, `glProgramUniformMatrix3x2fv`);
			bindFunc(glProgramUniformMatrix3x4dv, `glProgramUniformMatrix3x4dv`);
			bindFunc(glProgramUniformMatrix3x4fv, `glProgramUniformMatrix3x4fv`);
			bindFunc(glProgramUniformMatrix4dv, `glProgramUniformMatrix4dv`);
			bindFunc(glProgramUniformMatrix4fv, `glProgramUniformMatrix4fv`);
			bindFunc(glProgramUniformMatrix4x2dv, `glProgramUniformMatrix4x2dv`);
			bindFunc(glProgramUniformMatrix4x2fv, `glProgramUniformMatrix4x2fv`);
			bindFunc(glProgramUniformMatrix4x3dv, `glProgramUniformMatrix4x3dv`);
			bindFunc(glProgramUniformMatrix4x3fv, `glProgramUniformMatrix4x3fv`);
			bindFunc(glUseProgramStages, `glUseProgramStages`);
			bindFunc(glValidateProgramPipeline, `glValidateProgramPipeline`);
		}
		// GL ARB_shader_atomic_counters
		static if (usingExt(`ARB_shader_atomic_counters`)) {
			bindFunc(glGetActiveAtomicCounterBufferiv, `glGetActiveAtomicCounterBufferiv`);
		}
		// GL ARB_shader_image_load_store
		static if (usingExt(`ARB_shader_image_load_store`)) {
			bindFunc(glBindImageTexture, `glBindImageTexture`);
			bindFunc(glMemoryBarrier, `glMemoryBarrier`);
		}
		// GL ARB_shader_objects
		static if (usingExt(`ARB_shader_objects`)) {
			bindFunc(glAttachObjectARB, `glAttachObjectARB`);
			bindFunc(glCompileShaderARB, `glCompileShaderARB`);
			bindFunc(glCreateProgramObjectARB, `glCreateProgramObjectARB`);
			bindFunc(glCreateShaderObjectARB, `glCreateShaderObjectARB`);
			bindFunc(glDeleteObjectARB, `glDeleteObjectARB`);
			bindFunc(glDetachObjectARB, `glDetachObjectARB`);
			bindFunc(glGetActiveUniformARB, `glGetActiveUniformARB`);
			bindFunc(glGetAttachedObjectsARB, `glGetAttachedObjectsARB`);
			bindFunc(glGetHandleARB, `glGetHandleARB`);
			bindFunc(glGetInfoLogARB, `glGetInfoLogARB`);
			bindFunc(glGetObjectParameterfvARB, `glGetObjectParameterfvARB`);
			bindFunc(glGetObjectParameterivARB, `glGetObjectParameterivARB`);
			bindFunc(glGetShaderSourceARB, `glGetShaderSourceARB`);
			bindFunc(glGetUniformfvARB, `glGetUniformfvARB`);
			bindFunc(glGetUniformivARB, `glGetUniformivARB`);
			bindFunc(glGetUniformLocationARB, `glGetUniformLocationARB`);
			bindFunc(glLinkProgramARB, `glLinkProgramARB`);
			bindFunc(glShaderSourceARB, `glShaderSourceARB`);
			bindFunc(glUniform1fARB, `glUniform1fARB`);
			bindFunc(glUniform1fvARB, `glUniform1fvARB`);
			bindFunc(glUniform1iARB, `glUniform1iARB`);
			bindFunc(glUniform1ivARB, `glUniform1ivARB`);
			bindFunc(glUniform2fARB, `glUniform2fARB`);
			bindFunc(glUniform2fvARB, `glUniform2fvARB`);
			bindFunc(glUniform2iARB, `glUniform2iARB`);
			bindFunc(glUniform2ivARB, `glUniform2ivARB`);
			bindFunc(glUniform3fARB, `glUniform3fARB`);
			bindFunc(glUniform3fvARB, `glUniform3fvARB`);
			bindFunc(glUniform3iARB, `glUniform3iARB`);
			bindFunc(glUniform3ivARB, `glUniform3ivARB`);
			bindFunc(glUniform4fARB, `glUniform4fARB`);
			bindFunc(glUniform4fvARB, `glUniform4fvARB`);
			bindFunc(glUniform4iARB, `glUniform4iARB`);
			bindFunc(glUniform4ivARB, `glUniform4ivARB`);
			bindFunc(glUniformMatrix2fvARB, `glUniformMatrix2fvARB`);
			bindFunc(glUniformMatrix3fvARB, `glUniformMatrix3fvARB`);
			bindFunc(glUniformMatrix4fvARB, `glUniformMatrix4fvARB`);
			bindFunc(glUseProgramObjectARB, `glUseProgramObjectARB`);
			bindFunc(glValidateProgramARB, `glValidateProgramARB`);
		}
		// GL ARB_shader_storage_buffer_object
		static if (usingExt(`ARB_shader_storage_buffer_object`)) {
			bindFunc(glShaderStorageBlockBinding, `glShaderStorageBlockBinding`);
		}
		// GL ARB_shader_subroutine
		static if (usingExt(`ARB_shader_subroutine`)) {
			bindFunc(glGetActiveSubroutineName, `glGetActiveSubroutineName`);
			bindFunc(glGetActiveSubroutineUniformiv, `glGetActiveSubroutineUniformiv`);
			bindFunc(glGetActiveSubroutineUniformName, `glGetActiveSubroutineUniformName`);
			bindFunc(glGetProgramStageiv, `glGetProgramStageiv`);
			bindFunc(glGetSubroutineIndex, `glGetSubroutineIndex`);
			bindFunc(glGetSubroutineUniformLocation, `glGetSubroutineUniformLocation`);
			bindFunc(glGetUniformSubroutineuiv, `glGetUniformSubroutineuiv`);
			bindFunc(glUniformSubroutinesuiv, `glUniformSubroutinesuiv`);
		}
		// GL ARB_shading_language_include
		static if (usingExt(`ARB_shading_language_include`)) {
			bindFunc(glCompileShaderIncludeARB, `glCompileShaderIncludeARB`);
			bindFunc(glDeleteNamedStringARB, `glDeleteNamedStringARB`);
			bindFunc(glGetNamedStringARB, `glGetNamedStringARB`);
			bindFunc(glGetNamedStringivARB, `glGetNamedStringivARB`);
			bindFunc(glIsNamedStringARB, `glIsNamedStringARB`);
			bindFunc(glNamedStringARB, `glNamedStringARB`);
		}
		// GL ARB_sync
		static if (usingExt(`ARB_sync`)) {
			bindFunc(glClientWaitSync, `glClientWaitSync`);
			bindFunc(glDeleteSync, `glDeleteSync`);
			bindFunc(glFenceSync, `glFenceSync`);
			bindFunc(glGetInteger64v, `glGetInteger64v`);
			bindFunc(glGetSynciv, `glGetSynciv`);
			bindFunc(glIsSync, `glIsSync`);
			bindFunc(glWaitSync, `glWaitSync`);
		}
		// GL ARB_tessellation_shader
		static if (usingExt(`ARB_tessellation_shader`)) {
			bindFunc(glPatchParameterfv, `glPatchParameterfv`);
			bindFunc(glPatchParameteri, `glPatchParameteri`);
		}
		// GL ARB_texture_buffer_object
		static if (usingExt(`ARB_texture_buffer_object`)) {
			bindFunc(glTexBufferARB, `glTexBufferARB`);
		}
		// GL ARB_texture_buffer_range
		static if (usingExt(`ARB_texture_buffer_range`)) {
			bindFunc(glTexBufferRange, `glTexBufferRange`);
			bindFunc(glTextureBufferRangeEXT, `glTextureBufferRangeEXT`);
		}
		// GL ARB_texture_compression
		static if (usingExt(`ARB_texture_compression`)) {
			bindFunc(glCompressedTexImage1DARB, `glCompressedTexImage1DARB`);
			bindFunc(glCompressedTexImage2DARB, `glCompressedTexImage2DARB`);
			bindFunc(glCompressedTexImage3DARB, `glCompressedTexImage3DARB`);
			bindFunc(glCompressedTexSubImage1DARB, `glCompressedTexSubImage1DARB`);
			bindFunc(glCompressedTexSubImage2DARB, `glCompressedTexSubImage2DARB`);
			bindFunc(glCompressedTexSubImage3DARB, `glCompressedTexSubImage3DARB`);
			bindFunc(glGetCompressedTexImageARB, `glGetCompressedTexImageARB`);
		}
		// GL ARB_texture_multisample
		static if (usingExt(`ARB_texture_multisample`)) {
			bindFunc(glGetMultisamplefv, `glGetMultisamplefv`);
			bindFunc(glSampleMaski, `glSampleMaski`);
			bindFunc(glTexImage2DMultisample, `glTexImage2DMultisample`);
			bindFunc(glTexImage3DMultisample, `glTexImage3DMultisample`);
		}
		// GL ARB_texture_storage
		static if (usingExt(`ARB_texture_storage`)) {
			bindFunc(glTexStorage1D, `glTexStorage1D`);
			bindFunc(glTexStorage2D, `glTexStorage2D`);
			bindFunc(glTexStorage3D, `glTexStorage3D`);
			bindFunc(glTextureStorage1DEXT, `glTextureStorage1DEXT`);
			bindFunc(glTextureStorage2DEXT, `glTextureStorage2DEXT`);
			bindFunc(glTextureStorage3DEXT, `glTextureStorage3DEXT`);
		}
		// GL ARB_texture_storage_multisample
		static if (usingExt(`ARB_texture_storage_multisample`)) {
			bindFunc(glTexStorage2DMultisample, `glTexStorage2DMultisample`);
			bindFunc(glTexStorage3DMultisample, `glTexStorage3DMultisample`);
			bindFunc(glTextureStorage2DMultisampleEXT, `glTextureStorage2DMultisampleEXT`);
			bindFunc(glTextureStorage3DMultisampleEXT, `glTextureStorage3DMultisampleEXT`);
		}
		// GL ARB_texture_view
		static if (usingExt(`ARB_texture_view`)) {
			bindFunc(glTextureView, `glTextureView`);
		}
		// GL ARB_timer_query
		static if (usingExt(`ARB_timer_query`)) {
			bindFunc(glGetQueryObjecti64v, `glGetQueryObjecti64v`);
			bindFunc(glGetQueryObjectui64v, `glGetQueryObjectui64v`);
			bindFunc(glQueryCounter, `glQueryCounter`);
		}
		// GL ARB_transform_feedback_instanced
		static if (usingExt(`ARB_transform_feedback_instanced`)) {
			bindFunc(glDrawTransformFeedbackInstanced, `glDrawTransformFeedbackInstanced`);
			bindFunc(glDrawTransformFeedbackStreamInstanced, `glDrawTransformFeedbackStreamInstanced`);
		}
		// GL ARB_transform_feedback2
		static if (usingExt(`ARB_transform_feedback2`)) {
			bindFunc(glBindTransformFeedback, `glBindTransformFeedback`);
			bindFunc(glDeleteTransformFeedbacks, `glDeleteTransformFeedbacks`);
			bindFunc(glDrawTransformFeedback, `glDrawTransformFeedback`);
			bindFunc(glGenTransformFeedbacks, `glGenTransformFeedbacks`);
			bindFunc(glIsTransformFeedback, `glIsTransformFeedback`);
			bindFunc(glPauseTransformFeedback, `glPauseTransformFeedback`);
			bindFunc(glResumeTransformFeedback, `glResumeTransformFeedback`);
		}
		// GL ARB_transform_feedback3
		static if (usingExt(`ARB_transform_feedback3`)) {
			bindFunc(glBeginQueryIndexed, `glBeginQueryIndexed`);
			bindFunc(glDrawTransformFeedbackStream, `glDrawTransformFeedbackStream`);
			bindFunc(glEndQueryIndexed, `glEndQueryIndexed`);
			bindFunc(glGetQueryIndexediv, `glGetQueryIndexediv`);
		}
		// GL ARB_transpose_matrix
		static if (usingExt(`ARB_transpose_matrix`)) {
			bindFunc(glLoadTransposeMatrixdARB, `glLoadTransposeMatrixdARB`);
			bindFunc(glLoadTransposeMatrixfARB, `glLoadTransposeMatrixfARB`);
			bindFunc(glMultTransposeMatrixdARB, `glMultTransposeMatrixdARB`);
			bindFunc(glMultTransposeMatrixfARB, `glMultTransposeMatrixfARB`);
		}
		// GL ARB_uniform_buffer_object
		static if (usingExt(`ARB_uniform_buffer_object`)) {
			bindFunc(glGetActiveUniformBlockiv, `glGetActiveUniformBlockiv`);
			bindFunc(glGetActiveUniformBlockName, `glGetActiveUniformBlockName`);
			bindFunc(glGetActiveUniformName, `glGetActiveUniformName`);
			bindFunc(glGetActiveUniformsiv, `glGetActiveUniformsiv`);
			bindFunc(glGetUniformBlockIndex, `glGetUniformBlockIndex`);
			bindFunc(glGetUniformIndices, `glGetUniformIndices`);
			bindFunc(glUniformBlockBinding, `glUniformBlockBinding`);
		}
		// GL ARB_vertex_array_object
		static if (usingExt(`ARB_vertex_array_object`)) {
			bindFunc(glBindVertexArray, `glBindVertexArray`);
			bindFunc(glDeleteVertexArrays, `glDeleteVertexArrays`);
			bindFunc(glGenVertexArrays, `glGenVertexArrays`);
			bindFunc(glIsVertexArray, `glIsVertexArray`);
		}
		// GL ARB_vertex_attrib_64bit
		static if (usingExt(`ARB_vertex_attrib_64bit`)) {
			bindFunc(glGetVertexAttribLdv, `glGetVertexAttribLdv`);
			bindFunc(glVertexAttribL1d, `glVertexAttribL1d`);
			bindFunc(glVertexAttribL1dv, `glVertexAttribL1dv`);
			bindFunc(glVertexAttribL2d, `glVertexAttribL2d`);
			bindFunc(glVertexAttribL2dv, `glVertexAttribL2dv`);
			bindFunc(glVertexAttribL3d, `glVertexAttribL3d`);
			bindFunc(glVertexAttribL3dv, `glVertexAttribL3dv`);
			bindFunc(glVertexAttribL4d, `glVertexAttribL4d`);
			bindFunc(glVertexAttribL4dv, `glVertexAttribL4dv`);
			bindFunc(glVertexAttribLPointer, `glVertexAttribLPointer`);
		}
		// GL ARB_vertex_attrib_binding
		static if (usingExt(`ARB_vertex_attrib_binding`)) {
			bindFunc(glBindVertexBuffer, `glBindVertexBuffer`);
			bindFunc(glVertexArrayBindVertexBufferEXT, `glVertexArrayBindVertexBufferEXT`);
			bindFunc(glVertexArrayVertexAttribBindingEXT, `glVertexArrayVertexAttribBindingEXT`);
			bindFunc(glVertexArrayVertexAttribFormatEXT, `glVertexArrayVertexAttribFormatEXT`);
			bindFunc(glVertexArrayVertexAttribIFormatEXT, `glVertexArrayVertexAttribIFormatEXT`);
			bindFunc(glVertexArrayVertexAttribLFormatEXT, `glVertexArrayVertexAttribLFormatEXT`);
			bindFunc(glVertexArrayVertexBindingDivisorEXT, `glVertexArrayVertexBindingDivisorEXT`);
			bindFunc(glVertexAttribBinding, `glVertexAttribBinding`);
			bindFunc(glVertexAttribFormat, `glVertexAttribFormat`);
			bindFunc(glVertexAttribIFormat, `glVertexAttribIFormat`);
			bindFunc(glVertexAttribLFormat, `glVertexAttribLFormat`);
			bindFunc(glVertexBindingDivisor, `glVertexBindingDivisor`);
		}
		// GL ARB_vertex_blend
		static if (usingExt(`ARB_vertex_blend`)) {
			bindFunc(glVertexBlendARB, `glVertexBlendARB`);
			bindFunc(glWeightbvARB, `glWeightbvARB`);
			bindFunc(glWeightdvARB, `glWeightdvARB`);
			bindFunc(glWeightfvARB, `glWeightfvARB`);
			bindFunc(glWeightivARB, `glWeightivARB`);
			bindFunc(glWeightPointerARB, `glWeightPointerARB`);
			bindFunc(glWeightsvARB, `glWeightsvARB`);
			bindFunc(glWeightubvARB, `glWeightubvARB`);
			bindFunc(glWeightuivARB, `glWeightuivARB`);
			bindFunc(glWeightusvARB, `glWeightusvARB`);
		}
		// GL ARB_vertex_buffer_object
		static if (usingExt(`ARB_vertex_buffer_object`)) {
			bindFunc(glBindBufferARB, `glBindBufferARB`);
			bindFunc(glBufferDataARB, `glBufferDataARB`);
			bindFunc(glBufferSubDataARB, `glBufferSubDataARB`);
			bindFunc(glDeleteBuffersARB, `glDeleteBuffersARB`);
			bindFunc(glGenBuffersARB, `glGenBuffersARB`);
			bindFunc(glGetBufferParameterivARB, `glGetBufferParameterivARB`);
			bindFunc(glGetBufferPointervARB, `glGetBufferPointervARB`);
			bindFunc(glGetBufferSubDataARB, `glGetBufferSubDataARB`);
			bindFunc(glIsBufferARB, `glIsBufferARB`);
			bindFunc(glMapBufferARB, `glMapBufferARB`);
			bindFunc(glUnmapBufferARB, `glUnmapBufferARB`);
		}
		// GL ARB_vertex_program
		static if (usingExt(`ARB_vertex_program`)) {
			bindFunc(glBindProgramARB, `glBindProgramARB`);
			bindFunc(glDeleteProgramsARB, `glDeleteProgramsARB`);
			bindFunc(glDisableVertexAttribArrayARB, `glDisableVertexAttribArrayARB`);
			bindFunc(glEnableVertexAttribArrayARB, `glEnableVertexAttribArrayARB`);
			bindFunc(glGenProgramsARB, `glGenProgramsARB`);
			bindFunc(glGetProgramEnvParameterdvARB, `glGetProgramEnvParameterdvARB`);
			bindFunc(glGetProgramEnvParameterfvARB, `glGetProgramEnvParameterfvARB`);
			bindFunc(glGetProgramivARB, `glGetProgramivARB`);
			bindFunc(glGetProgramLocalParameterdvARB, `glGetProgramLocalParameterdvARB`);
			bindFunc(glGetProgramLocalParameterfvARB, `glGetProgramLocalParameterfvARB`);
			bindFunc(glGetProgramStringARB, `glGetProgramStringARB`);
			bindFunc(glGetVertexAttribdvARB, `glGetVertexAttribdvARB`);
			bindFunc(glGetVertexAttribfvARB, `glGetVertexAttribfvARB`);
			bindFunc(glGetVertexAttribivARB, `glGetVertexAttribivARB`);
			bindFunc(glGetVertexAttribPointervARB, `glGetVertexAttribPointervARB`);
			bindFunc(glIsProgramARB, `glIsProgramARB`);
			bindFunc(glProgramEnvParameter4dARB, `glProgramEnvParameter4dARB`);
			bindFunc(glProgramEnvParameter4dvARB, `glProgramEnvParameter4dvARB`);
			bindFunc(glProgramEnvParameter4fARB, `glProgramEnvParameter4fARB`);
			bindFunc(glProgramEnvParameter4fvARB, `glProgramEnvParameter4fvARB`);
			bindFunc(glProgramLocalParameter4dARB, `glProgramLocalParameter4dARB`);
			bindFunc(glProgramLocalParameter4dvARB, `glProgramLocalParameter4dvARB`);
			bindFunc(glProgramLocalParameter4fARB, `glProgramLocalParameter4fARB`);
			bindFunc(glProgramLocalParameter4fvARB, `glProgramLocalParameter4fvARB`);
			bindFunc(glProgramStringARB, `glProgramStringARB`);
			bindFunc(glVertexAttrib1dARB, `glVertexAttrib1dARB`);
			bindFunc(glVertexAttrib1dvARB, `glVertexAttrib1dvARB`);
			bindFunc(glVertexAttrib1fARB, `glVertexAttrib1fARB`);
			bindFunc(glVertexAttrib1fvARB, `glVertexAttrib1fvARB`);
			bindFunc(glVertexAttrib1sARB, `glVertexAttrib1sARB`);
			bindFunc(glVertexAttrib1svARB, `glVertexAttrib1svARB`);
			bindFunc(glVertexAttrib2dARB, `glVertexAttrib2dARB`);
			bindFunc(glVertexAttrib2dvARB, `glVertexAttrib2dvARB`);
			bindFunc(glVertexAttrib2fARB, `glVertexAttrib2fARB`);
			bindFunc(glVertexAttrib2fvARB, `glVertexAttrib2fvARB`);
			bindFunc(glVertexAttrib2sARB, `glVertexAttrib2sARB`);
			bindFunc(glVertexAttrib2svARB, `glVertexAttrib2svARB`);
			bindFunc(glVertexAttrib3dARB, `glVertexAttrib3dARB`);
			bindFunc(glVertexAttrib3dvARB, `glVertexAttrib3dvARB`);
			bindFunc(glVertexAttrib3fARB, `glVertexAttrib3fARB`);
			bindFunc(glVertexAttrib3fvARB, `glVertexAttrib3fvARB`);
			bindFunc(glVertexAttrib3sARB, `glVertexAttrib3sARB`);
			bindFunc(glVertexAttrib3svARB, `glVertexAttrib3svARB`);
			bindFunc(glVertexAttrib4bvARB, `glVertexAttrib4bvARB`);
			bindFunc(glVertexAttrib4dARB, `glVertexAttrib4dARB`);
			bindFunc(glVertexAttrib4dvARB, `glVertexAttrib4dvARB`);
			bindFunc(glVertexAttrib4fARB, `glVertexAttrib4fARB`);
			bindFunc(glVertexAttrib4fvARB, `glVertexAttrib4fvARB`);
			bindFunc(glVertexAttrib4ivARB, `glVertexAttrib4ivARB`);
			bindFunc(glVertexAttrib4NbvARB, `glVertexAttrib4NbvARB`);
			bindFunc(glVertexAttrib4NivARB, `glVertexAttrib4NivARB`);
			bindFunc(glVertexAttrib4NsvARB, `glVertexAttrib4NsvARB`);
			bindFunc(glVertexAttrib4NubARB, `glVertexAttrib4NubARB`);
			bindFunc(glVertexAttrib4NubvARB, `glVertexAttrib4NubvARB`);
			bindFunc(glVertexAttrib4NuivARB, `glVertexAttrib4NuivARB`);
			bindFunc(glVertexAttrib4NusvARB, `glVertexAttrib4NusvARB`);
			bindFunc(glVertexAttrib4sARB, `glVertexAttrib4sARB`);
			bindFunc(glVertexAttrib4svARB, `glVertexAttrib4svARB`);
			bindFunc(glVertexAttrib4ubvARB, `glVertexAttrib4ubvARB`);
			bindFunc(glVertexAttrib4uivARB, `glVertexAttrib4uivARB`);
			bindFunc(glVertexAttrib4usvARB, `glVertexAttrib4usvARB`);
			bindFunc(glVertexAttribPointerARB, `glVertexAttribPointerARB`);
		}
		// GL ARB_vertex_shader
		static if (usingExt(`ARB_vertex_shader`)) {
			bindFunc(glBindAttribLocationARB, `glBindAttribLocationARB`);
			bindFunc(glGetActiveAttribARB, `glGetActiveAttribARB`);
			bindFunc(glGetAttribLocationARB, `glGetAttribLocationARB`);
		}
		// GL ARB_vertex_type_2_10_10_10_rev
		static if (usingExt(`ARB_vertex_type_2_10_10_10_rev`)) {
			bindFunc(glColorP3ui, `glColorP3ui`);
			bindFunc(glColorP3uiv, `glColorP3uiv`);
			bindFunc(glColorP4ui, `glColorP4ui`);
			bindFunc(glColorP4uiv, `glColorP4uiv`);
			bindFunc(glMultiTexCoordP1ui, `glMultiTexCoordP1ui`);
			bindFunc(glMultiTexCoordP1uiv, `glMultiTexCoordP1uiv`);
			bindFunc(glMultiTexCoordP2ui, `glMultiTexCoordP2ui`);
			bindFunc(glMultiTexCoordP2uiv, `glMultiTexCoordP2uiv`);
			bindFunc(glMultiTexCoordP3ui, `glMultiTexCoordP3ui`);
			bindFunc(glMultiTexCoordP3uiv, `glMultiTexCoordP3uiv`);
			bindFunc(glMultiTexCoordP4ui, `glMultiTexCoordP4ui`);
			bindFunc(glMultiTexCoordP4uiv, `glMultiTexCoordP4uiv`);
			bindFunc(glNormalP3ui, `glNormalP3ui`);
			bindFunc(glNormalP3uiv, `glNormalP3uiv`);
			bindFunc(glSecondaryColorP3ui, `glSecondaryColorP3ui`);
			bindFunc(glSecondaryColorP3uiv, `glSecondaryColorP3uiv`);
			bindFunc(glTexCoordP1ui, `glTexCoordP1ui`);
			bindFunc(glTexCoordP1uiv, `glTexCoordP1uiv`);
			bindFunc(glTexCoordP2ui, `glTexCoordP2ui`);
			bindFunc(glTexCoordP2uiv, `glTexCoordP2uiv`);
			bindFunc(glTexCoordP3ui, `glTexCoordP3ui`);
			bindFunc(glTexCoordP3uiv, `glTexCoordP3uiv`);
			bindFunc(glTexCoordP4ui, `glTexCoordP4ui`);
			bindFunc(glTexCoordP4uiv, `glTexCoordP4uiv`);
			bindFunc(glVertexAttribP1ui, `glVertexAttribP1ui`);
			bindFunc(glVertexAttribP1uiv, `glVertexAttribP1uiv`);
			bindFunc(glVertexAttribP2ui, `glVertexAttribP2ui`);
			bindFunc(glVertexAttribP2uiv, `glVertexAttribP2uiv`);
			bindFunc(glVertexAttribP3ui, `glVertexAttribP3ui`);
			bindFunc(glVertexAttribP3uiv, `glVertexAttribP3uiv`);
			bindFunc(glVertexAttribP4ui, `glVertexAttribP4ui`);
			bindFunc(glVertexAttribP4uiv, `glVertexAttribP4uiv`);
			bindFunc(glVertexP2ui, `glVertexP2ui`);
			bindFunc(glVertexP2uiv, `glVertexP2uiv`);
			bindFunc(glVertexP3ui, `glVertexP3ui`);
			bindFunc(glVertexP3uiv, `glVertexP3uiv`);
			bindFunc(glVertexP4ui, `glVertexP4ui`);
			bindFunc(glVertexP4uiv, `glVertexP4uiv`);
		}
		// GL ARB_viewport_array
		static if (usingExt(`ARB_viewport_array`)) {
			bindFunc(glDepthRangeArrayv, `glDepthRangeArrayv`);
			bindFunc(glDepthRangeIndexed, `glDepthRangeIndexed`);
			bindFunc(glGetDoublei_v, `glGetDoublei_v`);
			bindFunc(glGetFloati_v, `glGetFloati_v`);
			bindFunc(glScissorArrayv, `glScissorArrayv`);
			bindFunc(glScissorIndexed, `glScissorIndexed`);
			bindFunc(glScissorIndexedv, `glScissorIndexedv`);
			bindFunc(glViewportArrayv, `glViewportArrayv`);
			bindFunc(glViewportIndexedf, `glViewportIndexedf`);
			bindFunc(glViewportIndexedfv, `glViewportIndexedfv`);
		}
		// GL ARB_window_pos
		static if (usingExt(`ARB_window_pos`)) {
			bindFunc(glWindowPos2dARB, `glWindowPos2dARB`);
			bindFunc(glWindowPos2dvARB, `glWindowPos2dvARB`);
			bindFunc(glWindowPos2fARB, `glWindowPos2fARB`);
			bindFunc(glWindowPos2fvARB, `glWindowPos2fvARB`);
			bindFunc(glWindowPos2iARB, `glWindowPos2iARB`);
			bindFunc(glWindowPos2ivARB, `glWindowPos2ivARB`);
			bindFunc(glWindowPos2sARB, `glWindowPos2sARB`);
			bindFunc(glWindowPos2svARB, `glWindowPos2svARB`);
			bindFunc(glWindowPos3dARB, `glWindowPos3dARB`);
			bindFunc(glWindowPos3dvARB, `glWindowPos3dvARB`);
			bindFunc(glWindowPos3fARB, `glWindowPos3fARB`);
			bindFunc(glWindowPos3fvARB, `glWindowPos3fvARB`);
			bindFunc(glWindowPos3iARB, `glWindowPos3iARB`);
			bindFunc(glWindowPos3ivARB, `glWindowPos3ivARB`);
			bindFunc(glWindowPos3sARB, `glWindowPos3sARB`);
			bindFunc(glWindowPos3svARB, `glWindowPos3svARB`);
		}
		// GL ATI_draw_buffers
		static if (usingExt(`ATI_draw_buffers`)) {
			bindFunc(glDrawBuffersATI, `glDrawBuffersATI`);
		}
		// GL ATI_element_array
		static if (usingExt(`ATI_element_array`)) {
			bindFunc(glDrawElementArrayATI, `glDrawElementArrayATI`);
			bindFunc(glDrawRangeElementArrayATI, `glDrawRangeElementArrayATI`);
			bindFunc(glElementPointerATI, `glElementPointerATI`);
		}
		// GL ATI_envmap_bumpmap
		static if (usingExt(`ATI_envmap_bumpmap`)) {
			bindFunc(glGetTexBumpParameterfvATI, `glGetTexBumpParameterfvATI`);
			bindFunc(glGetTexBumpParameterivATI, `glGetTexBumpParameterivATI`);
			bindFunc(glTexBumpParameterfvATI, `glTexBumpParameterfvATI`);
			bindFunc(glTexBumpParameterivATI, `glTexBumpParameterivATI`);
		}
		// GL ATI_fragment_shader
		static if (usingExt(`ATI_fragment_shader`)) {
			bindFunc(glAlphaFragmentOp1ATI, `glAlphaFragmentOp1ATI`);
			bindFunc(glAlphaFragmentOp2ATI, `glAlphaFragmentOp2ATI`);
			bindFunc(glAlphaFragmentOp3ATI, `glAlphaFragmentOp3ATI`);
			bindFunc(glBeginFragmentShaderATI, `glBeginFragmentShaderATI`);
			bindFunc(glBindFragmentShaderATI, `glBindFragmentShaderATI`);
			bindFunc(glColorFragmentOp1ATI, `glColorFragmentOp1ATI`);
			bindFunc(glColorFragmentOp2ATI, `glColorFragmentOp2ATI`);
			bindFunc(glColorFragmentOp3ATI, `glColorFragmentOp3ATI`);
			bindFunc(glDeleteFragmentShaderATI, `glDeleteFragmentShaderATI`);
			bindFunc(glEndFragmentShaderATI, `glEndFragmentShaderATI`);
			bindFunc(glGenFragmentShadersATI, `glGenFragmentShadersATI`);
			bindFunc(glPassTexCoordATI, `glPassTexCoordATI`);
			bindFunc(glSampleMapATI, `glSampleMapATI`);
			bindFunc(glSetFragmentShaderConstantATI, `glSetFragmentShaderConstantATI`);
		}
		// GL ATI_map_object_buffer
		static if (usingExt(`ATI_map_object_buffer`)) {
			bindFunc(glMapObjectBufferATI, `glMapObjectBufferATI`);
			bindFunc(glUnmapObjectBufferATI, `glUnmapObjectBufferATI`);
		}
		// GL ATI_pn_triangles
		static if (usingExt(`ATI_pn_triangles`)) {
			bindFunc(glPNTrianglesfATI, `glPNTrianglesfATI`);
			bindFunc(glPNTrianglesiATI, `glPNTrianglesiATI`);
		}
		// GL ATI_separate_stencil
		static if (usingExt(`ATI_separate_stencil`)) {
			bindFunc(glStencilFuncSeparateATI, `glStencilFuncSeparateATI`);
			bindFunc(glStencilOpSeparateATI, `glStencilOpSeparateATI`);
		}
		// GL ATI_vertex_array_object
		static if (usingExt(`ATI_vertex_array_object`)) {
			bindFunc(glArrayObjectATI, `glArrayObjectATI`);
			bindFunc(glFreeObjectBufferATI, `glFreeObjectBufferATI`);
			bindFunc(glGetArrayObjectfvATI, `glGetArrayObjectfvATI`);
			bindFunc(glGetArrayObjectivATI, `glGetArrayObjectivATI`);
			bindFunc(glGetObjectBufferfvATI, `glGetObjectBufferfvATI`);
			bindFunc(glGetObjectBufferivATI, `glGetObjectBufferivATI`);
			bindFunc(glGetVariantArrayObjectfvATI, `glGetVariantArrayObjectfvATI`);
			bindFunc(glGetVariantArrayObjectivATI, `glGetVariantArrayObjectivATI`);
			bindFunc(glIsObjectBufferATI, `glIsObjectBufferATI`);
			bindFunc(glNewObjectBufferATI, `glNewObjectBufferATI`);
			bindFunc(glUpdateObjectBufferATI, `glUpdateObjectBufferATI`);
			bindFunc(glVariantArrayObjectATI, `glVariantArrayObjectATI`);
		}
		// GL ATI_vertex_attrib_array_object
		static if (usingExt(`ATI_vertex_attrib_array_object`)) {
			bindFunc(glGetVertexAttribArrayObjectfvATI, `glGetVertexAttribArrayObjectfvATI`);
			bindFunc(glGetVertexAttribArrayObjectivATI, `glGetVertexAttribArrayObjectivATI`);
			bindFunc(glVertexAttribArrayObjectATI, `glVertexAttribArrayObjectATI`);
		}
		// GL ATI_vertex_streams
		static if (usingExt(`ATI_vertex_streams`)) {
			bindFunc(glClientActiveVertexStreamATI, `glClientActiveVertexStreamATI`);
			bindFunc(glNormalStream3bATI, `glNormalStream3bATI`);
			bindFunc(glNormalStream3bvATI, `glNormalStream3bvATI`);
			bindFunc(glNormalStream3dATI, `glNormalStream3dATI`);
			bindFunc(glNormalStream3dvATI, `glNormalStream3dvATI`);
			bindFunc(glNormalStream3fATI, `glNormalStream3fATI`);
			bindFunc(glNormalStream3fvATI, `glNormalStream3fvATI`);
			bindFunc(glNormalStream3iATI, `glNormalStream3iATI`);
			bindFunc(glNormalStream3ivATI, `glNormalStream3ivATI`);
			bindFunc(glNormalStream3sATI, `glNormalStream3sATI`);
			bindFunc(glNormalStream3svATI, `glNormalStream3svATI`);
			bindFunc(glVertexBlendEnvfATI, `glVertexBlendEnvfATI`);
			bindFunc(glVertexBlendEnviATI, `glVertexBlendEnviATI`);
			bindFunc(glVertexStream1dATI, `glVertexStream1dATI`);
			bindFunc(glVertexStream1dvATI, `glVertexStream1dvATI`);
			bindFunc(glVertexStream1fATI, `glVertexStream1fATI`);
			bindFunc(glVertexStream1fvATI, `glVertexStream1fvATI`);
			bindFunc(glVertexStream1iATI, `glVertexStream1iATI`);
			bindFunc(glVertexStream1ivATI, `glVertexStream1ivATI`);
			bindFunc(glVertexStream1sATI, `glVertexStream1sATI`);
			bindFunc(glVertexStream1svATI, `glVertexStream1svATI`);
			bindFunc(glVertexStream2dATI, `glVertexStream2dATI`);
			bindFunc(glVertexStream2dvATI, `glVertexStream2dvATI`);
			bindFunc(glVertexStream2fATI, `glVertexStream2fATI`);
			bindFunc(glVertexStream2fvATI, `glVertexStream2fvATI`);
			bindFunc(glVertexStream2iATI, `glVertexStream2iATI`);
			bindFunc(glVertexStream2ivATI, `glVertexStream2ivATI`);
			bindFunc(glVertexStream2sATI, `glVertexStream2sATI`);
			bindFunc(glVertexStream2svATI, `glVertexStream2svATI`);
			bindFunc(glVertexStream3dATI, `glVertexStream3dATI`);
			bindFunc(glVertexStream3dvATI, `glVertexStream3dvATI`);
			bindFunc(glVertexStream3fATI, `glVertexStream3fATI`);
			bindFunc(glVertexStream3fvATI, `glVertexStream3fvATI`);
			bindFunc(glVertexStream3iATI, `glVertexStream3iATI`);
			bindFunc(glVertexStream3ivATI, `glVertexStream3ivATI`);
			bindFunc(glVertexStream3sATI, `glVertexStream3sATI`);
			bindFunc(glVertexStream3svATI, `glVertexStream3svATI`);
			bindFunc(glVertexStream4dATI, `glVertexStream4dATI`);
			bindFunc(glVertexStream4dvATI, `glVertexStream4dvATI`);
			bindFunc(glVertexStream4fATI, `glVertexStream4fATI`);
			bindFunc(glVertexStream4fvATI, `glVertexStream4fvATI`);
			bindFunc(glVertexStream4iATI, `glVertexStream4iATI`);
			bindFunc(glVertexStream4ivATI, `glVertexStream4ivATI`);
			bindFunc(glVertexStream4sATI, `glVertexStream4sATI`);
			bindFunc(glVertexStream4svATI, `glVertexStream4svATI`);
		}
		// GL EXT_bindable_uniform
		static if (usingExt(`EXT_bindable_uniform`)) {
			bindFunc(glGetUniformBufferSizeEXT, `glGetUniformBufferSizeEXT`);
			bindFunc(glGetUniformOffsetEXT, `glGetUniformOffsetEXT`);
			bindFunc(glUniformBufferEXT, `glUniformBufferEXT`);
		}
		// GL EXT_blend_color
		static if (usingExt(`EXT_blend_color`)) {
			bindFunc(glBlendColorEXT, `glBlendColorEXT`);
		}
		// GL EXT_blend_equation_separate
		static if (usingExt(`EXT_blend_equation_separate`)) {
			bindFunc(glBlendEquationSeparateEXT, `glBlendEquationSeparateEXT`);
		}
		// GL EXT_blend_func_separate
		static if (usingExt(`EXT_blend_func_separate`)) {
			bindFunc(glBlendFuncSeparateEXT, `glBlendFuncSeparateEXT`);
		}
		// GL EXT_blend_minmax
		static if (usingExt(`EXT_blend_minmax`)) {
			bindFunc(glBlendEquationEXT, `glBlendEquationEXT`);
		}
		// GL EXT_color_subtable
		static if (usingExt(`EXT_color_subtable`)) {
			bindFunc(glColorSubTableEXT, `glColorSubTableEXT`);
			bindFunc(glCopyColorSubTableEXT, `glCopyColorSubTableEXT`);
		}
		// GL EXT_compiled_vertex_array
		static if (usingExt(`EXT_compiled_vertex_array`)) {
			bindFunc(glLockArraysEXT, `glLockArraysEXT`);
			bindFunc(glUnlockArraysEXT, `glUnlockArraysEXT`);
		}
		// GL EXT_convolution
		static if (usingExt(`EXT_convolution`)) {
			bindFunc(glConvolutionFilter1DEXT, `glConvolutionFilter1DEXT`);
			bindFunc(glConvolutionFilter2DEXT, `glConvolutionFilter2DEXT`);
			bindFunc(glConvolutionParameterfEXT, `glConvolutionParameterfEXT`);
			bindFunc(glConvolutionParameterfvEXT, `glConvolutionParameterfvEXT`);
			bindFunc(glConvolutionParameteriEXT, `glConvolutionParameteriEXT`);
			bindFunc(glConvolutionParameterivEXT, `glConvolutionParameterivEXT`);
			bindFunc(glCopyConvolutionFilter1DEXT, `glCopyConvolutionFilter1DEXT`);
			bindFunc(glCopyConvolutionFilter2DEXT, `glCopyConvolutionFilter2DEXT`);
			bindFunc(glGetConvolutionFilterEXT, `glGetConvolutionFilterEXT`);
			bindFunc(glGetConvolutionParameterfvEXT, `glGetConvolutionParameterfvEXT`);
			bindFunc(glGetConvolutionParameterivEXT, `glGetConvolutionParameterivEXT`);
			bindFunc(glGetSeparableFilterEXT, `glGetSeparableFilterEXT`);
			bindFunc(glSeparableFilter2DEXT, `glSeparableFilter2DEXT`);
		}
		// GL EXT_coordinate_frame
		static if (usingExt(`EXT_coordinate_frame`)) {
			bindFunc(glBinormal3bEXT, `glBinormal3bEXT`);
			bindFunc(glBinormal3bvEXT, `glBinormal3bvEXT`);
			bindFunc(glBinormal3dEXT, `glBinormal3dEXT`);
			bindFunc(glBinormal3dvEXT, `glBinormal3dvEXT`);
			bindFunc(glBinormal3fEXT, `glBinormal3fEXT`);
			bindFunc(glBinormal3fvEXT, `glBinormal3fvEXT`);
			bindFunc(glBinormal3iEXT, `glBinormal3iEXT`);
			bindFunc(glBinormal3ivEXT, `glBinormal3ivEXT`);
			bindFunc(glBinormal3sEXT, `glBinormal3sEXT`);
			bindFunc(glBinormal3svEXT, `glBinormal3svEXT`);
			bindFunc(glBinormalPointerEXT, `glBinormalPointerEXT`);
			bindFunc(glTangent3bEXT, `glTangent3bEXT`);
			bindFunc(glTangent3bvEXT, `glTangent3bvEXT`);
			bindFunc(glTangent3dEXT, `glTangent3dEXT`);
			bindFunc(glTangent3dvEXT, `glTangent3dvEXT`);
			bindFunc(glTangent3fEXT, `glTangent3fEXT`);
			bindFunc(glTangent3fvEXT, `glTangent3fvEXT`);
			bindFunc(glTangent3iEXT, `glTangent3iEXT`);
			bindFunc(glTangent3ivEXT, `glTangent3ivEXT`);
			bindFunc(glTangent3sEXT, `glTangent3sEXT`);
			bindFunc(glTangent3svEXT, `glTangent3svEXT`);
			bindFunc(glTangentPointerEXT, `glTangentPointerEXT`);
		}
		// GL EXT_copy_texture
		static if (usingExt(`EXT_copy_texture`)) {
			bindFunc(glCopyTexImage1DEXT, `glCopyTexImage1DEXT`);
			bindFunc(glCopyTexImage2DEXT, `glCopyTexImage2DEXT`);
			bindFunc(glCopyTexSubImage1DEXT, `glCopyTexSubImage1DEXT`);
			bindFunc(glCopyTexSubImage2DEXT, `glCopyTexSubImage2DEXT`);
			bindFunc(glCopyTexSubImage3DEXT, `glCopyTexSubImage3DEXT`);
		}
		// GL EXT_cull_vertex
		static if (usingExt(`EXT_cull_vertex`)) {
			bindFunc(glCullParameterdvEXT, `glCullParameterdvEXT`);
			bindFunc(glCullParameterfvEXT, `glCullParameterfvEXT`);
		}
		// GL EXT_depth_bounds_test
		static if (usingExt(`EXT_depth_bounds_test`)) {
			bindFunc(glDepthBoundsEXT, `glDepthBoundsEXT`);
		}
		// GL EXT_direct_state_access
		static if (usingExt(`EXT_direct_state_access`)) {
			bindFunc(glBindMultiTextureEXT, `glBindMultiTextureEXT`);
			bindFunc(glCheckNamedFramebufferStatusEXT, `glCheckNamedFramebufferStatusEXT`);
			bindFunc(glClientAttribDefaultEXT, `glClientAttribDefaultEXT`);
			bindFunc(glCompressedMultiTexImage1DEXT, `glCompressedMultiTexImage1DEXT`);
			bindFunc(glCompressedMultiTexImage2DEXT, `glCompressedMultiTexImage2DEXT`);
			bindFunc(glCompressedMultiTexImage3DEXT, `glCompressedMultiTexImage3DEXT`);
			bindFunc(glCompressedMultiTexSubImage1DEXT, `glCompressedMultiTexSubImage1DEXT`);
			bindFunc(glCompressedMultiTexSubImage2DEXT, `glCompressedMultiTexSubImage2DEXT`);
			bindFunc(glCompressedMultiTexSubImage3DEXT, `glCompressedMultiTexSubImage3DEXT`);
			bindFunc(glCompressedTextureImage1DEXT, `glCompressedTextureImage1DEXT`);
			bindFunc(glCompressedTextureImage2DEXT, `glCompressedTextureImage2DEXT`);
			bindFunc(glCompressedTextureImage3DEXT, `glCompressedTextureImage3DEXT`);
			bindFunc(glCompressedTextureSubImage1DEXT, `glCompressedTextureSubImage1DEXT`);
			bindFunc(glCompressedTextureSubImage2DEXT, `glCompressedTextureSubImage2DEXT`);
			bindFunc(glCompressedTextureSubImage3DEXT, `glCompressedTextureSubImage3DEXT`);
			bindFunc(glCopyMultiTexImage1DEXT, `glCopyMultiTexImage1DEXT`);
			bindFunc(glCopyMultiTexImage2DEXT, `glCopyMultiTexImage2DEXT`);
			bindFunc(glCopyMultiTexSubImage1DEXT, `glCopyMultiTexSubImage1DEXT`);
			bindFunc(glCopyMultiTexSubImage2DEXT, `glCopyMultiTexSubImage2DEXT`);
			bindFunc(glCopyMultiTexSubImage3DEXT, `glCopyMultiTexSubImage3DEXT`);
			bindFunc(glCopyTextureImage1DEXT, `glCopyTextureImage1DEXT`);
			bindFunc(glCopyTextureImage2DEXT, `glCopyTextureImage2DEXT`);
			bindFunc(glCopyTextureSubImage1DEXT, `glCopyTextureSubImage1DEXT`);
			bindFunc(glCopyTextureSubImage2DEXT, `glCopyTextureSubImage2DEXT`);
			bindFunc(glCopyTextureSubImage3DEXT, `glCopyTextureSubImage3DEXT`);
			bindFunc(glDisableClientStateiEXT, `glDisableClientStateiEXT`);
			bindFunc(glDisableClientStateIndexedEXT, `glDisableClientStateIndexedEXT`);
			bindFunc(glDisableVertexArrayAttribEXT, `glDisableVertexArrayAttribEXT`);
			bindFunc(glDisableVertexArrayEXT, `glDisableVertexArrayEXT`);
			bindFunc(glEnableClientStateiEXT, `glEnableClientStateiEXT`);
			bindFunc(glEnableClientStateIndexedEXT, `glEnableClientStateIndexedEXT`);
			bindFunc(glEnableVertexArrayAttribEXT, `glEnableVertexArrayAttribEXT`);
			bindFunc(glEnableVertexArrayEXT, `glEnableVertexArrayEXT`);
			bindFunc(glFlushMappedNamedBufferRangeEXT, `glFlushMappedNamedBufferRangeEXT`);
			bindFunc(glFramebufferDrawBufferEXT, `glFramebufferDrawBufferEXT`);
			bindFunc(glFramebufferDrawBuffersEXT, `glFramebufferDrawBuffersEXT`);
			bindFunc(glFramebufferReadBufferEXT, `glFramebufferReadBufferEXT`);
			bindFunc(glGenerateMultiTexMipmapEXT, `glGenerateMultiTexMipmapEXT`);
			bindFunc(glGenerateTextureMipmapEXT, `glGenerateTextureMipmapEXT`);
			bindFunc(glGetCompressedMultiTexImageEXT, `glGetCompressedMultiTexImageEXT`);
			bindFunc(glGetCompressedTextureImageEXT, `glGetCompressedTextureImageEXT`);
			bindFunc(glGetDoublei_vEXT, `glGetDoublei_vEXT`);
			bindFunc(glGetDoubleIndexedvEXT, `glGetDoubleIndexedvEXT`);
			bindFunc(glGetFloati_vEXT, `glGetFloati_vEXT`);
			bindFunc(glGetFloatIndexedvEXT, `glGetFloatIndexedvEXT`);
			bindFunc(glGetFramebufferParameterivEXT, `glGetFramebufferParameterivEXT`);
			bindFunc(glGetMultiTexEnvfvEXT, `glGetMultiTexEnvfvEXT`);
			bindFunc(glGetMultiTexEnvivEXT, `glGetMultiTexEnvivEXT`);
			bindFunc(glGetMultiTexGendvEXT, `glGetMultiTexGendvEXT`);
			bindFunc(glGetMultiTexGenfvEXT, `glGetMultiTexGenfvEXT`);
			bindFunc(glGetMultiTexGenivEXT, `glGetMultiTexGenivEXT`);
			bindFunc(glGetMultiTexImageEXT, `glGetMultiTexImageEXT`);
			bindFunc(glGetMultiTexLevelParameterfvEXT, `glGetMultiTexLevelParameterfvEXT`);
			bindFunc(glGetMultiTexLevelParameterivEXT, `glGetMultiTexLevelParameterivEXT`);
			bindFunc(glGetMultiTexParameterfvEXT, `glGetMultiTexParameterfvEXT`);
			bindFunc(glGetMultiTexParameterIivEXT, `glGetMultiTexParameterIivEXT`);
			bindFunc(glGetMultiTexParameterIuivEXT, `glGetMultiTexParameterIuivEXT`);
			bindFunc(glGetMultiTexParameterivEXT, `glGetMultiTexParameterivEXT`);
			bindFunc(glGetNamedBufferParameterivEXT, `glGetNamedBufferParameterivEXT`);
			bindFunc(glGetNamedBufferPointervEXT, `glGetNamedBufferPointervEXT`);
			bindFunc(glGetNamedBufferSubDataEXT, `glGetNamedBufferSubDataEXT`);
			bindFunc(glGetNamedFramebufferAttachmentParameterivEXT, `glGetNamedFramebufferAttachmentParameterivEXT`);
			bindFunc(glGetNamedProgramivEXT, `glGetNamedProgramivEXT`);
			bindFunc(glGetNamedProgramLocalParameterdvEXT, `glGetNamedProgramLocalParameterdvEXT`);
			bindFunc(glGetNamedProgramLocalParameterfvEXT, `glGetNamedProgramLocalParameterfvEXT`);
			bindFunc(glGetNamedProgramLocalParameterIivEXT, `glGetNamedProgramLocalParameterIivEXT`);
			bindFunc(glGetNamedProgramLocalParameterIuivEXT, `glGetNamedProgramLocalParameterIuivEXT`);
			bindFunc(glGetNamedProgramStringEXT, `glGetNamedProgramStringEXT`);
			bindFunc(glGetNamedRenderbufferParameterivEXT, `glGetNamedRenderbufferParameterivEXT`);
			bindFunc(glGetPointeri_vEXT, `glGetPointeri_vEXT`);
			bindFunc(glGetPointerIndexedvEXT, `glGetPointerIndexedvEXT`);
			bindFunc(glGetTextureImageEXT, `glGetTextureImageEXT`);
			bindFunc(glGetTextureLevelParameterfvEXT, `glGetTextureLevelParameterfvEXT`);
			bindFunc(glGetTextureLevelParameterivEXT, `glGetTextureLevelParameterivEXT`);
			bindFunc(glGetTextureParameterfvEXT, `glGetTextureParameterfvEXT`);
			bindFunc(glGetTextureParameterIivEXT, `glGetTextureParameterIivEXT`);
			bindFunc(glGetTextureParameterIuivEXT, `glGetTextureParameterIuivEXT`);
			bindFunc(glGetTextureParameterivEXT, `glGetTextureParameterivEXT`);
			bindFunc(glGetVertexArrayIntegeri_vEXT, `glGetVertexArrayIntegeri_vEXT`);
			bindFunc(glGetVertexArrayIntegervEXT, `glGetVertexArrayIntegervEXT`);
			bindFunc(glGetVertexArrayPointeri_vEXT, `glGetVertexArrayPointeri_vEXT`);
			bindFunc(glGetVertexArrayPointervEXT, `glGetVertexArrayPointervEXT`);
			bindFunc(glMapNamedBufferEXT, `glMapNamedBufferEXT`);
			bindFunc(glMapNamedBufferRangeEXT, `glMapNamedBufferRangeEXT`);
			bindFunc(glMatrixFrustumEXT, `glMatrixFrustumEXT`);
			bindFunc(glMatrixLoaddEXT, `glMatrixLoaddEXT`);
			bindFunc(glMatrixLoadfEXT, `glMatrixLoadfEXT`);
			bindFunc(glMatrixLoadIdentityEXT, `glMatrixLoadIdentityEXT`);
			bindFunc(glMatrixLoadTransposedEXT, `glMatrixLoadTransposedEXT`);
			bindFunc(glMatrixLoadTransposefEXT, `glMatrixLoadTransposefEXT`);
			bindFunc(glMatrixMultdEXT, `glMatrixMultdEXT`);
			bindFunc(glMatrixMultfEXT, `glMatrixMultfEXT`);
			bindFunc(glMatrixMultTransposedEXT, `glMatrixMultTransposedEXT`);
			bindFunc(glMatrixMultTransposefEXT, `glMatrixMultTransposefEXT`);
			bindFunc(glMatrixOrthoEXT, `glMatrixOrthoEXT`);
			bindFunc(glMatrixPopEXT, `glMatrixPopEXT`);
			bindFunc(glMatrixPushEXT, `glMatrixPushEXT`);
			bindFunc(glMatrixRotatedEXT, `glMatrixRotatedEXT`);
			bindFunc(glMatrixRotatefEXT, `glMatrixRotatefEXT`);
			bindFunc(glMatrixScaledEXT, `glMatrixScaledEXT`);
			bindFunc(glMatrixScalefEXT, `glMatrixScalefEXT`);
			bindFunc(glMatrixTranslatedEXT, `glMatrixTranslatedEXT`);
			bindFunc(glMatrixTranslatefEXT, `glMatrixTranslatefEXT`);
			bindFunc(glMultiTexBufferEXT, `glMultiTexBufferEXT`);
			bindFunc(glMultiTexCoordPointerEXT, `glMultiTexCoordPointerEXT`);
			bindFunc(glMultiTexEnvfEXT, `glMultiTexEnvfEXT`);
			bindFunc(glMultiTexEnvfvEXT, `glMultiTexEnvfvEXT`);
			bindFunc(glMultiTexEnviEXT, `glMultiTexEnviEXT`);
			bindFunc(glMultiTexEnvivEXT, `glMultiTexEnvivEXT`);
			bindFunc(glMultiTexGendEXT, `glMultiTexGendEXT`);
			bindFunc(glMultiTexGendvEXT, `glMultiTexGendvEXT`);
			bindFunc(glMultiTexGenfEXT, `glMultiTexGenfEXT`);
			bindFunc(glMultiTexGenfvEXT, `glMultiTexGenfvEXT`);
			bindFunc(glMultiTexGeniEXT, `glMultiTexGeniEXT`);
			bindFunc(glMultiTexGenivEXT, `glMultiTexGenivEXT`);
			bindFunc(glMultiTexImage1DEXT, `glMultiTexImage1DEXT`);
			bindFunc(glMultiTexImage2DEXT, `glMultiTexImage2DEXT`);
			bindFunc(glMultiTexImage3DEXT, `glMultiTexImage3DEXT`);
			bindFunc(glMultiTexParameterfEXT, `glMultiTexParameterfEXT`);
			bindFunc(glMultiTexParameterfvEXT, `glMultiTexParameterfvEXT`);
			bindFunc(glMultiTexParameteriEXT, `glMultiTexParameteriEXT`);
			bindFunc(glMultiTexParameterIivEXT, `glMultiTexParameterIivEXT`);
			bindFunc(glMultiTexParameterIuivEXT, `glMultiTexParameterIuivEXT`);
			bindFunc(glMultiTexParameterivEXT, `glMultiTexParameterivEXT`);
			bindFunc(glMultiTexRenderbufferEXT, `glMultiTexRenderbufferEXT`);
			bindFunc(glMultiTexSubImage1DEXT, `glMultiTexSubImage1DEXT`);
			bindFunc(glMultiTexSubImage2DEXT, `glMultiTexSubImage2DEXT`);
			bindFunc(glMultiTexSubImage3DEXT, `glMultiTexSubImage3DEXT`);
			bindFunc(glNamedBufferDataEXT, `glNamedBufferDataEXT`);
			bindFunc(glNamedBufferSubDataEXT, `glNamedBufferSubDataEXT`);
			bindFunc(glNamedCopyBufferSubDataEXT, `glNamedCopyBufferSubDataEXT`);
			bindFunc(glNamedFramebufferRenderbufferEXT, `glNamedFramebufferRenderbufferEXT`);
			bindFunc(glNamedFramebufferTexture1DEXT, `glNamedFramebufferTexture1DEXT`);
			bindFunc(glNamedFramebufferTexture2DEXT, `glNamedFramebufferTexture2DEXT`);
			bindFunc(glNamedFramebufferTexture3DEXT, `glNamedFramebufferTexture3DEXT`);
			bindFunc(glNamedFramebufferTextureEXT, `glNamedFramebufferTextureEXT`);
			bindFunc(glNamedFramebufferTextureFaceEXT, `glNamedFramebufferTextureFaceEXT`);
			bindFunc(glNamedFramebufferTextureLayerEXT, `glNamedFramebufferTextureLayerEXT`);
			bindFunc(glNamedProgramLocalParameter4dEXT, `glNamedProgramLocalParameter4dEXT`);
			bindFunc(glNamedProgramLocalParameter4dvEXT, `glNamedProgramLocalParameter4dvEXT`);
			bindFunc(glNamedProgramLocalParameter4fEXT, `glNamedProgramLocalParameter4fEXT`);
			bindFunc(glNamedProgramLocalParameter4fvEXT, `glNamedProgramLocalParameter4fvEXT`);
			bindFunc(glNamedProgramLocalParameterI4iEXT, `glNamedProgramLocalParameterI4iEXT`);
			bindFunc(glNamedProgramLocalParameterI4ivEXT, `glNamedProgramLocalParameterI4ivEXT`);
			bindFunc(glNamedProgramLocalParameterI4uiEXT, `glNamedProgramLocalParameterI4uiEXT`);
			bindFunc(glNamedProgramLocalParameterI4uivEXT, `glNamedProgramLocalParameterI4uivEXT`);
			bindFunc(glNamedProgramLocalParameters4fvEXT, `glNamedProgramLocalParameters4fvEXT`);
			bindFunc(glNamedProgramLocalParametersI4ivEXT, `glNamedProgramLocalParametersI4ivEXT`);
			bindFunc(glNamedProgramLocalParametersI4uivEXT, `glNamedProgramLocalParametersI4uivEXT`);
			bindFunc(glNamedProgramStringEXT, `glNamedProgramStringEXT`);
			bindFunc(glNamedRenderbufferStorageEXT, `glNamedRenderbufferStorageEXT`);
			bindFunc(glNamedRenderbufferStorageMultisampleCoverageEXT, `glNamedRenderbufferStorageMultisampleCoverageEXT`);
			bindFunc(glNamedRenderbufferStorageMultisampleEXT, `glNamedRenderbufferStorageMultisampleEXT`);
			bindFunc(glProgramUniform1dEXT, `glProgramUniform1dEXT`);
			bindFunc(glProgramUniform1dvEXT, `glProgramUniform1dvEXT`);
			bindFunc(glProgramUniform1fEXT, `glProgramUniform1fEXT`);
			bindFunc(glProgramUniform1fvEXT, `glProgramUniform1fvEXT`);
			bindFunc(glProgramUniform1iEXT, `glProgramUniform1iEXT`);
			bindFunc(glProgramUniform1ivEXT, `glProgramUniform1ivEXT`);
			bindFunc(glProgramUniform1uiEXT, `glProgramUniform1uiEXT`);
			bindFunc(glProgramUniform1uivEXT, `glProgramUniform1uivEXT`);
			bindFunc(glProgramUniform2dEXT, `glProgramUniform2dEXT`);
			bindFunc(glProgramUniform2dvEXT, `glProgramUniform2dvEXT`);
			bindFunc(glProgramUniform2fEXT, `glProgramUniform2fEXT`);
			bindFunc(glProgramUniform2fvEXT, `glProgramUniform2fvEXT`);
			bindFunc(glProgramUniform2iEXT, `glProgramUniform2iEXT`);
			bindFunc(glProgramUniform2ivEXT, `glProgramUniform2ivEXT`);
			bindFunc(glProgramUniform2uiEXT, `glProgramUniform2uiEXT`);
			bindFunc(glProgramUniform2uivEXT, `glProgramUniform2uivEXT`);
			bindFunc(glProgramUniform3dEXT, `glProgramUniform3dEXT`);
			bindFunc(glProgramUniform3dvEXT, `glProgramUniform3dvEXT`);
			bindFunc(glProgramUniform3fEXT, `glProgramUniform3fEXT`);
			bindFunc(glProgramUniform3fvEXT, `glProgramUniform3fvEXT`);
			bindFunc(glProgramUniform3iEXT, `glProgramUniform3iEXT`);
			bindFunc(glProgramUniform3ivEXT, `glProgramUniform3ivEXT`);
			bindFunc(glProgramUniform3uiEXT, `glProgramUniform3uiEXT`);
			bindFunc(glProgramUniform3uivEXT, `glProgramUniform3uivEXT`);
			bindFunc(glProgramUniform4dEXT, `glProgramUniform4dEXT`);
			bindFunc(glProgramUniform4dvEXT, `glProgramUniform4dvEXT`);
			bindFunc(glProgramUniform4fEXT, `glProgramUniform4fEXT`);
			bindFunc(glProgramUniform4fvEXT, `glProgramUniform4fvEXT`);
			bindFunc(glProgramUniform4iEXT, `glProgramUniform4iEXT`);
			bindFunc(glProgramUniform4ivEXT, `glProgramUniform4ivEXT`);
			bindFunc(glProgramUniform4uiEXT, `glProgramUniform4uiEXT`);
			bindFunc(glProgramUniform4uivEXT, `glProgramUniform4uivEXT`);
			bindFunc(glProgramUniformMatrix2dvEXT, `glProgramUniformMatrix2dvEXT`);
			bindFunc(glProgramUniformMatrix2fvEXT, `glProgramUniformMatrix2fvEXT`);
			bindFunc(glProgramUniformMatrix2x3dvEXT, `glProgramUniformMatrix2x3dvEXT`);
			bindFunc(glProgramUniformMatrix2x3fvEXT, `glProgramUniformMatrix2x3fvEXT`);
			bindFunc(glProgramUniformMatrix2x4dvEXT, `glProgramUniformMatrix2x4dvEXT`);
			bindFunc(glProgramUniformMatrix2x4fvEXT, `glProgramUniformMatrix2x4fvEXT`);
			bindFunc(glProgramUniformMatrix3dvEXT, `glProgramUniformMatrix3dvEXT`);
			bindFunc(glProgramUniformMatrix3fvEXT, `glProgramUniformMatrix3fvEXT`);
			bindFunc(glProgramUniformMatrix3x2dvEXT, `glProgramUniformMatrix3x2dvEXT`);
			bindFunc(glProgramUniformMatrix3x2fvEXT, `glProgramUniformMatrix3x2fvEXT`);
			bindFunc(glProgramUniformMatrix3x4dvEXT, `glProgramUniformMatrix3x4dvEXT`);
			bindFunc(glProgramUniformMatrix3x4fvEXT, `glProgramUniformMatrix3x4fvEXT`);
			bindFunc(glProgramUniformMatrix4dvEXT, `glProgramUniformMatrix4dvEXT`);
			bindFunc(glProgramUniformMatrix4fvEXT, `glProgramUniformMatrix4fvEXT`);
			bindFunc(glProgramUniformMatrix4x2dvEXT, `glProgramUniformMatrix4x2dvEXT`);
			bindFunc(glProgramUniformMatrix4x2fvEXT, `glProgramUniformMatrix4x2fvEXT`);
			bindFunc(glProgramUniformMatrix4x3dvEXT, `glProgramUniformMatrix4x3dvEXT`);
			bindFunc(glProgramUniformMatrix4x3fvEXT, `glProgramUniformMatrix4x3fvEXT`);
			bindFunc(glPushClientAttribDefaultEXT, `glPushClientAttribDefaultEXT`);
			bindFunc(glTextureBufferEXT, `glTextureBufferEXT`);
			bindFunc(glTextureImage1DEXT, `glTextureImage1DEXT`);
			bindFunc(glTextureImage2DEXT, `glTextureImage2DEXT`);
			bindFunc(glTextureImage3DEXT, `glTextureImage3DEXT`);
			bindFunc(glTextureParameterfEXT, `glTextureParameterfEXT`);
			bindFunc(glTextureParameterfvEXT, `glTextureParameterfvEXT`);
			bindFunc(glTextureParameteriEXT, `glTextureParameteriEXT`);
			bindFunc(glTextureParameterIivEXT, `glTextureParameterIivEXT`);
			bindFunc(glTextureParameterIuivEXT, `glTextureParameterIuivEXT`);
			bindFunc(glTextureParameterivEXT, `glTextureParameterivEXT`);
			bindFunc(glTextureRenderbufferEXT, `glTextureRenderbufferEXT`);
			bindFunc(glTextureSubImage1DEXT, `glTextureSubImage1DEXT`);
			bindFunc(glTextureSubImage2DEXT, `glTextureSubImage2DEXT`);
			bindFunc(glTextureSubImage3DEXT, `glTextureSubImage3DEXT`);
			bindFunc(glUnmapNamedBufferEXT, `glUnmapNamedBufferEXT`);
			bindFunc(glVertexArrayColorOffsetEXT, `glVertexArrayColorOffsetEXT`);
			bindFunc(glVertexArrayEdgeFlagOffsetEXT, `glVertexArrayEdgeFlagOffsetEXT`);
			bindFunc(glVertexArrayFogCoordOffsetEXT, `glVertexArrayFogCoordOffsetEXT`);
			bindFunc(glVertexArrayIndexOffsetEXT, `glVertexArrayIndexOffsetEXT`);
			bindFunc(glVertexArrayMultiTexCoordOffsetEXT, `glVertexArrayMultiTexCoordOffsetEXT`);
			bindFunc(glVertexArrayNormalOffsetEXT, `glVertexArrayNormalOffsetEXT`);
			bindFunc(glVertexArraySecondaryColorOffsetEXT, `glVertexArraySecondaryColorOffsetEXT`);
			bindFunc(glVertexArrayTexCoordOffsetEXT, `glVertexArrayTexCoordOffsetEXT`);
			bindFunc(glVertexArrayVertexAttribIOffsetEXT, `glVertexArrayVertexAttribIOffsetEXT`);
			bindFunc(glVertexArrayVertexAttribOffsetEXT, `glVertexArrayVertexAttribOffsetEXT`);
			bindFunc(glVertexArrayVertexOffsetEXT, `glVertexArrayVertexOffsetEXT`);
		}
		// GL EXT_draw_buffers2
		static if (usingExt(`EXT_draw_buffers2`)) {
			bindFunc(glColorMaskIndexedEXT, `glColorMaskIndexedEXT`);
			bindFunc(glDisableIndexedEXT, `glDisableIndexedEXT`);
			bindFunc(glEnableIndexedEXT, `glEnableIndexedEXT`);
			bindFunc(glGetBooleanIndexedvEXT, `glGetBooleanIndexedvEXT`);
			bindFunc(glGetIntegerIndexedvEXT, `glGetIntegerIndexedvEXT`);
			bindFunc(glIsEnabledIndexedEXT, `glIsEnabledIndexedEXT`);
		}
		// GL EXT_draw_instanced
		static if (usingExt(`EXT_draw_instanced`)) {
			bindFunc(glDrawArraysInstancedEXT, `glDrawArraysInstancedEXT`);
			bindFunc(glDrawElementsInstancedEXT, `glDrawElementsInstancedEXT`);
		}
		// GL EXT_draw_range_elements
		static if (usingExt(`EXT_draw_range_elements`)) {
			bindFunc(glDrawRangeElementsEXT, `glDrawRangeElementsEXT`);
		}
		// GL EXT_fog_coord
		static if (usingExt(`EXT_fog_coord`)) {
			bindFunc(glFogCoorddEXT, `glFogCoorddEXT`);
			bindFunc(glFogCoorddvEXT, `glFogCoorddvEXT`);
			bindFunc(glFogCoordfEXT, `glFogCoordfEXT`);
			bindFunc(glFogCoordfvEXT, `glFogCoordfvEXT`);
			bindFunc(glFogCoordPointerEXT, `glFogCoordPointerEXT`);
		}
		// GL EXT_framebuffer_blit
		static if (usingExt(`EXT_framebuffer_blit`)) {
			bindFunc(glBlitFramebufferEXT, `glBlitFramebufferEXT`);
		}
		// GL EXT_framebuffer_multisample
		static if (usingExt(`EXT_framebuffer_multisample`)) {
			bindFunc(glRenderbufferStorageMultisampleEXT, `glRenderbufferStorageMultisampleEXT`);
		}
		// GL EXT_framebuffer_object
		static if (usingExt(`EXT_framebuffer_object`)) {
			bindFunc(glBindFramebufferEXT, `glBindFramebufferEXT`);
			bindFunc(glBindRenderbufferEXT, `glBindRenderbufferEXT`);
			bindFunc(glCheckFramebufferStatusEXT, `glCheckFramebufferStatusEXT`);
			bindFunc(glDeleteFramebuffersEXT, `glDeleteFramebuffersEXT`);
			bindFunc(glDeleteRenderbuffersEXT, `glDeleteRenderbuffersEXT`);
			bindFunc(glFramebufferRenderbufferEXT, `glFramebufferRenderbufferEXT`);
			bindFunc(glFramebufferTexture1DEXT, `glFramebufferTexture1DEXT`);
			bindFunc(glFramebufferTexture2DEXT, `glFramebufferTexture2DEXT`);
			bindFunc(glFramebufferTexture3DEXT, `glFramebufferTexture3DEXT`);
			bindFunc(glGenerateMipmapEXT, `glGenerateMipmapEXT`);
			bindFunc(glGenFramebuffersEXT, `glGenFramebuffersEXT`);
			bindFunc(glGenRenderbuffersEXT, `glGenRenderbuffersEXT`);
			bindFunc(glGetFramebufferAttachmentParameterivEXT, `glGetFramebufferAttachmentParameterivEXT`);
			bindFunc(glGetRenderbufferParameterivEXT, `glGetRenderbufferParameterivEXT`);
			bindFunc(glIsFramebufferEXT, `glIsFramebufferEXT`);
			bindFunc(glIsRenderbufferEXT, `glIsRenderbufferEXT`);
			bindFunc(glRenderbufferStorageEXT, `glRenderbufferStorageEXT`);
		}
		// GL EXT_geometry_shader4
		static if (usingExt(`EXT_geometry_shader4`)) {
			bindFunc(glProgramParameteriEXT, `glProgramParameteriEXT`);
		}
		// GL EXT_gpu_program_parameters
		static if (usingExt(`EXT_gpu_program_parameters`)) {
			bindFunc(glProgramEnvParameters4fvEXT, `glProgramEnvParameters4fvEXT`);
			bindFunc(glProgramLocalParameters4fvEXT, `glProgramLocalParameters4fvEXT`);
		}
		// GL EXT_gpu_shader4
		static if (usingExt(`EXT_gpu_shader4`)) {
			bindFunc(glBindFragDataLocationEXT, `glBindFragDataLocationEXT`);
			bindFunc(glGetFragDataLocationEXT, `glGetFragDataLocationEXT`);
			bindFunc(glGetUniformuivEXT, `glGetUniformuivEXT`);
			bindFunc(glUniform1uiEXT, `glUniform1uiEXT`);
			bindFunc(glUniform1uivEXT, `glUniform1uivEXT`);
			bindFunc(glUniform2uiEXT, `glUniform2uiEXT`);
			bindFunc(glUniform2uivEXT, `glUniform2uivEXT`);
			bindFunc(glUniform3uiEXT, `glUniform3uiEXT`);
			bindFunc(glUniform3uivEXT, `glUniform3uivEXT`);
			bindFunc(glUniform4uiEXT, `glUniform4uiEXT`);
			bindFunc(glUniform4uivEXT, `glUniform4uivEXT`);
		}
		// GL EXT_histogram
		static if (usingExt(`EXT_histogram`)) {
			bindFunc(glGetHistogramEXT, `glGetHistogramEXT`);
			bindFunc(glGetHistogramParameterfvEXT, `glGetHistogramParameterfvEXT`);
			bindFunc(glGetHistogramParameterivEXT, `glGetHistogramParameterivEXT`);
			bindFunc(glGetMinmaxEXT, `glGetMinmaxEXT`);
			bindFunc(glGetMinmaxParameterfvEXT, `glGetMinmaxParameterfvEXT`);
			bindFunc(glGetMinmaxParameterivEXT, `glGetMinmaxParameterivEXT`);
			bindFunc(glHistogramEXT, `glHistogramEXT`);
			bindFunc(glMinmaxEXT, `glMinmaxEXT`);
			bindFunc(glResetHistogramEXT, `glResetHistogramEXT`);
			bindFunc(glResetMinmaxEXT, `glResetMinmaxEXT`);
		}
		// GL EXT_index_func
		static if (usingExt(`EXT_index_func`)) {
			bindFunc(glIndexFuncEXT, `glIndexFuncEXT`);
		}
		// GL EXT_index_material
		static if (usingExt(`EXT_index_material`)) {
			bindFunc(glIndexMaterialEXT, `glIndexMaterialEXT`);
		}
		// GL EXT_light_texture
		static if (usingExt(`EXT_light_texture`)) {
			bindFunc(glApplyTextureEXT, `glApplyTextureEXT`);
			bindFunc(glTextureLightEXT, `glTextureLightEXT`);
			bindFunc(glTextureMaterialEXT, `glTextureMaterialEXT`);
		}
		// GL EXT_multi_draw_arrays
		static if (usingExt(`EXT_multi_draw_arrays`)) {
			bindFunc(glMultiDrawArraysEXT, `glMultiDrawArraysEXT`);
			bindFunc(glMultiDrawElementsEXT, `glMultiDrawElementsEXT`);
		}
		// GL EXT_multisample
		static if (usingExt(`EXT_multisample`)) {
			bindFunc(glSampleMaskEXT, `glSampleMaskEXT`);
			bindFunc(glSamplePatternEXT, `glSamplePatternEXT`);
		}
		// GL EXT_paletted_texture
		static if (usingExt(`EXT_paletted_texture`)) {
			bindFunc(glColorTableEXT, `glColorTableEXT`);
			bindFunc(glGetColorTableEXT, `glGetColorTableEXT`);
			bindFunc(glGetColorTableParameterfvEXT, `glGetColorTableParameterfvEXT`);
			bindFunc(glGetColorTableParameterivEXT, `glGetColorTableParameterivEXT`);
		}
		// GL EXT_pixel_transform
		static if (usingExt(`EXT_pixel_transform`)) {
			bindFunc(glGetPixelTransformParameterfvEXT, `glGetPixelTransformParameterfvEXT`);
			bindFunc(glGetPixelTransformParameterivEXT, `glGetPixelTransformParameterivEXT`);
			bindFunc(glPixelTransformParameterfEXT, `glPixelTransformParameterfEXT`);
			bindFunc(glPixelTransformParameterfvEXT, `glPixelTransformParameterfvEXT`);
			bindFunc(glPixelTransformParameteriEXT, `glPixelTransformParameteriEXT`);
			bindFunc(glPixelTransformParameterivEXT, `glPixelTransformParameterivEXT`);
		}
		// GL EXT_point_parameters
		static if (usingExt(`EXT_point_parameters`)) {
			bindFunc(glPointParameterfEXT, `glPointParameterfEXT`);
			bindFunc(glPointParameterfvEXT, `glPointParameterfvEXT`);
		}
		// GL EXT_polygon_offset
		static if (usingExt(`EXT_polygon_offset`)) {
			bindFunc(glPolygonOffsetEXT, `glPolygonOffsetEXT`);
		}
		// GL EXT_provoking_vertex
		static if (usingExt(`EXT_provoking_vertex`)) {
			bindFunc(glProvokingVertexEXT, `glProvokingVertexEXT`);
		}
		// GL EXT_secondary_color
		static if (usingExt(`EXT_secondary_color`)) {
			bindFunc(glSecondaryColor3bEXT, `glSecondaryColor3bEXT`);
			bindFunc(glSecondaryColor3bvEXT, `glSecondaryColor3bvEXT`);
			bindFunc(glSecondaryColor3dEXT, `glSecondaryColor3dEXT`);
			bindFunc(glSecondaryColor3dvEXT, `glSecondaryColor3dvEXT`);
			bindFunc(glSecondaryColor3fEXT, `glSecondaryColor3fEXT`);
			bindFunc(glSecondaryColor3fvEXT, `glSecondaryColor3fvEXT`);
			bindFunc(glSecondaryColor3iEXT, `glSecondaryColor3iEXT`);
			bindFunc(glSecondaryColor3ivEXT, `glSecondaryColor3ivEXT`);
			bindFunc(glSecondaryColor3sEXT, `glSecondaryColor3sEXT`);
			bindFunc(glSecondaryColor3svEXT, `glSecondaryColor3svEXT`);
			bindFunc(glSecondaryColor3ubEXT, `glSecondaryColor3ubEXT`);
			bindFunc(glSecondaryColor3ubvEXT, `glSecondaryColor3ubvEXT`);
			bindFunc(glSecondaryColor3uiEXT, `glSecondaryColor3uiEXT`);
			bindFunc(glSecondaryColor3uivEXT, `glSecondaryColor3uivEXT`);
			bindFunc(glSecondaryColor3usEXT, `glSecondaryColor3usEXT`);
			bindFunc(glSecondaryColor3usvEXT, `glSecondaryColor3usvEXT`);
			bindFunc(glSecondaryColorPointerEXT, `glSecondaryColorPointerEXT`);
		}
		// GL EXT_separate_shader_objects
		static if (usingExt(`EXT_separate_shader_objects`)) {
			bindFunc(glActiveProgramEXT, `glActiveProgramEXT`);
			bindFunc(glCreateShaderProgramEXT, `glCreateShaderProgramEXT`);
			bindFunc(glUseShaderProgramEXT, `glUseShaderProgramEXT`);
		}
		// GL EXT_shader_image_load_store
		static if (usingExt(`EXT_shader_image_load_store`)) {
			bindFunc(glBindImageTextureEXT, `glBindImageTextureEXT`);
			bindFunc(glMemoryBarrierEXT, `glMemoryBarrierEXT`);
		}
		// GL EXT_stencil_clear_tag
		static if (usingExt(`EXT_stencil_clear_tag`)) {
			bindFunc(glStencilClearTagEXT, `glStencilClearTagEXT`);
		}
		// GL EXT_stencil_two_side
		static if (usingExt(`EXT_stencil_two_side`)) {
			bindFunc(glActiveStencilFaceEXT, `glActiveStencilFaceEXT`);
		}
		// GL EXT_subtexture
		static if (usingExt(`EXT_subtexture`)) {
			bindFunc(glTexSubImage1DEXT, `glTexSubImage1DEXT`);
			bindFunc(glTexSubImage2DEXT, `glTexSubImage2DEXT`);
		}
		// GL EXT_texture_buffer_object
		static if (usingExt(`EXT_texture_buffer_object`)) {
			bindFunc(glTexBufferEXT, `glTexBufferEXT`);
		}
		// GL EXT_texture_integer
		static if (usingExt(`EXT_texture_integer`)) {
			bindFunc(glClearColorIiEXT, `glClearColorIiEXT`);
			bindFunc(glClearColorIuiEXT, `glClearColorIuiEXT`);
			bindFunc(glGetTexParameterIivEXT, `glGetTexParameterIivEXT`);
			bindFunc(glGetTexParameterIuivEXT, `glGetTexParameterIuivEXT`);
			bindFunc(glTexParameterIivEXT, `glTexParameterIivEXT`);
			bindFunc(glTexParameterIuivEXT, `glTexParameterIuivEXT`);
		}
		// GL EXT_texture_object
		static if (usingExt(`EXT_texture_object`)) {
			bindFunc(glAreTexturesResidentEXT, `glAreTexturesResidentEXT`);
			bindFunc(glBindTextureEXT, `glBindTextureEXT`);
			bindFunc(glDeleteTexturesEXT, `glDeleteTexturesEXT`);
			bindFunc(glGenTexturesEXT, `glGenTexturesEXT`);
			bindFunc(glIsTextureEXT, `glIsTextureEXT`);
			bindFunc(glPrioritizeTexturesEXT, `glPrioritizeTexturesEXT`);
		}
		// GL EXT_texture_perturb_normal
		static if (usingExt(`EXT_texture_perturb_normal`)) {
			bindFunc(glTextureNormalEXT, `glTextureNormalEXT`);
		}
		// GL EXT_texture3D
		static if (usingExt(`EXT_texture3D`)) {
			bindFunc(glTexImage3DEXT, `glTexImage3DEXT`);
			bindFunc(glTexSubImage3DEXT, `glTexSubImage3DEXT`);
		}
		// GL EXT_timer_query
		static if (usingExt(`EXT_timer_query`)) {
			bindFunc(glGetQueryObjecti64vEXT, `glGetQueryObjecti64vEXT`);
			bindFunc(glGetQueryObjectui64vEXT, `glGetQueryObjectui64vEXT`);
		}
		// GL EXT_transform_feedback
		static if (usingExt(`EXT_transform_feedback`)) {
			bindFunc(glBeginTransformFeedbackEXT, `glBeginTransformFeedbackEXT`);
			bindFunc(glBindBufferBaseEXT, `glBindBufferBaseEXT`);
			bindFunc(glBindBufferOffsetEXT, `glBindBufferOffsetEXT`);
			bindFunc(glBindBufferRangeEXT, `glBindBufferRangeEXT`);
			bindFunc(glEndTransformFeedbackEXT, `glEndTransformFeedbackEXT`);
			bindFunc(glGetTransformFeedbackVaryingEXT, `glGetTransformFeedbackVaryingEXT`);
			bindFunc(glTransformFeedbackVaryingsEXT, `glTransformFeedbackVaryingsEXT`);
		}
		// GL EXT_vertex_array
		static if (usingExt(`EXT_vertex_array`)) {
			bindFunc(glArrayElementEXT, `glArrayElementEXT`);
			bindFunc(glColorPointerEXT, `glColorPointerEXT`);
			bindFunc(glDrawArraysEXT, `glDrawArraysEXT`);
			bindFunc(glEdgeFlagPointerEXT, `glEdgeFlagPointerEXT`);
			bindFunc(glGetPointervEXT, `glGetPointervEXT`);
			bindFunc(glIndexPointerEXT, `glIndexPointerEXT`);
			bindFunc(glNormalPointerEXT, `glNormalPointerEXT`);
			bindFunc(glTexCoordPointerEXT, `glTexCoordPointerEXT`);
			bindFunc(glVertexPointerEXT, `glVertexPointerEXT`);
		}
		// GL EXT_vertex_attrib_64bit
		static if (usingExt(`EXT_vertex_attrib_64bit`)) {
			bindFunc(glGetVertexAttribLdvEXT, `glGetVertexAttribLdvEXT`);
			bindFunc(glVertexArrayVertexAttribLOffsetEXT, `glVertexArrayVertexAttribLOffsetEXT`);
			bindFunc(glVertexAttribL1dEXT, `glVertexAttribL1dEXT`);
			bindFunc(glVertexAttribL1dvEXT, `glVertexAttribL1dvEXT`);
			bindFunc(glVertexAttribL2dEXT, `glVertexAttribL2dEXT`);
			bindFunc(glVertexAttribL2dvEXT, `glVertexAttribL2dvEXT`);
			bindFunc(glVertexAttribL3dEXT, `glVertexAttribL3dEXT`);
			bindFunc(glVertexAttribL3dvEXT, `glVertexAttribL3dvEXT`);
			bindFunc(glVertexAttribL4dEXT, `glVertexAttribL4dEXT`);
			bindFunc(glVertexAttribL4dvEXT, `glVertexAttribL4dvEXT`);
			bindFunc(glVertexAttribLPointerEXT, `glVertexAttribLPointerEXT`);
		}
		// GL EXT_vertex_shader
		static if (usingExt(`EXT_vertex_shader`)) {
			bindFunc(glBeginVertexShaderEXT, `glBeginVertexShaderEXT`);
			bindFunc(glBindLightParameterEXT, `glBindLightParameterEXT`);
			bindFunc(glBindMaterialParameterEXT, `glBindMaterialParameterEXT`);
			bindFunc(glBindParameterEXT, `glBindParameterEXT`);
			bindFunc(glBindTexGenParameterEXT, `glBindTexGenParameterEXT`);
			bindFunc(glBindTextureUnitParameterEXT, `glBindTextureUnitParameterEXT`);
			bindFunc(glBindVertexShaderEXT, `glBindVertexShaderEXT`);
			bindFunc(glDeleteVertexShaderEXT, `glDeleteVertexShaderEXT`);
			bindFunc(glDisableVariantClientStateEXT, `glDisableVariantClientStateEXT`);
			bindFunc(glEnableVariantClientStateEXT, `glEnableVariantClientStateEXT`);
			bindFunc(glEndVertexShaderEXT, `glEndVertexShaderEXT`);
			bindFunc(glExtractComponentEXT, `glExtractComponentEXT`);
			bindFunc(glGenSymbolsEXT, `glGenSymbolsEXT`);
			bindFunc(glGenVertexShadersEXT, `glGenVertexShadersEXT`);
			bindFunc(glGetInvariantBooleanvEXT, `glGetInvariantBooleanvEXT`);
			bindFunc(glGetInvariantFloatvEXT, `glGetInvariantFloatvEXT`);
			bindFunc(glGetInvariantIntegervEXT, `glGetInvariantIntegervEXT`);
			bindFunc(glGetLocalConstantBooleanvEXT, `glGetLocalConstantBooleanvEXT`);
			bindFunc(glGetLocalConstantFloatvEXT, `glGetLocalConstantFloatvEXT`);
			bindFunc(glGetLocalConstantIntegervEXT, `glGetLocalConstantIntegervEXT`);
			bindFunc(glGetVariantBooleanvEXT, `glGetVariantBooleanvEXT`);
			bindFunc(glGetVariantFloatvEXT, `glGetVariantFloatvEXT`);
			bindFunc(glGetVariantIntegervEXT, `glGetVariantIntegervEXT`);
			bindFunc(glGetVariantPointervEXT, `glGetVariantPointervEXT`);
			bindFunc(glInsertComponentEXT, `glInsertComponentEXT`);
			bindFunc(glIsVariantEnabledEXT, `glIsVariantEnabledEXT`);
			bindFunc(glSetInvariantEXT, `glSetInvariantEXT`);
			bindFunc(glSetLocalConstantEXT, `glSetLocalConstantEXT`);
			bindFunc(glShaderOp1EXT, `glShaderOp1EXT`);
			bindFunc(glShaderOp2EXT, `glShaderOp2EXT`);
			bindFunc(glShaderOp3EXT, `glShaderOp3EXT`);
			bindFunc(glSwizzleEXT, `glSwizzleEXT`);
			bindFunc(glVariantbvEXT, `glVariantbvEXT`);
			bindFunc(glVariantdvEXT, `glVariantdvEXT`);
			bindFunc(glVariantfvEXT, `glVariantfvEXT`);
			bindFunc(glVariantivEXT, `glVariantivEXT`);
			bindFunc(glVariantPointerEXT, `glVariantPointerEXT`);
			bindFunc(glVariantsvEXT, `glVariantsvEXT`);
			bindFunc(glVariantubvEXT, `glVariantubvEXT`);
			bindFunc(glVariantuivEXT, `glVariantuivEXT`);
			bindFunc(glVariantusvEXT, `glVariantusvEXT`);
			bindFunc(glWriteMaskEXT, `glWriteMaskEXT`);
		}
		// GL EXT_vertex_weighting
		static if (usingExt(`EXT_vertex_weighting`)) {
			bindFunc(glVertexWeightfEXT, `glVertexWeightfEXT`);
			bindFunc(glVertexWeightfvEXT, `glVertexWeightfvEXT`);
			bindFunc(glVertexWeightPointerEXT, `glVertexWeightPointerEXT`);
		}
		// GL EXT_x11_sync_object
		static if (usingExt(`EXT_x11_sync_object`)) {
			bindFunc(glImportSyncEXT, `glImportSyncEXT`);
		}
		// GL GREMEDY_frame_terminator
		static if (usingExt(`GREMEDY_frame_terminator`)) {
			bindFunc(glFrameTerminatorGREMEDY, `glFrameTerminatorGREMEDY`);
		}
		// GL GREMEDY_string_marker
		static if (usingExt(`GREMEDY_string_marker`)) {
			bindFunc(glStringMarkerGREMEDY, `glStringMarkerGREMEDY`);
		}
		// GL HP_image_transform
		static if (usingExt(`HP_image_transform`)) {
			bindFunc(glGetImageTransformParameterfvHP, `glGetImageTransformParameterfvHP`);
			bindFunc(glGetImageTransformParameterivHP, `glGetImageTransformParameterivHP`);
			bindFunc(glImageTransformParameterfHP, `glImageTransformParameterfHP`);
			bindFunc(glImageTransformParameterfvHP, `glImageTransformParameterfvHP`);
			bindFunc(glImageTransformParameteriHP, `glImageTransformParameteriHP`);
			bindFunc(glImageTransformParameterivHP, `glImageTransformParameterivHP`);
		}
		// GL IBM_multimode_draw_arrays
		static if (usingExt(`IBM_multimode_draw_arrays`)) {
			bindFunc(glMultiModeDrawArraysIBM, `glMultiModeDrawArraysIBM`);
			bindFunc(glMultiModeDrawElementsIBM, `glMultiModeDrawElementsIBM`);
		}
		// GL IBM_vertex_array_lists
		static if (usingExt(`IBM_vertex_array_lists`)) {
			bindFunc(glColorPointerListIBM, `glColorPointerListIBM`);
			bindFunc(glEdgeFlagPointerListIBM, `glEdgeFlagPointerListIBM`);
			bindFunc(glFogCoordPointerListIBM, `glFogCoordPointerListIBM`);
			bindFunc(glIndexPointerListIBM, `glIndexPointerListIBM`);
			bindFunc(glNormalPointerListIBM, `glNormalPointerListIBM`);
			bindFunc(glSecondaryColorPointerListIBM, `glSecondaryColorPointerListIBM`);
			bindFunc(glTexCoordPointerListIBM, `glTexCoordPointerListIBM`);
			bindFunc(glVertexPointerListIBM, `glVertexPointerListIBM`);
		}
		// GL INGR_blend_func_separate
		static if (usingExt(`INGR_blend_func_separate`)) {
			bindFunc(glBlendFuncSeparateINGR, `glBlendFuncSeparateINGR`);
		}
		// GL INTEL_parallel_arrays
		static if (usingExt(`INTEL_parallel_arrays`)) {
			bindFunc(glColorPointervINTEL, `glColorPointervINTEL`);
			bindFunc(glNormalPointervINTEL, `glNormalPointervINTEL`);
			bindFunc(glTexCoordPointervINTEL, `glTexCoordPointervINTEL`);
			bindFunc(glVertexPointervINTEL, `glVertexPointervINTEL`);
		}
		// GL KHR_debug
		static if (usingExt(`KHR_debug`)) {
			bindFunc(glDebugMessageCallback, `glDebugMessageCallback`);
			bindFunc(glDebugMessageControl, `glDebugMessageControl`);
			bindFunc(glDebugMessageInsert, `glDebugMessageInsert`);
			bindFunc(glGetDebugMessageLog, `glGetDebugMessageLog`);
			bindFunc(glGetObjectLabel, `glGetObjectLabel`);
			bindFunc(glGetObjectPtrLabel, `glGetObjectPtrLabel`);
			bindFunc(glObjectLabel, `glObjectLabel`);
			bindFunc(glObjectPtrLabel, `glObjectPtrLabel`);
			bindFunc(glPopDebugGroup, `glPopDebugGroup`);
			bindFunc(glPushDebugGroup, `glPushDebugGroup`);
		}
		// GL MESA_resize_buffers
		static if (usingExt(`MESA_resize_buffers`)) {
			bindFunc(glResizeBuffersMESA, `glResizeBuffersMESA`);
		}
		// GL MESA_window_pos
		static if (usingExt(`MESA_window_pos`)) {
			bindFunc(glWindowPos2dMESA, `glWindowPos2dMESA`);
			bindFunc(glWindowPos2dvMESA, `glWindowPos2dvMESA`);
			bindFunc(glWindowPos2fMESA, `glWindowPos2fMESA`);
			bindFunc(glWindowPos2fvMESA, `glWindowPos2fvMESA`);
			bindFunc(glWindowPos2iMESA, `glWindowPos2iMESA`);
			bindFunc(glWindowPos2ivMESA, `glWindowPos2ivMESA`);
			bindFunc(glWindowPos2sMESA, `glWindowPos2sMESA`);
			bindFunc(glWindowPos2svMESA, `glWindowPos2svMESA`);
			bindFunc(glWindowPos3dMESA, `glWindowPos3dMESA`);
			bindFunc(glWindowPos3dvMESA, `glWindowPos3dvMESA`);
			bindFunc(glWindowPos3fMESA, `glWindowPos3fMESA`);
			bindFunc(glWindowPos3fvMESA, `glWindowPos3fvMESA`);
			bindFunc(glWindowPos3iMESA, `glWindowPos3iMESA`);
			bindFunc(glWindowPos3ivMESA, `glWindowPos3ivMESA`);
			bindFunc(glWindowPos3sMESA, `glWindowPos3sMESA`);
			bindFunc(glWindowPos3svMESA, `glWindowPos3svMESA`);
			bindFunc(glWindowPos4dMESA, `glWindowPos4dMESA`);
			bindFunc(glWindowPos4dvMESA, `glWindowPos4dvMESA`);
			bindFunc(glWindowPos4fMESA, `glWindowPos4fMESA`);
			bindFunc(glWindowPos4fvMESA, `glWindowPos4fvMESA`);
			bindFunc(glWindowPos4iMESA, `glWindowPos4iMESA`);
			bindFunc(glWindowPos4ivMESA, `glWindowPos4ivMESA`);
			bindFunc(glWindowPos4sMESA, `glWindowPos4sMESA`);
			bindFunc(glWindowPos4svMESA, `glWindowPos4svMESA`);
		}
		// GL NV_bindless_texture
		static if (usingExt(`NV_bindless_texture`)) {
			bindFunc(glGetImageHandleNV, `glGetImageHandleNV`);
			bindFunc(glGetTextureHandleNV, `glGetTextureHandleNV`);
			bindFunc(glGetTextureSamplerHandleNV, `glGetTextureSamplerHandleNV`);
			bindFunc(glIsImageHandleResidentNV, `glIsImageHandleResidentNV`);
			bindFunc(glIsTextureHandleResidentNV, `glIsTextureHandleResidentNV`);
			bindFunc(glMakeImageHandleNonResidentNV, `glMakeImageHandleNonResidentNV`);
			bindFunc(glMakeImageHandleResidentNV, `glMakeImageHandleResidentNV`);
			bindFunc(glMakeTextureHandleNonResidentNV, `glMakeTextureHandleNonResidentNV`);
			bindFunc(glMakeTextureHandleResidentNV, `glMakeTextureHandleResidentNV`);
			bindFunc(glProgramUniformHandleui64NV, `glProgramUniformHandleui64NV`);
			bindFunc(glProgramUniformHandleui64vNV, `glProgramUniformHandleui64vNV`);
			bindFunc(glUniformHandleui64NV, `glUniformHandleui64NV`);
			bindFunc(glUniformHandleui64vNV, `glUniformHandleui64vNV`);
		}
		// GL NV_conditional_render
		static if (usingExt(`NV_conditional_render`)) {
			bindFunc(glBeginConditionalRenderNV, `glBeginConditionalRenderNV`);
			bindFunc(glEndConditionalRenderNV, `glEndConditionalRenderNV`);
		}
		// GL NV_copy_image
		static if (usingExt(`NV_copy_image`)) {
			bindFunc(glCopyImageSubDataNV, `glCopyImageSubDataNV`);
		}
		// GL NV_depth_buffer_float
		static if (usingExt(`NV_depth_buffer_float`)) {
			bindFunc(glClearDepthdNV, `glClearDepthdNV`);
			bindFunc(glDepthBoundsdNV, `glDepthBoundsdNV`);
			bindFunc(glDepthRangedNV, `glDepthRangedNV`);
		}
		// GL NV_evaluators
		static if (usingExt(`NV_evaluators`)) {
			bindFunc(glEvalMapsNV, `glEvalMapsNV`);
			bindFunc(glGetMapAttribParameterfvNV, `glGetMapAttribParameterfvNV`);
			bindFunc(glGetMapAttribParameterivNV, `glGetMapAttribParameterivNV`);
			bindFunc(glGetMapControlPointsNV, `glGetMapControlPointsNV`);
			bindFunc(glGetMapParameterfvNV, `glGetMapParameterfvNV`);
			bindFunc(glGetMapParameterivNV, `glGetMapParameterivNV`);
			bindFunc(glMapControlPointsNV, `glMapControlPointsNV`);
			bindFunc(glMapParameterfvNV, `glMapParameterfvNV`);
			bindFunc(glMapParameterivNV, `glMapParameterivNV`);
		}
		// GL NV_explicit_multisample
		static if (usingExt(`NV_explicit_multisample`)) {
			bindFunc(glGetMultisamplefvNV, `glGetMultisamplefvNV`);
			bindFunc(glSampleMaskIndexedNV, `glSampleMaskIndexedNV`);
			bindFunc(glTexRenderbufferNV, `glTexRenderbufferNV`);
		}
		// GL NV_fence
		static if (usingExt(`NV_fence`)) {
			bindFunc(glDeleteFencesNV, `glDeleteFencesNV`);
			bindFunc(glFinishFenceNV, `glFinishFenceNV`);
			bindFunc(glGenFencesNV, `glGenFencesNV`);
			bindFunc(glGetFenceivNV, `glGetFenceivNV`);
			bindFunc(glIsFenceNV, `glIsFenceNV`);
			bindFunc(glSetFenceNV, `glSetFenceNV`);
			bindFunc(glTestFenceNV, `glTestFenceNV`);
		}
		// GL NV_fragment_program
		static if (usingExt(`NV_fragment_program`)) {
			bindFunc(glGetProgramNamedParameterdvNV, `glGetProgramNamedParameterdvNV`);
			bindFunc(glGetProgramNamedParameterfvNV, `glGetProgramNamedParameterfvNV`);
			bindFunc(glProgramNamedParameter4dNV, `glProgramNamedParameter4dNV`);
			bindFunc(glProgramNamedParameter4dvNV, `glProgramNamedParameter4dvNV`);
			bindFunc(glProgramNamedParameter4fNV, `glProgramNamedParameter4fNV`);
			bindFunc(glProgramNamedParameter4fvNV, `glProgramNamedParameter4fvNV`);
		}
		// GL NV_framebuffer_multisample_coverage
		static if (usingExt(`NV_framebuffer_multisample_coverage`)) {
			bindFunc(glRenderbufferStorageMultisampleCoverageNV, `glRenderbufferStorageMultisampleCoverageNV`);
		}
		// GL NV_geometry_program4
		static if (usingExt(`NV_geometry_program4`)) {
			bindFunc(glFramebufferTextureEXT, `glFramebufferTextureEXT`);
			bindFunc(glFramebufferTextureFaceEXT, `glFramebufferTextureFaceEXT`);
			bindFunc(glFramebufferTextureLayerEXT, `glFramebufferTextureLayerEXT`);
			bindFunc(glProgramVertexLimitNV, `glProgramVertexLimitNV`);
		}
		// GL NV_gpu_program4
		static if (usingExt(`NV_gpu_program4`)) {
			bindFunc(glGetProgramEnvParameterIivNV, `glGetProgramEnvParameterIivNV`);
			bindFunc(glGetProgramEnvParameterIuivNV, `glGetProgramEnvParameterIuivNV`);
			bindFunc(glGetProgramLocalParameterIivNV, `glGetProgramLocalParameterIivNV`);
			bindFunc(glGetProgramLocalParameterIuivNV, `glGetProgramLocalParameterIuivNV`);
			bindFunc(glProgramEnvParameterI4iNV, `glProgramEnvParameterI4iNV`);
			bindFunc(glProgramEnvParameterI4ivNV, `glProgramEnvParameterI4ivNV`);
			bindFunc(glProgramEnvParameterI4uiNV, `glProgramEnvParameterI4uiNV`);
			bindFunc(glProgramEnvParameterI4uivNV, `glProgramEnvParameterI4uivNV`);
			bindFunc(glProgramEnvParametersI4ivNV, `glProgramEnvParametersI4ivNV`);
			bindFunc(glProgramEnvParametersI4uivNV, `glProgramEnvParametersI4uivNV`);
			bindFunc(glProgramLocalParameterI4iNV, `glProgramLocalParameterI4iNV`);
			bindFunc(glProgramLocalParameterI4ivNV, `glProgramLocalParameterI4ivNV`);
			bindFunc(glProgramLocalParameterI4uiNV, `glProgramLocalParameterI4uiNV`);
			bindFunc(glProgramLocalParameterI4uivNV, `glProgramLocalParameterI4uivNV`);
			bindFunc(glProgramLocalParametersI4ivNV, `glProgramLocalParametersI4ivNV`);
			bindFunc(glProgramLocalParametersI4uivNV, `glProgramLocalParametersI4uivNV`);
		}
		// GL NV_gpu_program5
		static if (usingExt(`NV_gpu_program5`)) {
			bindFunc(glGetProgramSubroutineParameteruivNV, `glGetProgramSubroutineParameteruivNV`);
			bindFunc(glProgramSubroutineParametersuivNV, `glProgramSubroutineParametersuivNV`);
		}
		// GL NV_gpu_shader5
		static if (usingExt(`NV_gpu_shader5`)) {
			bindFunc(glGetUniformi64vNV, `glGetUniformi64vNV`);
			bindFunc(glProgramUniform1i64NV, `glProgramUniform1i64NV`);
			bindFunc(glProgramUniform1i64vNV, `glProgramUniform1i64vNV`);
			bindFunc(glProgramUniform1ui64NV, `glProgramUniform1ui64NV`);
			bindFunc(glProgramUniform1ui64vNV, `glProgramUniform1ui64vNV`);
			bindFunc(glProgramUniform2i64NV, `glProgramUniform2i64NV`);
			bindFunc(glProgramUniform2i64vNV, `glProgramUniform2i64vNV`);
			bindFunc(glProgramUniform2ui64NV, `glProgramUniform2ui64NV`);
			bindFunc(glProgramUniform2ui64vNV, `glProgramUniform2ui64vNV`);
			bindFunc(glProgramUniform3i64NV, `glProgramUniform3i64NV`);
			bindFunc(glProgramUniform3i64vNV, `glProgramUniform3i64vNV`);
			bindFunc(glProgramUniform3ui64NV, `glProgramUniform3ui64NV`);
			bindFunc(glProgramUniform3ui64vNV, `glProgramUniform3ui64vNV`);
			bindFunc(glProgramUniform4i64NV, `glProgramUniform4i64NV`);
			bindFunc(glProgramUniform4i64vNV, `glProgramUniform4i64vNV`);
			bindFunc(glProgramUniform4ui64NV, `glProgramUniform4ui64NV`);
			bindFunc(glProgramUniform4ui64vNV, `glProgramUniform4ui64vNV`);
			bindFunc(glUniform1i64NV, `glUniform1i64NV`);
			bindFunc(glUniform1i64vNV, `glUniform1i64vNV`);
			bindFunc(glUniform1ui64NV, `glUniform1ui64NV`);
			bindFunc(glUniform1ui64vNV, `glUniform1ui64vNV`);
			bindFunc(glUniform2i64NV, `glUniform2i64NV`);
			bindFunc(glUniform2i64vNV, `glUniform2i64vNV`);
			bindFunc(glUniform2ui64NV, `glUniform2ui64NV`);
			bindFunc(glUniform2ui64vNV, `glUniform2ui64vNV`);
			bindFunc(glUniform3i64NV, `glUniform3i64NV`);
			bindFunc(glUniform3i64vNV, `glUniform3i64vNV`);
			bindFunc(glUniform3ui64NV, `glUniform3ui64NV`);
			bindFunc(glUniform3ui64vNV, `glUniform3ui64vNV`);
			bindFunc(glUniform4i64NV, `glUniform4i64NV`);
			bindFunc(glUniform4i64vNV, `glUniform4i64vNV`);
			bindFunc(glUniform4ui64NV, `glUniform4ui64NV`);
			bindFunc(glUniform4ui64vNV, `glUniform4ui64vNV`);
		}
		// GL NV_half_float
		static if (usingExt(`NV_half_float`)) {
			bindFunc(glColor3hNV, `glColor3hNV`);
			bindFunc(glColor3hvNV, `glColor3hvNV`);
			bindFunc(glColor4hNV, `glColor4hNV`);
			bindFunc(glColor4hvNV, `glColor4hvNV`);
			bindFunc(glFogCoordhNV, `glFogCoordhNV`);
			bindFunc(glFogCoordhvNV, `glFogCoordhvNV`);
			bindFunc(glMultiTexCoord1hNV, `glMultiTexCoord1hNV`);
			bindFunc(glMultiTexCoord1hvNV, `glMultiTexCoord1hvNV`);
			bindFunc(glMultiTexCoord2hNV, `glMultiTexCoord2hNV`);
			bindFunc(glMultiTexCoord2hvNV, `glMultiTexCoord2hvNV`);
			bindFunc(glMultiTexCoord3hNV, `glMultiTexCoord3hNV`);
			bindFunc(glMultiTexCoord3hvNV, `glMultiTexCoord3hvNV`);
			bindFunc(glMultiTexCoord4hNV, `glMultiTexCoord4hNV`);
			bindFunc(glMultiTexCoord4hvNV, `glMultiTexCoord4hvNV`);
			bindFunc(glNormal3hNV, `glNormal3hNV`);
			bindFunc(glNormal3hvNV, `glNormal3hvNV`);
			bindFunc(glSecondaryColor3hNV, `glSecondaryColor3hNV`);
			bindFunc(glSecondaryColor3hvNV, `glSecondaryColor3hvNV`);
			bindFunc(glTexCoord1hNV, `glTexCoord1hNV`);
			bindFunc(glTexCoord1hvNV, `glTexCoord1hvNV`);
			bindFunc(glTexCoord2hNV, `glTexCoord2hNV`);
			bindFunc(glTexCoord2hvNV, `glTexCoord2hvNV`);
			bindFunc(glTexCoord3hNV, `glTexCoord3hNV`);
			bindFunc(glTexCoord3hvNV, `glTexCoord3hvNV`);
			bindFunc(glTexCoord4hNV, `glTexCoord4hNV`);
			bindFunc(glTexCoord4hvNV, `glTexCoord4hvNV`);
			bindFunc(glVertex2hNV, `glVertex2hNV`);
			bindFunc(glVertex2hvNV, `glVertex2hvNV`);
			bindFunc(glVertex3hNV, `glVertex3hNV`);
			bindFunc(glVertex3hvNV, `glVertex3hvNV`);
			bindFunc(glVertex4hNV, `glVertex4hNV`);
			bindFunc(glVertex4hvNV, `glVertex4hvNV`);
			bindFunc(glVertexAttrib1hNV, `glVertexAttrib1hNV`);
			bindFunc(glVertexAttrib1hvNV, `glVertexAttrib1hvNV`);
			bindFunc(glVertexAttrib2hNV, `glVertexAttrib2hNV`);
			bindFunc(glVertexAttrib2hvNV, `glVertexAttrib2hvNV`);
			bindFunc(glVertexAttrib3hNV, `glVertexAttrib3hNV`);
			bindFunc(glVertexAttrib3hvNV, `glVertexAttrib3hvNV`);
			bindFunc(glVertexAttrib4hNV, `glVertexAttrib4hNV`);
			bindFunc(glVertexAttrib4hvNV, `glVertexAttrib4hvNV`);
			bindFunc(glVertexAttribs1hvNV, `glVertexAttribs1hvNV`);
			bindFunc(glVertexAttribs2hvNV, `glVertexAttribs2hvNV`);
			bindFunc(glVertexAttribs3hvNV, `glVertexAttribs3hvNV`);
			bindFunc(glVertexAttribs4hvNV, `glVertexAttribs4hvNV`);
			bindFunc(glVertexWeighthNV, `glVertexWeighthNV`);
			bindFunc(glVertexWeighthvNV, `glVertexWeighthvNV`);
		}
		// GL NV_occlusion_query
		static if (usingExt(`NV_occlusion_query`)) {
			bindFunc(glBeginOcclusionQueryNV, `glBeginOcclusionQueryNV`);
			bindFunc(glDeleteOcclusionQueriesNV, `glDeleteOcclusionQueriesNV`);
			bindFunc(glEndOcclusionQueryNV, `glEndOcclusionQueryNV`);
			bindFunc(glGenOcclusionQueriesNV, `glGenOcclusionQueriesNV`);
			bindFunc(glGetOcclusionQueryivNV, `glGetOcclusionQueryivNV`);
			bindFunc(glGetOcclusionQueryuivNV, `glGetOcclusionQueryuivNV`);
			bindFunc(glIsOcclusionQueryNV, `glIsOcclusionQueryNV`);
		}
		// GL NV_parameter_buffer_object
		static if (usingExt(`NV_parameter_buffer_object`)) {
			bindFunc(glProgramBufferParametersfvNV, `glProgramBufferParametersfvNV`);
			bindFunc(glProgramBufferParametersIivNV, `glProgramBufferParametersIivNV`);
			bindFunc(glProgramBufferParametersIuivNV, `glProgramBufferParametersIuivNV`);
		}
		// GL NV_path_rendering
		static if (usingExt(`NV_path_rendering`)) {
			bindFunc(glCopyPathNV, `glCopyPathNV`);
			bindFunc(glCoverFillPathInstancedNV, `glCoverFillPathInstancedNV`);
			bindFunc(glCoverFillPathNV, `glCoverFillPathNV`);
			bindFunc(glCoverStrokePathInstancedNV, `glCoverStrokePathInstancedNV`);
			bindFunc(glCoverStrokePathNV, `glCoverStrokePathNV`);
			bindFunc(glDeletePathsNV, `glDeletePathsNV`);
			bindFunc(glGenPathsNV, `glGenPathsNV`);
			bindFunc(glGetPathColorGenfvNV, `glGetPathColorGenfvNV`);
			bindFunc(glGetPathColorGenivNV, `glGetPathColorGenivNV`);
			bindFunc(glGetPathCommandsNV, `glGetPathCommandsNV`);
			bindFunc(glGetPathCoordsNV, `glGetPathCoordsNV`);
			bindFunc(glGetPathDashArrayNV, `glGetPathDashArrayNV`);
			bindFunc(glGetPathLengthNV, `glGetPathLengthNV`);
			bindFunc(glGetPathMetricRangeNV, `glGetPathMetricRangeNV`);
			bindFunc(glGetPathMetricsNV, `glGetPathMetricsNV`);
			bindFunc(glGetPathParameterfvNV, `glGetPathParameterfvNV`);
			bindFunc(glGetPathParameterivNV, `glGetPathParameterivNV`);
			bindFunc(glGetPathSpacingNV, `glGetPathSpacingNV`);
			bindFunc(glGetPathTexGenfvNV, `glGetPathTexGenfvNV`);
			bindFunc(glGetPathTexGenivNV, `glGetPathTexGenivNV`);
			bindFunc(glInterpolatePathsNV, `glInterpolatePathsNV`);
			bindFunc(glIsPathNV, `glIsPathNV`);
			bindFunc(glIsPointInFillPathNV, `glIsPointInFillPathNV`);
			bindFunc(glIsPointInStrokePathNV, `glIsPointInStrokePathNV`);
			bindFunc(glPathColorGenNV, `glPathColorGenNV`);
			bindFunc(glPathCommandsNV, `glPathCommandsNV`);
			bindFunc(glPathCoordsNV, `glPathCoordsNV`);
			bindFunc(glPathCoverDepthFuncNV, `glPathCoverDepthFuncNV`);
			bindFunc(glPathDashArrayNV, `glPathDashArrayNV`);
			bindFunc(glPathFogGenNV, `glPathFogGenNV`);
			bindFunc(glPathGlyphRangeNV, `glPathGlyphRangeNV`);
			bindFunc(glPathGlyphsNV, `glPathGlyphsNV`);
			bindFunc(glPathParameterfNV, `glPathParameterfNV`);
			bindFunc(glPathParameterfvNV, `glPathParameterfvNV`);
			bindFunc(glPathParameteriNV, `glPathParameteriNV`);
			bindFunc(glPathParameterivNV, `glPathParameterivNV`);
			bindFunc(glPathStencilDepthOffsetNV, `glPathStencilDepthOffsetNV`);
			bindFunc(glPathStencilFuncNV, `glPathStencilFuncNV`);
			bindFunc(glPathStringNV, `glPathStringNV`);
			bindFunc(glPathSubCommandsNV, `glPathSubCommandsNV`);
			bindFunc(glPathSubCoordsNV, `glPathSubCoordsNV`);
			bindFunc(glPathTexGenNV, `glPathTexGenNV`);
			bindFunc(glPointAlongPathNV, `glPointAlongPathNV`);
			bindFunc(glStencilFillPathInstancedNV, `glStencilFillPathInstancedNV`);
			bindFunc(glStencilFillPathNV, `glStencilFillPathNV`);
			bindFunc(glStencilStrokePathInstancedNV, `glStencilStrokePathInstancedNV`);
			bindFunc(glStencilStrokePathNV, `glStencilStrokePathNV`);
			bindFunc(glTransformPathNV, `glTransformPathNV`);
			bindFunc(glWeightPathsNV, `glWeightPathsNV`);
		}
		// GL NV_pixel_data_range
		static if (usingExt(`NV_pixel_data_range`)) {
			bindFunc(glFlushPixelDataRangeNV, `glFlushPixelDataRangeNV`);
			bindFunc(glPixelDataRangeNV, `glPixelDataRangeNV`);
		}
		// GL NV_point_sprite
		static if (usingExt(`NV_point_sprite`)) {
			bindFunc(glPointParameteriNV, `glPointParameteriNV`);
			bindFunc(glPointParameterivNV, `glPointParameterivNV`);
		}
		// GL NV_present_video
		static if (usingExt(`NV_present_video`)) {
			bindFunc(glGetVideoi64vNV, `glGetVideoi64vNV`);
			bindFunc(glGetVideoivNV, `glGetVideoivNV`);
			bindFunc(glGetVideoui64vNV, `glGetVideoui64vNV`);
			bindFunc(glGetVideouivNV, `glGetVideouivNV`);
			bindFunc(glPresentFrameDualFillNV, `glPresentFrameDualFillNV`);
			bindFunc(glPresentFrameKeyedNV, `glPresentFrameKeyedNV`);
		}
		// GL NV_primitive_restart
		static if (usingExt(`NV_primitive_restart`)) {
			bindFunc(glPrimitiveRestartIndexNV, `glPrimitiveRestartIndexNV`);
			bindFunc(glPrimitiveRestartNV, `glPrimitiveRestartNV`);
		}
		// GL NV_register_combiners
		static if (usingExt(`NV_register_combiners`)) {
			bindFunc(glCombinerInputNV, `glCombinerInputNV`);
			bindFunc(glCombinerOutputNV, `glCombinerOutputNV`);
			bindFunc(glCombinerParameterfNV, `glCombinerParameterfNV`);
			bindFunc(glCombinerParameterfvNV, `glCombinerParameterfvNV`);
			bindFunc(glCombinerParameteriNV, `glCombinerParameteriNV`);
			bindFunc(glCombinerParameterivNV, `glCombinerParameterivNV`);
			bindFunc(glFinalCombinerInputNV, `glFinalCombinerInputNV`);
			bindFunc(glGetCombinerInputParameterfvNV, `glGetCombinerInputParameterfvNV`);
			bindFunc(glGetCombinerInputParameterivNV, `glGetCombinerInputParameterivNV`);
			bindFunc(glGetCombinerOutputParameterfvNV, `glGetCombinerOutputParameterfvNV`);
			bindFunc(glGetCombinerOutputParameterivNV, `glGetCombinerOutputParameterivNV`);
			bindFunc(glGetFinalCombinerInputParameterfvNV, `glGetFinalCombinerInputParameterfvNV`);
			bindFunc(glGetFinalCombinerInputParameterivNV, `glGetFinalCombinerInputParameterivNV`);
		}
		// GL NV_register_combiners2
		static if (usingExt(`NV_register_combiners2`)) {
			bindFunc(glCombinerStageParameterfvNV, `glCombinerStageParameterfvNV`);
			bindFunc(glGetCombinerStageParameterfvNV, `glGetCombinerStageParameterfvNV`);
		}
		// GL NV_shader_buffer_load
		static if (usingExt(`NV_shader_buffer_load`)) {
			bindFunc(glGetBufferParameterui64vNV, `glGetBufferParameterui64vNV`);
			bindFunc(glGetIntegerui64vNV, `glGetIntegerui64vNV`);
			bindFunc(glGetNamedBufferParameterui64vNV, `glGetNamedBufferParameterui64vNV`);
			bindFunc(glGetUniformui64vNV, `glGetUniformui64vNV`);
			bindFunc(glIsBufferResidentNV, `glIsBufferResidentNV`);
			bindFunc(glIsNamedBufferResidentNV, `glIsNamedBufferResidentNV`);
			bindFunc(glMakeBufferNonResidentNV, `glMakeBufferNonResidentNV`);
			bindFunc(glMakeBufferResidentNV, `glMakeBufferResidentNV`);
			bindFunc(glMakeNamedBufferNonResidentNV, `glMakeNamedBufferNonResidentNV`);
			bindFunc(glMakeNamedBufferResidentNV, `glMakeNamedBufferResidentNV`);
			bindFunc(glProgramUniformui64NV, `glProgramUniformui64NV`);
			bindFunc(glProgramUniformui64vNV, `glProgramUniformui64vNV`);
			bindFunc(glUniformui64NV, `glUniformui64NV`);
			bindFunc(glUniformui64vNV, `glUniformui64vNV`);
		}
		// GL NV_texture_barrier
		static if (usingExt(`NV_texture_barrier`)) {
			bindFunc(glTextureBarrierNV, `glTextureBarrierNV`);
		}
		// GL NV_texture_multisample
		static if (usingExt(`NV_texture_multisample`)) {
			bindFunc(glTexImage2DMultisampleCoverageNV, `glTexImage2DMultisampleCoverageNV`);
			bindFunc(glTexImage3DMultisampleCoverageNV, `glTexImage3DMultisampleCoverageNV`);
			bindFunc(glTextureImage2DMultisampleCoverageNV, `glTextureImage2DMultisampleCoverageNV`);
			bindFunc(glTextureImage2DMultisampleNV, `glTextureImage2DMultisampleNV`);
			bindFunc(glTextureImage3DMultisampleCoverageNV, `glTextureImage3DMultisampleCoverageNV`);
			bindFunc(glTextureImage3DMultisampleNV, `glTextureImage3DMultisampleNV`);
		}
		// GL NV_transform_feedback
		static if (usingExt(`NV_transform_feedback`)) {
			bindFunc(glActiveVaryingNV, `glActiveVaryingNV`);
			bindFunc(glBeginTransformFeedbackNV, `glBeginTransformFeedbackNV`);
			bindFunc(glBindBufferBaseNV, `glBindBufferBaseNV`);
			bindFunc(glBindBufferOffsetNV, `glBindBufferOffsetNV`);
			bindFunc(glBindBufferRangeNV, `glBindBufferRangeNV`);
			bindFunc(glEndTransformFeedbackNV, `glEndTransformFeedbackNV`);
			bindFunc(glGetActiveVaryingNV, `glGetActiveVaryingNV`);
			bindFunc(glGetTransformFeedbackVaryingNV, `glGetTransformFeedbackVaryingNV`);
			bindFunc(glGetVaryingLocationNV, `glGetVaryingLocationNV`);
			bindFunc(glTransformFeedbackAttribsNV, `glTransformFeedbackAttribsNV`);
			bindFunc(glTransformFeedbackStreamAttribsNV, `glTransformFeedbackStreamAttribsNV`);
			bindFunc(glTransformFeedbackVaryingsNV, `glTransformFeedbackVaryingsNV`);
		}
		// GL NV_transform_feedback2
		static if (usingExt(`NV_transform_feedback2`)) {
			bindFunc(glBindTransformFeedbackNV, `glBindTransformFeedbackNV`);
			bindFunc(glDeleteTransformFeedbacksNV, `glDeleteTransformFeedbacksNV`);
			bindFunc(glDrawTransformFeedbackNV, `glDrawTransformFeedbackNV`);
			bindFunc(glGenTransformFeedbacksNV, `glGenTransformFeedbacksNV`);
			bindFunc(glIsTransformFeedbackNV, `glIsTransformFeedbackNV`);
			bindFunc(glPauseTransformFeedbackNV, `glPauseTransformFeedbackNV`);
			bindFunc(glResumeTransformFeedbackNV, `glResumeTransformFeedbackNV`);
		}
		// GL NV_vdpau_interop
		static if (usingExt(`NV_vdpau_interop`)) {
			bindFunc(glVDPAUFiniNV, `glVDPAUFiniNV`);
			bindFunc(glVDPAUGetSurfaceivNV, `glVDPAUGetSurfaceivNV`);
			bindFunc(glVDPAUInitNV, `glVDPAUInitNV`);
			bindFunc(glVDPAUIsSurfaceNV, `glVDPAUIsSurfaceNV`);
			bindFunc(glVDPAUMapSurfacesNV, `glVDPAUMapSurfacesNV`);
			bindFunc(glVDPAURegisterOutputSurfaceNV, `glVDPAURegisterOutputSurfaceNV`);
			bindFunc(glVDPAURegisterVideoSurfaceNV, `glVDPAURegisterVideoSurfaceNV`);
			bindFunc(glVDPAUSurfaceAccessNV, `glVDPAUSurfaceAccessNV`);
			bindFunc(glVDPAUUnmapSurfacesNV, `glVDPAUUnmapSurfacesNV`);
			bindFunc(glVDPAUUnregisterSurfaceNV, `glVDPAUUnregisterSurfaceNV`);
		}
		// GL NV_vertex_array_range
		static if (usingExt(`NV_vertex_array_range`)) {
			bindFunc(glFlushVertexArrayRangeNV, `glFlushVertexArrayRangeNV`);
			bindFunc(glVertexArrayRangeNV, `glVertexArrayRangeNV`);
		}
		// GL NV_vertex_attrib_integer_64bit
		static if (usingExt(`NV_vertex_attrib_integer_64bit`)) {
			bindFunc(glGetVertexAttribLi64vNV, `glGetVertexAttribLi64vNV`);
			bindFunc(glGetVertexAttribLui64vNV, `glGetVertexAttribLui64vNV`);
			bindFunc(glVertexAttribL1i64NV, `glVertexAttribL1i64NV`);
			bindFunc(glVertexAttribL1i64vNV, `glVertexAttribL1i64vNV`);
			bindFunc(glVertexAttribL1ui64NV, `glVertexAttribL1ui64NV`);
			bindFunc(glVertexAttribL1ui64vNV, `glVertexAttribL1ui64vNV`);
			bindFunc(glVertexAttribL2i64NV, `glVertexAttribL2i64NV`);
			bindFunc(glVertexAttribL2i64vNV, `glVertexAttribL2i64vNV`);
			bindFunc(glVertexAttribL2ui64NV, `glVertexAttribL2ui64NV`);
			bindFunc(glVertexAttribL2ui64vNV, `glVertexAttribL2ui64vNV`);
			bindFunc(glVertexAttribL3i64NV, `glVertexAttribL3i64NV`);
			bindFunc(glVertexAttribL3i64vNV, `glVertexAttribL3i64vNV`);
			bindFunc(glVertexAttribL3ui64NV, `glVertexAttribL3ui64NV`);
			bindFunc(glVertexAttribL3ui64vNV, `glVertexAttribL3ui64vNV`);
			bindFunc(glVertexAttribL4i64NV, `glVertexAttribL4i64NV`);
			bindFunc(glVertexAttribL4i64vNV, `glVertexAttribL4i64vNV`);
			bindFunc(glVertexAttribL4ui64NV, `glVertexAttribL4ui64NV`);
			bindFunc(glVertexAttribL4ui64vNV, `glVertexAttribL4ui64vNV`);
			bindFunc(glVertexAttribLFormatNV, `glVertexAttribLFormatNV`);
		}
		// GL NV_vertex_buffer_unified_memory
		static if (usingExt(`NV_vertex_buffer_unified_memory`)) {
			bindFunc(glBufferAddressRangeNV, `glBufferAddressRangeNV`);
			bindFunc(glColorFormatNV, `glColorFormatNV`);
			bindFunc(glEdgeFlagFormatNV, `glEdgeFlagFormatNV`);
			bindFunc(glFogCoordFormatNV, `glFogCoordFormatNV`);
			bindFunc(glGetIntegerui64i_vNV, `glGetIntegerui64i_vNV`);
			bindFunc(glIndexFormatNV, `glIndexFormatNV`);
			bindFunc(glNormalFormatNV, `glNormalFormatNV`);
			bindFunc(glSecondaryColorFormatNV, `glSecondaryColorFormatNV`);
			bindFunc(glTexCoordFormatNV, `glTexCoordFormatNV`);
			bindFunc(glVertexAttribFormatNV, `glVertexAttribFormatNV`);
			bindFunc(glVertexAttribIFormatNV, `glVertexAttribIFormatNV`);
			bindFunc(glVertexFormatNV, `glVertexFormatNV`);
		}
		// GL NV_vertex_program
		static if (usingExt(`NV_vertex_program`)) {
			bindFunc(glAreProgramsResidentNV, `glAreProgramsResidentNV`);
			bindFunc(glBindProgramNV, `glBindProgramNV`);
			bindFunc(glDeleteProgramsNV, `glDeleteProgramsNV`);
			bindFunc(glExecuteProgramNV, `glExecuteProgramNV`);
			bindFunc(glGenProgramsNV, `glGenProgramsNV`);
			bindFunc(glGetProgramivNV, `glGetProgramivNV`);
			bindFunc(glGetProgramParameterdvNV, `glGetProgramParameterdvNV`);
			bindFunc(glGetProgramParameterfvNV, `glGetProgramParameterfvNV`);
			bindFunc(glGetProgramStringNV, `glGetProgramStringNV`);
			bindFunc(glGetTrackMatrixivNV, `glGetTrackMatrixivNV`);
			bindFunc(glGetVertexAttribdvNV, `glGetVertexAttribdvNV`);
			bindFunc(glGetVertexAttribfvNV, `glGetVertexAttribfvNV`);
			bindFunc(glGetVertexAttribivNV, `glGetVertexAttribivNV`);
			bindFunc(glGetVertexAttribPointervNV, `glGetVertexAttribPointervNV`);
			bindFunc(glIsProgramNV, `glIsProgramNV`);
			bindFunc(glLoadProgramNV, `glLoadProgramNV`);
			bindFunc(glProgramParameter4dNV, `glProgramParameter4dNV`);
			bindFunc(glProgramParameter4dvNV, `glProgramParameter4dvNV`);
			bindFunc(glProgramParameter4fNV, `glProgramParameter4fNV`);
			bindFunc(glProgramParameter4fvNV, `glProgramParameter4fvNV`);
			bindFunc(glProgramParameters4dvNV, `glProgramParameters4dvNV`);
			bindFunc(glProgramParameters4fvNV, `glProgramParameters4fvNV`);
			bindFunc(glRequestResidentProgramsNV, `glRequestResidentProgramsNV`);
			bindFunc(glTrackMatrixNV, `glTrackMatrixNV`);
			bindFunc(glVertexAttrib1dNV, `glVertexAttrib1dNV`);
			bindFunc(glVertexAttrib1dvNV, `glVertexAttrib1dvNV`);
			bindFunc(glVertexAttrib1fNV, `glVertexAttrib1fNV`);
			bindFunc(glVertexAttrib1fvNV, `glVertexAttrib1fvNV`);
			bindFunc(glVertexAttrib1sNV, `glVertexAttrib1sNV`);
			bindFunc(glVertexAttrib1svNV, `glVertexAttrib1svNV`);
			bindFunc(glVertexAttrib2dNV, `glVertexAttrib2dNV`);
			bindFunc(glVertexAttrib2dvNV, `glVertexAttrib2dvNV`);
			bindFunc(glVertexAttrib2fNV, `glVertexAttrib2fNV`);
			bindFunc(glVertexAttrib2fvNV, `glVertexAttrib2fvNV`);
			bindFunc(glVertexAttrib2sNV, `glVertexAttrib2sNV`);
			bindFunc(glVertexAttrib2svNV, `glVertexAttrib2svNV`);
			bindFunc(glVertexAttrib3dNV, `glVertexAttrib3dNV`);
			bindFunc(glVertexAttrib3dvNV, `glVertexAttrib3dvNV`);
			bindFunc(glVertexAttrib3fNV, `glVertexAttrib3fNV`);
			bindFunc(glVertexAttrib3fvNV, `glVertexAttrib3fvNV`);
			bindFunc(glVertexAttrib3sNV, `glVertexAttrib3sNV`);
			bindFunc(glVertexAttrib3svNV, `glVertexAttrib3svNV`);
			bindFunc(glVertexAttrib4dNV, `glVertexAttrib4dNV`);
			bindFunc(glVertexAttrib4dvNV, `glVertexAttrib4dvNV`);
			bindFunc(glVertexAttrib4fNV, `glVertexAttrib4fNV`);
			bindFunc(glVertexAttrib4fvNV, `glVertexAttrib4fvNV`);
			bindFunc(glVertexAttrib4sNV, `glVertexAttrib4sNV`);
			bindFunc(glVertexAttrib4svNV, `glVertexAttrib4svNV`);
			bindFunc(glVertexAttrib4ubNV, `glVertexAttrib4ubNV`);
			bindFunc(glVertexAttrib4ubvNV, `glVertexAttrib4ubvNV`);
			bindFunc(glVertexAttribPointerNV, `glVertexAttribPointerNV`);
			bindFunc(glVertexAttribs1dvNV, `glVertexAttribs1dvNV`);
			bindFunc(glVertexAttribs1fvNV, `glVertexAttribs1fvNV`);
			bindFunc(glVertexAttribs1svNV, `glVertexAttribs1svNV`);
			bindFunc(glVertexAttribs2dvNV, `glVertexAttribs2dvNV`);
			bindFunc(glVertexAttribs2fvNV, `glVertexAttribs2fvNV`);
			bindFunc(glVertexAttribs2svNV, `glVertexAttribs2svNV`);
			bindFunc(glVertexAttribs3dvNV, `glVertexAttribs3dvNV`);
			bindFunc(glVertexAttribs3fvNV, `glVertexAttribs3fvNV`);
			bindFunc(glVertexAttribs3svNV, `glVertexAttribs3svNV`);
			bindFunc(glVertexAttribs4dvNV, `glVertexAttribs4dvNV`);
			bindFunc(glVertexAttribs4fvNV, `glVertexAttribs4fvNV`);
			bindFunc(glVertexAttribs4svNV, `glVertexAttribs4svNV`);
			bindFunc(glVertexAttribs4ubvNV, `glVertexAttribs4ubvNV`);
		}
		// GL NV_vertex_program4
		static if (usingExt(`NV_vertex_program4`)) {
			bindFunc(glGetVertexAttribIivEXT, `glGetVertexAttribIivEXT`);
			bindFunc(glGetVertexAttribIuivEXT, `glGetVertexAttribIuivEXT`);
			bindFunc(glVertexAttribI1iEXT, `glVertexAttribI1iEXT`);
			bindFunc(glVertexAttribI1ivEXT, `glVertexAttribI1ivEXT`);
			bindFunc(glVertexAttribI1uiEXT, `glVertexAttribI1uiEXT`);
			bindFunc(glVertexAttribI1uivEXT, `glVertexAttribI1uivEXT`);
			bindFunc(glVertexAttribI2iEXT, `glVertexAttribI2iEXT`);
			bindFunc(glVertexAttribI2ivEXT, `glVertexAttribI2ivEXT`);
			bindFunc(glVertexAttribI2uiEXT, `glVertexAttribI2uiEXT`);
			bindFunc(glVertexAttribI2uivEXT, `glVertexAttribI2uivEXT`);
			bindFunc(glVertexAttribI3iEXT, `glVertexAttribI3iEXT`);
			bindFunc(glVertexAttribI3ivEXT, `glVertexAttribI3ivEXT`);
			bindFunc(glVertexAttribI3uiEXT, `glVertexAttribI3uiEXT`);
			bindFunc(glVertexAttribI3uivEXT, `glVertexAttribI3uivEXT`);
			bindFunc(glVertexAttribI4bvEXT, `glVertexAttribI4bvEXT`);
			bindFunc(glVertexAttribI4iEXT, `glVertexAttribI4iEXT`);
			bindFunc(glVertexAttribI4ivEXT, `glVertexAttribI4ivEXT`);
			bindFunc(glVertexAttribI4svEXT, `glVertexAttribI4svEXT`);
			bindFunc(glVertexAttribI4ubvEXT, `glVertexAttribI4ubvEXT`);
			bindFunc(glVertexAttribI4uiEXT, `glVertexAttribI4uiEXT`);
			bindFunc(glVertexAttribI4uivEXT, `glVertexAttribI4uivEXT`);
			bindFunc(glVertexAttribI4usvEXT, `glVertexAttribI4usvEXT`);
			bindFunc(glVertexAttribIPointerEXT, `glVertexAttribIPointerEXT`);
		}
		// GL NV_video_capture
		static if (usingExt(`NV_video_capture`)) {
			bindFunc(glBeginVideoCaptureNV, `glBeginVideoCaptureNV`);
			bindFunc(glBindVideoCaptureStreamBufferNV, `glBindVideoCaptureStreamBufferNV`);
			bindFunc(glBindVideoCaptureStreamTextureNV, `glBindVideoCaptureStreamTextureNV`);
			bindFunc(glEndVideoCaptureNV, `glEndVideoCaptureNV`);
			bindFunc(glGetVideoCaptureivNV, `glGetVideoCaptureivNV`);
			bindFunc(glGetVideoCaptureStreamdvNV, `glGetVideoCaptureStreamdvNV`);
			bindFunc(glGetVideoCaptureStreamfvNV, `glGetVideoCaptureStreamfvNV`);
			bindFunc(glGetVideoCaptureStreamivNV, `glGetVideoCaptureStreamivNV`);
			bindFunc(glVideoCaptureNV, `glVideoCaptureNV`);
			bindFunc(glVideoCaptureStreamParameterdvNV, `glVideoCaptureStreamParameterdvNV`);
			bindFunc(glVideoCaptureStreamParameterfvNV, `glVideoCaptureStreamParameterfvNV`);
			bindFunc(glVideoCaptureStreamParameterivNV, `glVideoCaptureStreamParameterivNV`);
		}
		// GL PGI_misc_hints
		static if (usingExt(`PGI_misc_hints`)) {
			bindFunc(glHintPGI, `glHintPGI`);
		}
		// GL SGI_color_table
		static if (usingExt(`SGI_color_table`)) {
			bindFunc(glColorTableParameterfvSGI, `glColorTableParameterfvSGI`);
			bindFunc(glColorTableParameterivSGI, `glColorTableParameterivSGI`);
			bindFunc(glColorTableSGI, `glColorTableSGI`);
			bindFunc(glCopyColorTableSGI, `glCopyColorTableSGI`);
			bindFunc(glGetColorTableParameterfvSGI, `glGetColorTableParameterfvSGI`);
			bindFunc(glGetColorTableParameterivSGI, `glGetColorTableParameterivSGI`);
			bindFunc(glGetColorTableSGI, `glGetColorTableSGI`);
		}
		// GL SGIS_detail_texture
		static if (usingExt(`SGIS_detail_texture`)) {
			bindFunc(glDetailTexFuncSGIS, `glDetailTexFuncSGIS`);
			bindFunc(glGetDetailTexFuncSGIS, `glGetDetailTexFuncSGIS`);
		}
		// GL SGIS_fog_function
		static if (usingExt(`SGIS_fog_function`)) {
			bindFunc(glFogFuncSGIS, `glFogFuncSGIS`);
			bindFunc(glGetFogFuncSGIS, `glGetFogFuncSGIS`);
		}
		// GL SGIS_multisample
		static if (usingExt(`SGIS_multisample`)) {
			bindFunc(glSampleMaskSGIS, `glSampleMaskSGIS`);
			bindFunc(glSamplePatternSGIS, `glSamplePatternSGIS`);
		}
		// GL SGIS_pixel_texture
		static if (usingExt(`SGIS_pixel_texture`)) {
			bindFunc(glGetPixelTexGenParameterfvSGIS, `glGetPixelTexGenParameterfvSGIS`);
			bindFunc(glGetPixelTexGenParameterivSGIS, `glGetPixelTexGenParameterivSGIS`);
			bindFunc(glPixelTexGenParameterfSGIS, `glPixelTexGenParameterfSGIS`);
			bindFunc(glPixelTexGenParameterfvSGIS, `glPixelTexGenParameterfvSGIS`);
			bindFunc(glPixelTexGenParameteriSGIS, `glPixelTexGenParameteriSGIS`);
			bindFunc(glPixelTexGenParameterivSGIS, `glPixelTexGenParameterivSGIS`);
		}
		// GL SGIS_point_parameters
		static if (usingExt(`SGIS_point_parameters`)) {
			bindFunc(glPointParameterfSGIS, `glPointParameterfSGIS`);
			bindFunc(glPointParameterfvSGIS, `glPointParameterfvSGIS`);
		}
		// GL SGIS_sharpen_texture
		static if (usingExt(`SGIS_sharpen_texture`)) {
			bindFunc(glGetSharpenTexFuncSGIS, `glGetSharpenTexFuncSGIS`);
			bindFunc(glSharpenTexFuncSGIS, `glSharpenTexFuncSGIS`);
		}
		// GL SGIS_texture_color_mask
		static if (usingExt(`SGIS_texture_color_mask`)) {
			bindFunc(glTextureColorMaskSGIS, `glTextureColorMaskSGIS`);
		}
		// GL SGIS_texture_filter4
		static if (usingExt(`SGIS_texture_filter4`)) {
			bindFunc(glGetTexFilterFuncSGIS, `glGetTexFilterFuncSGIS`);
			bindFunc(glTexFilterFuncSGIS, `glTexFilterFuncSGIS`);
		}
		// GL SGIS_texture4D
		static if (usingExt(`SGIS_texture4D`)) {
			bindFunc(glTexImage4DSGIS, `glTexImage4DSGIS`);
			bindFunc(glTexSubImage4DSGIS, `glTexSubImage4DSGIS`);
		}
		// GL SGIX_async
		static if (usingExt(`SGIX_async`)) {
			bindFunc(glAsyncMarkerSGIX, `glAsyncMarkerSGIX`);
			bindFunc(glDeleteAsyncMarkersSGIX, `glDeleteAsyncMarkersSGIX`);
			bindFunc(glFinishAsyncSGIX, `glFinishAsyncSGIX`);
			bindFunc(glGenAsyncMarkersSGIX, `glGenAsyncMarkersSGIX`);
			bindFunc(glIsAsyncMarkerSGIX, `glIsAsyncMarkerSGIX`);
			bindFunc(glPollAsyncSGIX, `glPollAsyncSGIX`);
		}
		// GL SGIX_flush_raster
		static if (usingExt(`SGIX_flush_raster`)) {
			bindFunc(glFlushRasterSGIX, `glFlushRasterSGIX`);
		}
		// GL SGIX_fragment_lighting
		static if (usingExt(`SGIX_fragment_lighting`)) {
			bindFunc(glFragmentColorMaterialSGIX, `glFragmentColorMaterialSGIX`);
			bindFunc(glFragmentLightfSGIX, `glFragmentLightfSGIX`);
			bindFunc(glFragmentLightfvSGIX, `glFragmentLightfvSGIX`);
			bindFunc(glFragmentLightiSGIX, `glFragmentLightiSGIX`);
			bindFunc(glFragmentLightivSGIX, `glFragmentLightivSGIX`);
			bindFunc(glFragmentLightModelfSGIX, `glFragmentLightModelfSGIX`);
			bindFunc(glFragmentLightModelfvSGIX, `glFragmentLightModelfvSGIX`);
			bindFunc(glFragmentLightModeliSGIX, `glFragmentLightModeliSGIX`);
			bindFunc(glFragmentLightModelivSGIX, `glFragmentLightModelivSGIX`);
			bindFunc(glFragmentMaterialfSGIX, `glFragmentMaterialfSGIX`);
			bindFunc(glFragmentMaterialfvSGIX, `glFragmentMaterialfvSGIX`);
			bindFunc(glFragmentMaterialiSGIX, `glFragmentMaterialiSGIX`);
			bindFunc(glFragmentMaterialivSGIX, `glFragmentMaterialivSGIX`);
			bindFunc(glGetFragmentLightfvSGIX, `glGetFragmentLightfvSGIX`);
			bindFunc(glGetFragmentLightivSGIX, `glGetFragmentLightivSGIX`);
			bindFunc(glGetFragmentMaterialfvSGIX, `glGetFragmentMaterialfvSGIX`);
			bindFunc(glGetFragmentMaterialivSGIX, `glGetFragmentMaterialivSGIX`);
			bindFunc(glLightEnviSGIX, `glLightEnviSGIX`);
		}
		// GL SGIX_framezoom
		static if (usingExt(`SGIX_framezoom`)) {
			bindFunc(glFrameZoomSGIX, `glFrameZoomSGIX`);
		}
		// GL SGIX_igloo_interface
		static if (usingExt(`SGIX_igloo_interface`)) {
			bindFunc(glIglooInterfaceSGIX, `glIglooInterfaceSGIX`);
		}
		// GL SGIX_instruments
		static if (usingExt(`SGIX_instruments`)) {
			bindFunc(glGetInstrumentsSGIX, `glGetInstrumentsSGIX`);
			bindFunc(glInstrumentsBufferSGIX, `glInstrumentsBufferSGIX`);
			bindFunc(glPollInstrumentsSGIX, `glPollInstrumentsSGIX`);
			bindFunc(glReadInstrumentsSGIX, `glReadInstrumentsSGIX`);
			bindFunc(glStartInstrumentsSGIX, `glStartInstrumentsSGIX`);
			bindFunc(glStopInstrumentsSGIX, `glStopInstrumentsSGIX`);
		}
		// GL SGIX_list_priority
		static if (usingExt(`SGIX_list_priority`)) {
			bindFunc(glGetListParameterfvSGIX, `glGetListParameterfvSGIX`);
			bindFunc(glGetListParameterivSGIX, `glGetListParameterivSGIX`);
			bindFunc(glListParameterfSGIX, `glListParameterfSGIX`);
			bindFunc(glListParameterfvSGIX, `glListParameterfvSGIX`);
			bindFunc(glListParameteriSGIX, `glListParameteriSGIX`);
			bindFunc(glListParameterivSGIX, `glListParameterivSGIX`);
		}
		// GL SGIX_pixel_texture
		static if (usingExt(`SGIX_pixel_texture`)) {
			bindFunc(glPixelTexGenSGIX, `glPixelTexGenSGIX`);
		}
		// GL SGIX_polynomial_ffd
		static if (usingExt(`SGIX_polynomial_ffd`)) {
			bindFunc(glDeformationMap3dSGIX, `glDeformationMap3dSGIX`);
			bindFunc(glDeformationMap3fSGIX, `glDeformationMap3fSGIX`);
			bindFunc(glDeformSGIX, `glDeformSGIX`);
			bindFunc(glLoadIdentityDeformationMapSGIX, `glLoadIdentityDeformationMapSGIX`);
		}
		// GL SGIX_reference_plane
		static if (usingExt(`SGIX_reference_plane`)) {
			bindFunc(glReferencePlaneSGIX, `glReferencePlaneSGIX`);
		}
		// GL SGIX_sprite
		static if (usingExt(`SGIX_sprite`)) {
			bindFunc(glSpriteParameterfSGIX, `glSpriteParameterfSGIX`);
			bindFunc(glSpriteParameterfvSGIX, `glSpriteParameterfvSGIX`);
			bindFunc(glSpriteParameteriSGIX, `glSpriteParameteriSGIX`);
			bindFunc(glSpriteParameterivSGIX, `glSpriteParameterivSGIX`);
		}
		// GL SGIX_tag_sample_buffer
		static if (usingExt(`SGIX_tag_sample_buffer`)) {
			bindFunc(glTagSampleBufferSGIX, `glTagSampleBufferSGIX`);
		}
		// GL SUN_global_alpha
		static if (usingExt(`SUN_global_alpha`)) {
			bindFunc(glGlobalAlphaFactorbSUN, `glGlobalAlphaFactorbSUN`);
			bindFunc(glGlobalAlphaFactordSUN, `glGlobalAlphaFactordSUN`);
			bindFunc(glGlobalAlphaFactorfSUN, `glGlobalAlphaFactorfSUN`);
			bindFunc(glGlobalAlphaFactoriSUN, `glGlobalAlphaFactoriSUN`);
			bindFunc(glGlobalAlphaFactorsSUN, `glGlobalAlphaFactorsSUN`);
			bindFunc(glGlobalAlphaFactorubSUN, `glGlobalAlphaFactorubSUN`);
			bindFunc(glGlobalAlphaFactoruiSUN, `glGlobalAlphaFactoruiSUN`);
			bindFunc(glGlobalAlphaFactorusSUN, `glGlobalAlphaFactorusSUN`);
		}
		// GL SUN_mesh_array
		static if (usingExt(`SUN_mesh_array`)) {
			bindFunc(glDrawMeshArraysSUN, `glDrawMeshArraysSUN`);
		}
		// GL SUN_triangle_list
		static if (usingExt(`SUN_triangle_list`)) {
			bindFunc(glReplacementCodePointerSUN, `glReplacementCodePointerSUN`);
			bindFunc(glReplacementCodeubSUN, `glReplacementCodeubSUN`);
			bindFunc(glReplacementCodeubvSUN, `glReplacementCodeubvSUN`);
			bindFunc(glReplacementCodeuiSUN, `glReplacementCodeuiSUN`);
			bindFunc(glReplacementCodeuivSUN, `glReplacementCodeuivSUN`);
			bindFunc(glReplacementCodeusSUN, `glReplacementCodeusSUN`);
			bindFunc(glReplacementCodeusvSUN, `glReplacementCodeusvSUN`);
		}
		// GL SUN_vertex
		static if (usingExt(`SUN_vertex`)) {
			bindFunc(glColor3fVertex3fSUN, `glColor3fVertex3fSUN`);
			bindFunc(glColor3fVertex3fvSUN, `glColor3fVertex3fvSUN`);
			bindFunc(glColor4fNormal3fVertex3fSUN, `glColor4fNormal3fVertex3fSUN`);
			bindFunc(glColor4fNormal3fVertex3fvSUN, `glColor4fNormal3fVertex3fvSUN`);
			bindFunc(glColor4ubVertex2fSUN, `glColor4ubVertex2fSUN`);
			bindFunc(glColor4ubVertex2fvSUN, `glColor4ubVertex2fvSUN`);
			bindFunc(glColor4ubVertex3fSUN, `glColor4ubVertex3fSUN`);
			bindFunc(glColor4ubVertex3fvSUN, `glColor4ubVertex3fvSUN`);
			bindFunc(glNormal3fVertex3fSUN, `glNormal3fVertex3fSUN`);
			bindFunc(glNormal3fVertex3fvSUN, `glNormal3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiColor3fVertex3fSUN, `glReplacementCodeuiColor3fVertex3fSUN`);
			bindFunc(glReplacementCodeuiColor3fVertex3fvSUN, `glReplacementCodeuiColor3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiColor4fNormal3fVertex3fSUN, `glReplacementCodeuiColor4fNormal3fVertex3fSUN`);
			bindFunc(glReplacementCodeuiColor4fNormal3fVertex3fvSUN, `glReplacementCodeuiColor4fNormal3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiColor4ubVertex3fSUN, `glReplacementCodeuiColor4ubVertex3fSUN`);
			bindFunc(glReplacementCodeuiColor4ubVertex3fvSUN, `glReplacementCodeuiColor4ubVertex3fvSUN`);
			bindFunc(glReplacementCodeuiNormal3fVertex3fSUN, `glReplacementCodeuiNormal3fVertex3fSUN`);
			bindFunc(glReplacementCodeuiNormal3fVertex3fvSUN, `glReplacementCodeuiNormal3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN, `glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN, `glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN, `glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN, `glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fVertex3fSUN, `glReplacementCodeuiTexCoord2fVertex3fSUN`);
			bindFunc(glReplacementCodeuiTexCoord2fVertex3fvSUN, `glReplacementCodeuiTexCoord2fVertex3fvSUN`);
			bindFunc(glReplacementCodeuiVertex3fSUN, `glReplacementCodeuiVertex3fSUN`);
			bindFunc(glReplacementCodeuiVertex3fvSUN, `glReplacementCodeuiVertex3fvSUN`);
			bindFunc(glTexCoord2fColor3fVertex3fSUN, `glTexCoord2fColor3fVertex3fSUN`);
			bindFunc(glTexCoord2fColor3fVertex3fvSUN, `glTexCoord2fColor3fVertex3fvSUN`);
			bindFunc(glTexCoord2fColor4fNormal3fVertex3fSUN, `glTexCoord2fColor4fNormal3fVertex3fSUN`);
			bindFunc(glTexCoord2fColor4fNormal3fVertex3fvSUN, `glTexCoord2fColor4fNormal3fVertex3fvSUN`);
			bindFunc(glTexCoord2fColor4ubVertex3fSUN, `glTexCoord2fColor4ubVertex3fSUN`);
			bindFunc(glTexCoord2fColor4ubVertex3fvSUN, `glTexCoord2fColor4ubVertex3fvSUN`);
			bindFunc(glTexCoord2fNormal3fVertex3fSUN, `glTexCoord2fNormal3fVertex3fSUN`);
			bindFunc(glTexCoord2fNormal3fVertex3fvSUN, `glTexCoord2fNormal3fVertex3fvSUN`);
			bindFunc(glTexCoord2fVertex3fSUN, `glTexCoord2fVertex3fSUN`);
			bindFunc(glTexCoord2fVertex3fvSUN, `glTexCoord2fVertex3fvSUN`);
			bindFunc(glTexCoord4fColor4fNormal3fVertex4fSUN, `glTexCoord4fColor4fNormal3fVertex4fSUN`);
			bindFunc(glTexCoord4fColor4fNormal3fVertex4fvSUN, `glTexCoord4fColor4fNormal3fVertex4fvSUN`);
			bindFunc(glTexCoord4fVertex4fSUN, `glTexCoord4fVertex4fSUN`);
			bindFunc(glTexCoord4fVertex4fvSUN, `glTexCoord4fVertex4fvSUN`);
		}
		// GL SUNX_constant_data
		static if (usingExt(`SUNX_constant_data`)) {
			bindFunc(glFinishTextureSUNX, `glFinishTextureSUNX`);
		}
	}
}
