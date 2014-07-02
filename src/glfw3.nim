# GLFW3 Bindings/Wrapper for Nimrod
# Author: Rafael Vasco


{.deadCodeElim: on.}

when defined(windows):
    const GlfwLib = "glfw3.dll"
elif defined(macosx):
    const GlfwLib = "libglfw3.dylib"
else:
    const GlfwLib = "libglfw.so.3"


# Constants:

# -------------------------------------------------------------------
# Version

const
    VERSION_MAJOR* = 3
    VERSION_MINOR* = 0
    VERSION_REVISION* = 4
    

# -------------------------------------------------------------------
# Key and Button Actions

const
    RELEASE* = 0
    PRESS* = 1
    REPEAT* = 2


# -------------------------------------------------------------------
# Keyboard Keys

const
    KEY_UNKNOWN* = - 1
    KEY_SPACE* = 32
    KEY_APOSTROPHE* = 39
    KEY_COMMA* = 44
    KEY_MINUS* = 45
    KEY_PERIOD* = 46
    KEY_SLASH* = 47
    KEY_0* = 48
    KEY_1* = 49
    KEY_2* = 50
    KEY_3* = 51
    KEY_4* = 52
    KEY_5* = 53
    KEY_6* = 54
    KEY_7* = 55
    KEY_8* = 56
    KEY_9* = 57
    KEY_SEMICOLON* = 59
    KEY_EQUAL* = 61
    KEY_A* = 65
    KEY_B* = 66
    KEY_C* = 67
    KEY_D* = 68
    KEY_E* = 69
    KEY_F* = 70
    KEY_G* = 71
    KEY_H* = 72
    KEY_I* = 73
    KEY_J* = 74
    KEY_K* = 75
    KEY_L* = 76
    KEY_M* = 77
    KEY_N* = 78
    KEY_O* = 79
    KEY_P* = 80
    KEY_Q* = 81
    KEY_R* = 82
    KEY_S* = 83
    KEY_T* = 84
    KEY_U* = 85
    KEY_V* = 86
    KEY_W* = 87
    KEY_X* = 88
    KEY_Y* = 89
    KEY_Z* = 90
    KEY_LEFT_BRACKET* = 91
    KEY_BACKSLASH* = 92
    KEY_RIGHT_BRACKET* = 93
    KEY_GRAVE_ACCENT* = 96
    KEY_WORLD_1* = 161
    KEY_WORLD_2* = 162
    KEY_ESCAPE* = 256
    KEY_ENTER* = 257
    KEY_TAB* = 258
    KEY_BACKSPACE* = 259
    KEY_INSERT* = 260
    KEY_DELETE* = 261
    KEY_RIGHT* = 262
    KEY_LEFT* = 263
    KEY_DOWN* = 264
    KEY_UP* = 265
    KEY_PAGE_UP* = 266
    KEY_PAGE_DOWN* = 267
    KEY_HOME* = 268
    KEY_END* = 269
    KEY_CAPS_LOCK* = 280
    KEY_SCROLL_LOCK* = 281
    KEY_NUM_LOCK* = 282
    KEY_PRINT_SCREEN* = 283
    KEY_PAUSE* = 284
    KEY_F1* = 290
    KEY_F2* = 291
    KEY_F3* = 292
    KEY_F4* = 293
    KEY_F5* = 294
    KEY_F6* = 295
    KEY_F7* = 296
    KEY_F8* = 297
    KEY_F9* = 298
    KEY_F10* = 299
    KEY_F11* = 300
    KEY_F12* = 301
    KEY_F13* = 302
    KEY_F14* = 303
    KEY_F15* = 304
    KEY_F16* = 305
    KEY_F17* = 306
    KEY_F18* = 307
    KEY_F19* = 308
    KEY_F20* = 309
    KEY_F21* = 310
    KEY_F22* = 311
    KEY_F23* = 312
    KEY_F24* = 313
    KEY_F25* = 314
    KEY_KP_0* = 320
    KEY_KP_1* = 321
    KEY_KP_2* = 322
    KEY_KP_3* = 323
    KEY_KP_4* = 324
    KEY_KP_5* = 325
    KEY_KP_6* = 326
    KEY_KP_7* = 327
    KEY_KP_8* = 328
    KEY_KP_9* = 329
    KEY_KP_DECIMAL* = 330
    KEY_KP_DIVIDE* = 331
    KEY_KP_MULTIPLY* = 332
    KEY_KP_SUBTRACT* = 333
    KEY_KP_ADD* = 334
    KEY_KP_ENTER* = 335
    KEY_KP_EQUAL* = 336
    KEY_LEFT_SHIFT* = 340
    KEY_LEFT_CONTROL* = 341
    KEY_LEFT_ALT* = 342
    KEY_LEFT_SUPER* = 343
    KEY_RIGHT_SHIFT* = 344
    KEY_RIGHT_CONTROL* = 345
    KEY_RIGHT_ALT* = 346
    KEY_RIGHT_SUPER* = 347
    KEY_MENU* = 348
    KEY_LAST* = KEY_MENU

