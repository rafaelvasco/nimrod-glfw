# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

proc GetWaylandDisplay*(): pointer {.cdecl, importc: "glfwGetWaylandDisplay", dynlib: GlfwLib.}
proc GetWaylandMonitor*(monitor: Monitor): pointer {.cdecl, importc: "glfwGetWaylandMonitor", dynlib: GlfwLib.}
proc GetWaylandMonitor*(window: Window): pointer {.cdecl, importc: "glfwGetWaylandWindow", dynlib: GlfwLib.}
