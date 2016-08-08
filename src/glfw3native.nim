# GLFW3native Bindings/Wrapper for Nimrod
# Authors: Rafael Vasco, Cory Golden

import glfw3

{.deadCodeElim: on.}

when defined(Windows):
    const GlfwLib = "glfw3.dll"
elif defined(MacOSX):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"

when defined(GLFW_EXPOSE_NATIVE_X11):
    proc GetX11Display*(): pointer {.cdecl, importc: "glfwGetX11Display", dynlib: GlfwLib.}
    proc GetX11Adapter*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetX11Adapter", dynlib: GlfwLib.}
    proc GetX11Monitor*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetX11Monitor", dynlib: GlfwLib.}
    proc GetX11Window*(window: Window): uint32 {.cdecl, importc: "glfwGetX11Window", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_WAYLAND):
    proc GetWaylandDisplay*(): pointer {.cdecl, importc: "glfwGetWaylandDisplay", dynlib: GlfwLib.}
    proc GetWaylandMonitor*(monitor: Monitor): pointer {.cdecl, importc: "glfwGetWaylandMonitor", dynlib: GlfwLib.}
    proc GetWaylandMonitor*(window: Window): pointer {.cdecl, importc: "glfwGetWaylandWindow", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_MIR):
    proc GetMirDisplay*(): pointer {.cdecl, importc: "glfwGetMirDisplay", dynlib: GlfwLib.}
    proc GetMirMonitor*(monitor: Monitor): cint {.cdecl, importc: "glfwGetMirMonitor", dynlib: GlfwLib.}
    proc GetMirWindow*(window: Window): pointer {.cdecl, importc: "glfwGetMirWindow", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_COCOA):
    proc GetCocoaMonitor*(monitor: Monitor): uint32 {.cdecl, importc: "glfwGetCocoaMonitor", dynlib: GlfwLib.}
    proc GetCocoaWindow*(window: Window): pointer {.cdecl, importc: "glfwGetCocoaWindow", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_WIN32):
    proc GetWin32Adapter*(monitor: Monitor): cstring {.cdecl, importc: "glfwGetWin32Adapter", dynlib: GlfwLib.}
    proc GetWin32Monitor*(monitor: Monitor): cstring {.cdecl, importc: "glfwGetWin32Monitor", dynlib: GlfwLib.}
    proc GetWin32Window*(window: Window): pointer {.cdecl, importc: "glfwGetWin32Window", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_WGL):
    proc GetWGLContext*(window: Window): pointer {.cdecl, importc: "glfwGetWGLContext", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_NSGL):
    proc GetNSGLContext*(window: Window): pointer {.cdecl, importc: "glfwGetNSGLContext", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_GLX):
    proc GetGLXContext*(window: Window): pointer {.cdecl, importc: "glfwGetGLXContext", dynlib: GlfwLib.}
    proc GetGLXWindow*(window: Window): pointer {.cdecl, importc: "glfwGetGLXWindow", dynlib: GlfwLib.}

when defined(GLFW_EXPOSE_NATIVE_EGL):
    proc GetEGLDisplay(): pointer {.cdecl, importc: "glfwGetEGLDisplay", dynlib: GlfwLib.}
    proc GetEGLContext(window: Window): pointer {.cdecl, importc: "glfwGetEGLDisplay", dynlib: GlfwLib.}
    proc GetEGLSurface(window: Window): pointer {.cdecl, importc: "glfwGetEGLSurface", dynlib: GlfwLib.}
