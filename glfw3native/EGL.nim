# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetEGLDisplay(): pointer {.cdecl, importc: "glfwGetEGLDisplay", dynlib: GlfwLib.}
proc GetEGLContext(window: Window): pointer {.cdecl, importc: "glfwGetEGLDisplay", dynlib: GlfwLib.}
proc GetEGLSurface(window: Window): pointer {.cdecl, importc: "glfwGetEGLSurface", dynlib: GlfwLib.}
