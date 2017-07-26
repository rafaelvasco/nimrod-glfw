# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw.3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetWGLContext*(window: Window): pointer {.cdecl, importc: "glfwGetWGLContext", dynlib: GlfwLib.}
