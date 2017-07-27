# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw.3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetX11Display*(): pointer {.cdecl, importc: "glfwGetX11Display", dynlib: GlfwLib.}
proc GetX11Adapter*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetX11Adapter", dynlib: GlfwLib.}
proc GetX11Monitor*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetX11Monitor", dynlib: GlfwLib.}
proc GetX11Window*(window: Window): uint32 {.cdecl, importc: "glfwGetX11Window", dynlib: GlfwLib.}
