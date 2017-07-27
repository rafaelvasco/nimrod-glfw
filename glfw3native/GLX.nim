# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw.3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

when defined(GLFW_EXPOSE_NATIVE_GLX):
    proc GetGLXContext*(window: Window): pointer {.cdecl, importc: "glfwGetGLXContext", dynlib: GlfwLib.}
    proc GetGLXWindow*(window: Window): pointer {.cdecl, importc: "glfwGetGLXWindow", dynlib: GlfwLib.}