# ---------------------------------------------------------------------
# Modifier Key Flags
const
    MOD_SHIFT* = 0x0001
    MOD_CONTROL* = 0x0002
    MOD_ALT* = 0x0004
    MOD_SUPER* = 0x0008

# ---------------------------------------------------------------------
# Mouse Buttons

const
    MOUSE_BUTTON_1* = 0
    MOUSE_BUTTON_2* = 1
    MOUSE_BUTTON_3* = 2
    MOUSE_BUTTON_4* = 3
    MOUSE_BUTTON_5* = 4
    MOUSE_BUTTON_6* = 5
    MOUSE_BUTTON_7* = 6
    MOUSE_BUTTON_8* = 7
    MOUSE_BUTTON_LAST* = MOUSE_BUTTON_8
    MOUSE_BUTTON_LEFT* = MOUSE_BUTTON_1
    MOUSE_BUTTON_RIGHT* = MOUSE_BUTTON_2
    MOUSE_BUTTON_MIDDLE* = MOUSE_BUTTON_3

#--------------------------------------------------------------------
# Joysticks

const
    JOYSTICK_1* = 0
    JOYSTICK_2* = 1
    JOYSTICK_3* = 2
    JOYSTICK_4* = 3
    JOYSTICK_5* = 4
    JOYSTICK_6* = 5
    JOYSTICK_7* = 6
    JOYSTICK_8* = 7
    JOYSTICK_9* = 8
    JOYSTICK_10* = 9
    JOYSTICK_11* = 10
    JOYSTICK_12* = 11
    JOYSTICK_13* = 12
    JOYSTICK_14* = 13
    JOYSTICK_15* = 14
    JOYSTICK_16* = 15
    JOYSTICK_LAST* = JOYSTICK_16

# -------------------------------------------------------------------
# Error Codes

const
    NOT_INITIALIZED* = 0x00010001
    NO_CURRENT_CONTEXT* = 0x00010002
    INVALID_ENUM* = 0x00010003
    INVALID_VALUE* = 0x00010004
    OUT_OF_MEMORY* = 0x00010005
    API_UNAVAILABLE* = 0x00010006
    VERSION_UNAVAILABLE* = 0x00010007
    PLATFORM_ERROR* = 0x00010008
    FORMAT_UNAVAILABLE* = 0x00010009


# -------------------------------------------------------------------
# Window Attributes

const
    FOCUSED* = 0x00020001
    ICONIFIED* = 0x00020002
    RESIZABLE* = 0x00020003
    VISIBLE* = 0x00020004
    DECORATED* = 0x00020005
    RED_BITS* = 0x00021001
    GREEN_BITS* = 0x00021002
    BLUE_BITS* = 0x00021003
    ALPHA_BITS* = 0x00021004
    DEPTH_BITS* = 0x00021005
    STENCIL_BITS* = 0x00021006
    ACCUM_RED_BITS* = 0x00021007
    ACCUM_GREEN_BITS* = 0x00021008
    ACCUM_BLUE_BITS* = 0x00021009
    ACCUM_ALPHA_BITS* = 0x0002100A
    AUX_BUFFERS* = 0x0002100B
    STEREO* = 0x0002100C
    SAMPLES* = 0x0002100D
    SRGB_CAPABLE* = 0x0002100E
    REFRESH_RATE* = 0x0002100F
    CLIENT_API* = 0x00022001
    CONTEXT_VERSION_MAJOR* = 0x00022002
    CONTEXT_VERSION_MINOR* = 0x00022003
    CONTEXT_REVISION* = 0x00022004
    CONTEXT_ROBUSTNESS* = 0x00022005
    OPENGL_FORWARD_COMPAT* = 0x00022006
    OPENGL_DEBUG_CONTEXT* = 0x00022007
    OPENGL_PROFILE* = 0x00022008
    OPENGL_API* = 0x00030001
    OPENGL_ES_API* = 0x00030002
    NO_ROBUSTNESS* = 0
    NO_RESET_NOTIFICATION* = 0x00031001
    LOSE_CONTEXT_ON_RESET* = 0x00031002
    OPENGL_ANY_PROFILE* = 0
    OPENGL_CORE_PROFILE* = 0x00032001
    OPENGL_COMPAT_PROFILE* = 0x00032002
    CURSOR* = 0x00033001
    STICKY_KEYS* = 0x00033002
    STICKY_MOUSE_BUTTONS* = 0x00033003
    CURSOR_NORMAL* = 0x00034001
    CURSOR_HIDDEN* = 0x00034002
    CURSOR_DISABLED* = 0x00034003
    CONNECTED* = 0x00040001
    DISCONNECTED* = 0x00040002


