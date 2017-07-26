# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw.3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetMirDisplay*(): pointer {.cdecl, importc: "glfwGetMirDisplay", dynlib: GlfwLib.}
proc GetMirMonitor*(monitor: Monitor): cint {.cdecl, importc: "glfwGetMirMonitor", dynlib: GlfwLib.}
proc GetMirWindow*(window: Window): pointer {.cdecl, importc: "glfwGetMirWindow", dynlib: GlfwLib.}
