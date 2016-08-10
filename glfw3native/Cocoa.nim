# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetCocoaMonitor*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetCocoaMonitor", dynlib: GlfwLib.}
proc GetCocoaWindow*(window: Window): pointer {.cdecl, importc: "glfwGetCocoaWindow", dynlib: GlfwLib.}