# -------------------------------------------------------------------
# Types:

type
    GLProc* = proc() {.cdecl.}


type
    Window* = pointer
    Monitor* = pointer

type
    ErrorFun* = proc (errorCode: cint; description: cstring) {.cdecl.}
    WindowPosFun = proc (window: Window; x: cint; y: cint) {.cdecl.}
    WindowSizeFun* = proc (window: Window; width: cint; height: cint) {.cdecl.}
    WindowCloseFun* = proc (window: Window) {.cdecl.}
    WindowRefreshFun* = proc (window: Window) {.cdecl.}
    WindowFocusFun* = proc (window: Window; focused: cint) {.cdecl.}
    WindowIconifyFun* = proc (window: Window; iconified: cint) {.cdecl.}
    FrameBufferSizeFun* = proc (window: Window; width: cint; height: cint) {.cdecl.}
    MouseButtonFun* = proc (window: Window; button: cint; action: cint; modifiers: cint) {.cdecl.}
    CursorPosFun* = proc (window: Window; x: cdouble; y: cdouble) {.cdecl.}
    CursorEnterFun* = proc (window: Window; entered: cint) {.cdecl.}
    ScrollFun* = proc (window: Window; xoffset: cdouble; yoffset: cdouble) {.cdecl.}
    KeyFun* = proc (window: Window; key: cint; scancode: cint; action: cint; modifiers: cint) {.cdecl.}
    CharFun* = proc (window: Window; character: cuint) {.cdecl.}
    MonitorFun* = proc (monitor: Monitor; connected: cint) {.cdecl.}


type
    VidMode* {.pure, final.} = object
        width*, height*, redBits*, greenBits*, blueBits*, refreshRate*: cint

type 
    GammaRamp* {.pure, final.} = object
        red*, green*,blue*: ptr cushort
        size*: cuint


# -------------------------------------------------------------------
# Methods

proc Init*(): cint {.cdecl, importc: "glfwInit", dynlib: GlfwLib.}


proc Terminate*() {.cdecl, importc: "glfwTerminate", dynlib: GlfwLib.}


proc GetVersion*(major: ptr cint; minor: ptr cint; rev: ptr cint) {.cdecl, importc: "glfwGetVersion", dynlib: GlfwLib.}


proc GetVersionString*(): cstring {.cdecl, importc: "glfwGetVersionString",dynlib: GlfwLib.}


proc SetErrorCallback*(cbfun: ErrorFun): ErrorFun {.cdecl, importc: "glfwSetErrorCallback", dynlib: GlfwLib.}


proc GetMonitors*(count: ptr cint): ptr Monitor {.cdecl, importc: "glfwGetMonitors", dynlib: GlfwLib.}


proc GetPrimaryMonitor*(): Monitor {.cdecl, importc: "glfwGetPrimaryMonitor", dynlib: GlfwLib.}


proc GetMonitorPos*(monitor: Monitor; xpos: ptr cint; ypos: ptr cint) {.cdecl, importc: "glfwGetMonitorPos", dynlib: GlfwLib.}


proc GetMonitorPhysicalSize*(monitor: Monitor; width: ptr cint;height: ptr cint) {.cdecl, importc: "glfwGetMonitorPhysicalSize", dynlib: GlfwLib.}


proc GetMonitorName*(monitor: Monitor): cstring {.cdecl, importc: "glfwGetMonitorName", dynlib: GlfwLib.}


proc SetMonitorCallback*(cbfun: MonitorFun): MonitorFun {.cdecl, importc: "glfwSetMonitorCallback", dynlib: GlfwLib.}


proc GetVideoModes*(monitor: Monitor; count: ptr cint): ptr VidMode {.cdecl, importc: "glfwGetVideoModes", dynlib: GlfwLib.}


proc GetVideoMode*(monitor: Monitor): ptr VidMode {.cdecl, importc: "glfwGetVideoMode", dynlib: GlfwLib.}


proc SetGamma*(monitor: Monitor; gamma: cfloat) {.cdecl, importc: "glfwSetGamma", dynlib: GlfwLib.}


