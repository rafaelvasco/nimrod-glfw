# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3


when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetWin32Adapter*(monitor: Monitor): cstring {.cdecl, importc: "glfwGetWin32Adapter", dynlib: GlfwLib.}
proc GetWin32Monitor*(monitor: Monitor): cstring {.cdecl, importc: "glfwGetWin32Monitor", dynlib: GlfwLib.}
proc GetWin32Window*(window: Window): pointer {.cdecl, importc: "glfwGetWin32Window", dynlib: GlfwLib.}