proc GetGammaRamp*(monitor: Monitor): ptr GammaRamp {.cdecl, importc: "glfwGetGammaRamp", dynlib: GlfwLib.}


proc SetGammaRamp*(monitor: Monitor; ramp: ptr GammaRamp) {.cdecl, importc: "glfwSetGammaRamp", dynlib: GlfwLib.}


proc DefaultWindowHints*() {.cdecl, importc: "glfwDefaultWindowHints", dynlib: GlfwLib.}


proc WindowHint*(target: cint; hint: cint) {.cdecl, importc: "glfwWindowHint", dynlib: GlfwLib.}


proc CreateWindow*(width: cint; height: cint; title: cstring; monitor: Monitor; share: Window): Window{.cdecl, importc: "glfwCreateWindow", dynlib: GlfwLib.}


proc DestroyWindow*(window: Window) {.cdecl, importc: "glfwDestroyWindow", dynlib: GlfwLib.}


proc WindowShouldClose*(window: Window): cint {.cdecl, importc: "glfwWindowShouldClose", dynlib: GlfwLib.}


proc SetWindowShouldClose*(window: Window; value: cint){.cdecl, importc: "glfwSetWindowShouldClose", dynlib: GlfwLib.}


proc SetWindowTitle*(window: Window; title: cstring) {.cdecl, importc: "glfwSetWindowTitle", dynlib: GlfwLib.}


proc GetWindowPos*(window: Window; xpos: ptr cint; ypos: ptr cint) {.cdecl, importc: "glfwGetWindowPos", dynlib: GlfwLib.}


proc SetWindowPos*(window: Window; xpos: cint; ypos: cint) {.cdecl, importc: "glfwSetWindowPos", dynlib: GlfwLib.}


proc GetWindowSize*(window: Window; width: ptr cint; height: ptr cint){.cdecl, importc: "glfwGetWindowSize", dynlib: GlfwLib.}


proc SetWindowSize*(window: Window; width: cint; height: cint) {.cdecl, importc: "glfwSetWindowSize", dynlib: GlfwLib.}


proc GetFramebufferSize*(window: Window; width: ptr cint; height: ptr cint){.cdecl, importc: "glfwGetFramebufferSize", dynlib: GlfwLib.}


proc IconifyWindow*(window: Window) {.cdecl, importc: "glfwIconifyWindow", dynlib: GlfwLib.}


proc RestoreWindow*(window: Window) {.cdecl, importc: "glfwRestoreWindow", dynlib: GlfwLib.}


proc ShowWindow*(window: Window) {.cdecl, importc: "glfwShowWindow", dynlib: GlfwLib.}


proc HideWindow*(window: Window) {.cdecl, importc: "glfwHideWindow", dynlib: GlfwLib.}


proc GetWindowMonitor*(window: Window): Monitor {.cdecl, importc: "glfwGetWindowMonitor", dynlib: GlfwLib.}


proc GetWindowAttrib*(window: Window; attrib: cint): cint {.cdecl, importc: "glfwGetWindowAttrib", dynlib: GlfwLib.}


proc SetWindowUserPointer*(window: Window; pointer: pointer) {.cdecl, importc: "glfwSetWindowUserPointer", dynlib: GlfwLib.}


proc GetWindowUserPointer*(window: Window): pointer {.cdecl, importc: "glfwGetWindowUserPointer", dynlib: GlfwLib.}


proc SetWindowPosCallback*(window: Window; cbfun: WindowPosFun): WindowPosFun {.cdecl, importc: "glfwSetWindowPosCallback", dynlib: GlfwLib.}


proc SetWindowSizeCallback*(window: Window; cbfun: WindowSizeFun): WindowSizeFun {.cdecl, importc: "glfwSetWindowSizeCallback", dynlib: GlfwLib.}


proc SetWindowCloseCallback*(window: Window; cbfun: WindowCloseFun): WindowCloseFun {.cdecl, importc: "glfwSetWindowCloseCallback", dynlib: GlfwLib.}


proc SetWindowRefreshCallback*(window: Window;cbfun: Windowrefreshfun): Windowrefreshfun {.cdecl, importc: "glfwSetWindowRefreshCallback", dynlib: GlfwLib.}


proc SetWindowFocusCallback*(window: Window; cbfun: WindowFocusFun): WindowFocusFun {.cdecl, importc: "glfwSetWindowFocusCallback", dynlib: GlfwLib.}


proc SetWindowIconifyCallback*(window: Window; cbfun: WindowIconifyFun): WindowIconifyFun {.cdecl, importc: "glfwSetWindowIconifyCallback", dynlib: GlfwLib.}


proc SetFramebufferSizeCallback*(window: Window; cbfun: FrameBufferSizeFun): FrameBufferSizeFun {.cdecl, importc: "glfwSetFramebufferSizeCallback", dynlib: GlfwLib.}


proc PollEvents*() {.cdecl, importc: "glfwPollEvents", dynlib: GlfwLib.}


proc WaitEvents*() {.cdecl, importc: "glfwWaitEvents", dynlib: GlfwLib.}


proc GetInputMode*(window: Window; mode: cint): cint {.cdecl, importc: "glfwGetInputMode", dynlib: GlfwLib.}


proc SetInputMode*(window: Window; mode: cint; value: cint) {.cdecl, importc: "glfwSetInputMode", dynlib: GlfwLib.}


proc GetKey*(window: Window; key: cint): cint {.cdecl, importc: "glfwGetKey", dynlib: GlfwLib.}


proc GetMouseButton*(window: Window; button: cint): cint {.cdecl, importc: "glfwGetMouseButton", dynlib: GlfwLib.}


proc GetCursorPos*(window: Window; xpos: ptr cdouble; ypos: ptr cdouble){.cdecl, importc: "glfwGetCursorPos", dynlib: GlfwLib.}


proc SetCursorPos*(window: Window; xpos: cdouble; ypos: cdouble) {.cdecl, importc: "glfwSetCursorPos", dynlib: GlfwLib.}


proc SetKeyCallback*(window: Window; cbfun: KeyFun): KeyFun {.cdecl, importc: "glfwSetKeyCallback", dynlib: GlfwLib.}


proc SetCharCallback*(window: Window; cbfun: CharFun): CharFun {.cdecl, importc: "glfwSetCharCallback", dynlib: GlfwLib.}


proc SetMouseButtonCallback*(window: Window; cbfun: MouseButtonFun): MouseButtonFun {.cdecl, importc: "glfwSetMouseButtonCallback", dynlib: GlfwLib.}


proc SetCursorPosCallback*(window: Window; cbfun: CursorPosFun): CursorPosFun {.cdecl, importc: "glfwSetCursorPosCallback", dynlib: GlfwLib.}


proc SetCursorEnterCallback*(window: Window; cbfun: CursorEnterFun): CursorEnterFun {.cdecl, importc: "glfwSetCursorEnterCallback", dynlib: GlfwLib.}


proc SetScrollCallback*(window: Window; cbfun: ScrollFun): ScrollFun {.cdecl, importc: "glfwSetScrollCallback", dynlib: GlfwLib.}


proc JoystickPresent*(joy: cint): cint {.cdecl, importc: "glfwJoystickPresent", dynlib: GlfwLib.}


proc GetJoystickAxes*(joy: cint; count: ptr cint): ptr cfloat {.cdecl,importc: "glfwGetJoystickAxes", dynlib: GlfwLib.}


proc GetJoystickButtons*(joy: cint; count: ptr cint): ptr cuchar {.cdecl,importc: "glfwGetJoystickButtons", dynlib: GlfwLib.}


proc GetJoystickName*(joy: cint): cstring {.cdecl,importc: "glfwGetJoystickName", dynlib: GlfwLib.}


proc SetClipboardString*(window: Window; string: cstring) {.cdecl, importc: "glfwSetClipboardString", dynlib: GlfwLib.}


proc GetClipboardString*(window: Window): cstring {.cdecl,importc: "glfwGetClipboardString", dynlib: GlfwLib.}


proc GetTime*(): cdouble {.cdecl, importc: "glfwGetTime", dynlib: GlfwLib.}


proc SetTime*(time: cdouble) {.cdecl, importc: "glfwSetTime", dynlib: GlfwLib.}


proc MakeContextCurrent*(window: Window) {.cdecl,importc: "glfwMakeContextCurrent", dynlib: GlfwLib.}


proc GetCurrentContext*(): Window {.cdecl,importc: "glfwGetCurrentContext", dynlib: GlfwLib.}


proc SwapBuffers*(window: Window) {.cdecl, importc: "glfwSwapBuffers", dynlib: GlfwLib.}


proc SwapInterval*(interval: cint) {.cdecl, importc: "glfwSwapInterval", dynlib: GlfwLib.}


proc ExtensionSupported*(extension: cstring): cint {.cdecl, importc: "glfwExtensionSupported", dynlib: GlfwLib.}


proc GetProcAddress*(procname: cstring): GLProc {.cdecl, importc: "glfwGetProcAddress", dynlib: GlfwLib.}