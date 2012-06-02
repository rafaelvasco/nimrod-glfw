##==============================================================================
## GLFW3 Binding for Nimrod
## Author: Rafael Vasco
## Version: 1.0
##==============================================================================



{.deadCodeElim: on.}

when defined(windows):
    const LibName = "glfw.dll"
elif defined(macosx):
    const LibName = "libglfw.dylib"
else:
    const LibName = "libglfw.so"



##------------------------------------------------------------------------------
## TYPES 
##------------------------------------------------------------------------------

const
    GLFW_VERSION_MAJOR* = 2'i8
    GLFW_VERSION_MINOR* = 7'i8
    GLFW_VERSION_REVISION* = 5'i8
    GLFW_RELEASE* = 0'i8
    GLFW_PRESS* = 1'i8


const
    GLFW_KEY_UNKNOWN* =          -1
    GLFW_KEY_SPACE* =            32
    GLFW_KEY_SPECIAL* =          256
    GLFW_KEY_ESC* =              GLFW_KEY_SPECIAL+1
    GLFW_KEY_F1* =              GLFW_KEY_SPECIAL+2
    GLFW_KEY_F2* =              GLFW_KEY_SPECIAL+3
    GLFW_KEY_F3* =              GLFW_KEY_SPECIAL+4
    GLFW_KEY_F4* =              GLFW_KEY_SPECIAL+5
    GLFW_KEY_F5* =              GLFW_KEY_SPECIAL+6
    GLFW_KEY_F6* =              GLFW_KEY_SPECIAL+7
    GLFW_KEY_F7* =              GLFW_KEY_SPECIAL+8
    GLFW_KEY_F8* =              GLFW_KEY_SPECIAL+9
    GLFW_KEY_F9* =              GLFW_KEY_SPECIAL+10
    GLFW_KEY_F10* =             GLFW_KEY_SPECIAL+11
    GLFW_KEY_F11* =             GLFW_KEY_SPECIAL+12
    GLFW_KEY_F12* =             GLFW_KEY_SPECIAL+13
    GLFW_KEY_F13* =             GLFW_KEY_SPECIAL+14
    GLFW_KEY_F14* =             GLFW_KEY_SPECIAL+15
    GLFW_KEY_F15* =             GLFW_KEY_SPECIAL+16
    GLFW_KEY_F16* =             GLFW_KEY_SPECIAL+17
    GLFW_KEY_F17* =             GLFW_KEY_SPECIAL+18
    GLFW_KEY_F18* =             GLFW_KEY_SPECIAL+19
    GLFW_KEY_F19* =             GLFW_KEY_SPECIAL+20
    GLFW_KEY_F20* =             GLFW_KEY_SPECIAL+21
    GLFW_KEY_F21* =             GLFW_KEY_SPECIAL+22
    GLFW_KEY_F22* =             GLFW_KEY_SPECIAL+23
    GLFW_KEY_F23* =             GLFW_KEY_SPECIAL+24
    GLFW_KEY_F24* =             GLFW_KEY_SPECIAL+25
    GLFW_KEY_F25* =             GLFW_KEY_SPECIAL+26
    GLFW_KEY_UP* =              GLFW_KEY_SPECIAL+27
    GLFW_KEY_DOWN* =            GLFW_KEY_SPECIAL+28
    GLFW_KEY_LEFT* =            GLFW_KEY_SPECIAL+29
    GLFW_KEY_RIGHT* =           GLFW_KEY_SPECIAL+30
    GLFW_KEY_LSHIFT* =          GLFW_KEY_SPECIAL+31
    GLFW_KEY_RSHIFT* =          GLFW_KEY_SPECIAL+32
    GLFW_KEY_LCTRL* =           GLFW_KEY_SPECIAL+33
    GLFW_KEY_RCTRL* =           GLFW_KEY_SPECIAL+34
    GLFW_KEY_LALT* =            GLFW_KEY_SPECIAL+35
    GLFW_KEY_RALT* =            GLFW_KEY_SPECIAL+36
    GLFW_KEY_TAB* =             GLFW_KEY_SPECIAL+37
    GLFW_KEY_ENTER* =           GLFW_KEY_SPECIAL+38
    GLFW_KEY_BACKSPACE* =       GLFW_KEY_SPECIAL+39
    GLFW_KEY_INSERT* =          GLFW_KEY_SPECIAL+40
    GLFW_KEY_DEL* =             GLFW_KEY_SPECIAL+41
    GLFW_KEY_PAGEUP* =          GLFW_KEY_SPECIAL+42
    GLFW_KEY_PAGEDOWN* =        GLFW_KEY_SPECIAL+43
    GLFW_KEY_HOME* =            GLFW_KEY_SPECIAL+44
    GLFW_KEY_END* =             GLFW_KEY_SPECIAL+45
    GLFW_KEY_KP_0* =            GLFW_KEY_SPECIAL+46
    GLFW_KEY_KP_1* =            GLFW_KEY_SPECIAL+47
    GLFW_KEY_KP_2* =            GLFW_KEY_SPECIAL+48
    GLFW_KEY_KP_3* =            GLFW_KEY_SPECIAL+49
    GLFW_KEY_KP_4* =            GLFW_KEY_SPECIAL+50
    GLFW_KEY_KP_5* =            GLFW_KEY_SPECIAL+51
    GLFW_KEY_KP_6* =            GLFW_KEY_SPECIAL+52
    GLFW_KEY_KP_7* =            GLFW_KEY_SPECIAL+53
    GLFW_KEY_KP_8* =            GLFW_KEY_SPECIAL+54
    GLFW_KEY_KP_9* =            GLFW_KEY_SPECIAL+55
    GLFW_KEY_KP_DIVIDE* =       GLFW_KEY_SPECIAL+56
    GLFW_KEY_KP_MULTIPLY* =     GLFW_KEY_SPECIAL+57
    GLFW_KEY_KP_SUBTRACT* =     GLFW_KEY_SPECIAL+58
    GLFW_KEY_KP_ADD* =          GLFW_KEY_SPECIAL+59
    GLFW_KEY_KP_DECIMAL* =      GLFW_KEY_SPECIAL+60
    GLFW_KEY_KP_EQUAL* =        GLFW_KEY_SPECIAL+61
    GLFW_KEY_KP_ENTER* =        GLFW_KEY_SPECIAL+62
    GLFW_KEY_KP_NUM_LOCK* =     GLFW_KEY_SPECIAL+63
    GLFW_KEY_CAPS_LOCK* =       GLFW_KEY_SPECIAL+64
    GLFW_KEY_SCROLL_LOCK* =     GLFW_KEY_SPECIAL+65
    GLFW_KEY_PAUSE* =           GLFW_KEY_SPECIAL+66
    GLFW_KEY_LSUPER* =          GLFW_KEY_SPECIAL+67
    GLFW_KEY_RSUPER* =          GLFW_KEY_SPECIAL+68
    GLFW_KEY_MENU* =            GLFW_KEY_SPECIAL+69
    GLFW_KEY_LAST* =            GLFW_KEY_MENU


const
    GLFW_MOUSE_BUTTON_1* =     0
    GLFW_MOUSE_BUTTON_2* =      1
    GLFW_MOUSE_BUTTON_3* =      2
    GLFW_MOUSE_BUTTON_4* =      3
    GLFW_MOUSE_BUTTON_5* =      4
    GLFW_MOUSE_BUTTON_6* =      5
    GLFW_MOUSE_BUTTON_7* =      6
    GLFW_MOUSE_BUTTON_8* =      7
    GLFW_MOUSE_BUTTON_LAST* =   GLFW_MOUSE_BUTTON_8
    GLFW_MOUSE_BUTTON_LEFT* =   GLFW_MOUSE_BUTTON_1
    GLFW_MOUSE_BUTTON_RIGHT* =  GLFW_MOUSE_BUTTON_2
    GLFW_MOUSE_BUTTON_MIDDLE* = GLFW_MOUSE_BUTTON_3

const
    GLFW_JOYSTICK_1* =         0
    GLFW_JOYSTICK_2* =         1
    GLFW_JOYSTICK_3* =         2
    GLFW_JOYSTICK_4* =         3
    GLFW_JOYSTICK_5* =         4
    GLFW_JOYSTICK_6* =         5
    GLFW_JOYSTICK_7* =         6
    GLFW_JOYSTICK_8* =         7
    GLFW_JOYSTICK_9* =         8
    GLFW_JOYSTICK_10* =        9
    GLFW_JOYSTICK_11* =        10
    GLFW_JOYSTICK_12* =        11
    GLFW_JOYSTICK_13* =        12
    GLFW_JOYSTICK_14* =        13
    GLFW_JOYSTICK_15* =        14
    GLFW_JOYSTICK_16* =        15
    GLFW_JOYSTICK_LAST* =      GLFW_JOYSTICK_16



const
    GLFW_WINDOW* =                  0x00010001
    GLFW_FULLSCREEN* =              0x00010002
    GLFW_OPENED* =                  0x00020001
    GLFW_ACTIVE* =                  0x00020002
    GLFW_ICONIFIED* =               0x00020003
    GLFW_ACCELERATED* =             0x00020004
    GLFW_RED_BITS* =                0x00020005
    GLFW_GREEN_BITS* =              0x00020006
    GLFW_BLUE_BITS* =               0x00020007
    GLFW_ALPHA_BITS* =              0x00020008
    GLFW_DEPTH_BITS* =              0x00020009
    GLFW_STENCIL_BITS* =            0x0002000A
    GLFW_REFRESH_RATE* =            0x0002000B
    GLFW_ACCUM_RED_BITS* =          0x0002000C
    GLFW_ACCUM_GREEN_BITS* =        0x0002000D
    GLFW_ACCUM_BLUE_BITS* =         0x0002000E
    GLFW_ACCUM_ALPHA_BITS* =        0x0002000F
    GLFW_AUX_BUFFERS* =             0x00020010
    GLFW_STEREO* =                  0x00020011
    GLFW_WINDOW_NO_RESIZE* =        0x00020012
    GLFW_FSAA_SAMPLES* =            0x00020013
    GLFW_OPENGL_VERSION_MAJOR* =    0x00020014
    GLFW_OPENGL_VERSION_MINOR* =    0x00020015
    GLFW_OPENGL_FORWARD_COMPAT* =   0x00020016
    GLFW_OPENGL_DEBUG_CONTEXT* =    0x00020017
    GLFW_OPENGL_PROFILE* =          0x00020018
    GLFW_OPENGL_CORE_PROFILE* =     0x00050001
    GLFW_OPENGL_COMPAT_PROFILE* =   0x00050002
    GLFW_MOUSE_CURSOR* =            0x00030001
    GLFW_STICKY_KEYS* =             0x00030002
    GLFW_STICKY_MOUSE_BUTTONS* =    0x00030003
    GLFW_SYSTEM_KEYS* =             0x00030004
    GLFW_KEY_REPEAT* =              0x00030005
    GLFW_AUTO_POLL_EVENTS* =        0x00030006
    GLFW_WAIT* =                    0x00040001
    GLFW_NOWAIT* =                  0x00040002
    GLFW_PRESENT* =                 0x00050001
    GLFW_AXES* =                    0x00050002
    GLFW_BUTTONS* =                 0x00050003
    GLFW_NO_RESCALE_BIT* =          0x00000001 
    GLFW_ORIGIN_UL_BIT* =           0x00000002
    GLFW_BUILD_MIPMAPS_BIT* =       0x00000004 
    GLFW_ALPHA_MAP_BIT* =           0x00000008
    GLFW_INFINITY* =                100000.0


type
    PUChar* = ptr cchar   


    PVideoMode* = ptr TVideoMode
    TVideoMode*{.final.} = object
        width*: cint
        height*: cint
        redBits*: cint
        blueBits*: cint
        greenBits*: cint



    PImage* = ptr TImage
    TImage*{.final.} = object
        width*: cint
        height*: cint
        format*: cint
        bytesPerPixel*: cint 
        data*: PUChar



    TGlfwThread* = cint
    TGlfwMutex* = Pointer
    TGlfwCond* = Pointer


## ----- CALLBACKS -------------------------------------------------------------------------


type
    
    TWindowSizeCallback* = proc (width: cint, height: cint){.stdcall.}
    TWindowCloseCallback* = proc (): cint{.stdcall.}
    TWindowRefreshCallback* = proc (){.stdcall.}
    TMouseButtonCallback* = proc (a: cint, b: cint){.stdcall.}
    TMousePosCallback* = proc (a: cint, b: cint){.stdcall.}
    TMouseWheelCallback* = proc (a: cint){.stdcall.}
    TKeyCallback* = proc (a: cint, b: cint){.stdcall.}
    TCharCallback* = proc (a: cint, b: cint){.stdcall.}
    TThreadCallback* = proc (a: Pointer){.stdcall.}

## -----------------------------------------------------------------------------------------

##=====================================================================================
## PROCEDURES
##=====================================================================================


## ---------------------------------------------------------------------------
## GLFW initialization, termination and version querying
## ---------------------------------------------------------------------------
proc Init*(): cint{.stdcall, importc: "glfwInit", dynlib: LibName.}

proc Terminate*(){.stdcall, importc: "glfwTerminate", dynlib: LibName.}

proc GetVersion*(major: ptr cint, minor: ptr cint, rev: ptr cint){.stdcall, importc: "glfwGetVersion", dynlib: LibName.}


## ---------------------------------------------------------------------------

## Window handling
## --------------------------------------------------------------------------
proc OpenWindow*(width: cint, height: cint, redbits: cint, greenbits: cint, bluebits: cint, alphabits: cint, depthbits: cint, stencilbits: cint, mode: cint): cint {.stdcall, importc: "glfwOpenWindow", dynlib: LibName.}

proc OpenWindowHint*(target: cint, hint: cint){.stdcall, importc: "glfwOpenWindowHint", dynlib: LibName.}

proc CloseWindow*() {.stdcall, importc: "glfwCloseWindow", dynlib: LibName.}

proc SetWindowTitle*(title: cstring) {.stdcall, importc: "glfwSetWindowTitle", dynlib: LibName.}

proc GetWindowSize*(width: ptr cint, height: ptr cint) {.stdcall, importc: "glfwGetWindowSize", dynlib: LibName.}

proc SetWindowPos*(x: cint, y: cint) {.stdcall, importc: "glfwSetWindowPos", dynlib: LibName.}

proc IconifyWindow*() {.stdcall, importc: "glfwIconifyWindow", dynlib: LibName.}

proc RestoreWindow*() {.stdcall, importc: "glfwRestoreWindow", dynlib: LibName.}

proc SwapBuffers*() {.stdcall, importc: "glfwSwapBuffers", dynlib: LibName.}

proc SwapInterval*(interval: cint) {.stdcall, importc: "glfwSwapInterval", dynlib: LibName.}

proc GetWindowParam*(param: cint): cint {.stdcall, importc: "glfwGetWindowParam", dynlib: LibName.}

proc SetWindowSizeCallback*(callback: TWindowSizeCallback) {.stdcall, importc: "glfwSetWindowSizeCallback", dynlib: LibName.}

proc SetWindowCloseCallback*(callback: TWindowCloseCallback) {.stdcall, importc: "glfwSetWindowCloseCallback", dynlib: LibName.}

proc SetWindowRefreshCallback*(callback: TWindowRefreshCallback) {.stdcall, importc: "glfwSetWindowRefreshCallback", dynlib: LibName.}
## ---------------------------------------------------------------------------

## Video mode functions
## ---------------------------------------------------------------------------

proc GetVideoModes*(list: PVideoMode, maxcount: cint): cint {.stdcall, importc: "glfwGetVideoModes", dynlib: LibName.}

proc GetDesktopMode*(mode: PVideoMode) {.stdcall, importc: "glfwGetDesktopMode", dynlib: LibName.}

## ---------------------------------------------------------------------------

## Input handling

## ---------------------------------------------------------------------------

proc PollEvents*() {.stdcall, importc: "glfwPollEvents", dynlib: LibName.}

proc WaitEvents*() {.stdcall, importc: "glfwWaitEvents", dynlib: LibName.}

proc GetKey*(key: cint): cint {.stdcall, importc: "glfwGetKey", dynlib: LibName.}

proc GetMouseButton*(button: cint): cint {.stdcall, importc: "glfwGetMouseButton", dynlib: LibName.}

proc GetMousePos*(xpos: ptr cint, ypos: ptr cint) {.stdcall, importc: "glfwGetMousePos", dynlib: LibName.}

proc SetMousePos*(xpos: cint, ypos: cint) {.stdcall, importc: "glfwSetMousePos", dynlib: LibName.}

proc GetMouseWheel*(): cint {.stdcall, importc: "glfwGetMouseWheel", dynlib: LibName.}

proc SetMouseWheel*(pos: cint) {.stdcall, importc: "glfwSetMouseWheel", dynlib: LibName.}

proc SetKeyCallback*(callback: TKeyCallback) {.stdcall, importc: "glfwSetKeyCallback", dynlib: LibName.}

proc SetCharCallback*(callback: TCharCallback) {.stdcall, importc: "glfwSetCharCallback", dynlib: LibName.}

proc SetMouseButtonCallback*(callback: TMouseButtonCallback) {.stdcall, importc: "glfwSetMouseButtonCallback", dynlib: LibName.}

proc SetMousePosCallback*(callback: TMousePosCallback) {.stdcall, importc: "glfwSetMousePosCallback", dynlib: LibName.}

proc SetMouseWheelCallback*(callback: TMouseWheelCallback) {.stdcall, importc: "glfwSetMouseWheelCallback", dynlib: LibName.}

## ---------------------------------------------------------------------------

## Joystick input

## ---------------------------------------------------------------------------

proc GetJoystickParam*(joy: cint, param: cint): cint {.stdcall, importc: "glfwGetJoystickParam", dynlib: LibName.}

proc GetJoystickPos*(joy: cint, pos: ptr float, numaxes: cint): cint {.stdcall, importc: "glfwGetJoystickPos", dynlib: LibName.}

proc GetJoystickButtons*(joy: cint, buttons: PUChar, numButtons: cint): cint {.stdcall, importc: "glfwGetJoystickButtons", dynlib: LibName.}



## ---------------------------------------------------------------------------


## Time

## ---------------------------------------------------------------------------

proc GetTime*(): cdouble {.stdcall, importc: "glfwGetTime", dynlib: LibName.}

proc SetTime*(time: cdouble) {.stdcall, importc: "glfwSetTime", dynlib: LibName.}

proc Sleep*(time: cdouble) {.stdcall, importc: "glfwSleep", dynlib: LibName.}

## ---------------------------------------------------------------------------

## Extension support

## ---------------------------------------------------------------------------

proc ExtensionSupported*(extension: cstring): cint {.stdcall, importc: "glfwExtensionSupported", dynlib: LibName.}

proc GetProcAddress*(procname: cstring): Pointer {.stdcall, importc: "glfwGetProcAddress", dynlib: LibName.}

proc GetGLVersion*(major: ptr cint, minor: ptr cint, rev: ptr cint) {.stdcall, importc: "glfwGetGLVersion", dynlib: LibName.}

## ---------------------------------------------------------------------------

## Threading support

## ---------------------------------------------------------------------------

proc CreateThread*(fun: TThreadCallback, arg: Pointer): TGlfwThread {.stdcall, importc: "glfwCreateThread", dynlib: LibName.}

proc DestroyThread*(thread: TGlfwThread) {.stdcall, importc: "glfwDestroyThread", dynlib: LibName.}

proc WaitThread*(id: TGlfwThread, waitMode: cint): cint {.stdcall, importc: "glfwWaitThread", dynlib: LibName.}

proc GetThreadID*(): TGlfwThread {.stdcall, importc: "glfwGetThreadID", dynlib: LibName.}

proc CreateMutex*(): TGlfwMutex {.stdcall, importc: "glfwCreateMutex", dynlib: LibName.}

proc DestroyMutex*(mutexId: TGlfwMutex) {.stdcall, importc: "glfwDestroyThread", dynlib: LibName.}

proc LockMutex*(mutexId: TGlfwMutex) {.stdcall, importc: "glfwLockMutex", dynlib: LibName.}

proc UnlockMutex*(mutexId: TGlfwMutex) {.stdcall, importc: "glfwUnlockMutex", dynlib: LibName.}

proc CreateCond*(): TGlfwCond {.stdcall, importc: "glfwCreateCond", dynlib: LibName.}

proc DestroyCond*(condId: TGlfwCond) {.stdcall, importc: "glfwDestroyCond", dynlib: LibName.}

proc WaitCond*(condId: TGlfwCond, mutexId: TGlfwMutex, timeOut: cdouble) {.stdcall, importc: "glfwWaitCond", dynlib: LibName.}

proc SignalCond*(condId: TGlfwCond) {.stdcall, importc: "glfwSignalCond", dynlib: LibName.}

proc BroadcastCond*(condId: TGlfwCond) {.stdcall, importc: "glfwBroadcastCond", dynlib: LibName.}

proc GetNumberOfProcessors*(): cint {.stdcall, importc: "glfwGetNumberOfProcessors", dynlib: LibName.}

## ---------------------------------------------------------------------------


## Enable/disable functions

## ---------------------------------------------------------------------------

proc Enable*(token: cint) {.stdcall, importc: "glfwEnable", dynlib: LibName.}

proc Disable*(token: cint) {.stdcall, importc: "glfwDisable", dynlib: LibName.}

## ---------------------------------------------------------------------------

## Image/texture I/O support

## ---------------------------------------------------------------------------

proc ReadImage*(name: cstring, img: PImage, flags: cint): cint {.stdcall, importc: "glfwReadImage", dynlib: LibName.}

proc ReadMemoryImage*(data: Pointer, size: clong): cint {.stdcall, importc: "glfwReadMemoryImage", dynlib: LibName.}

proc FreeImage*(img: PImage) {.stdcall, importc: "glfwFreeImage", dynlib: LibName.}

proc LoadTexture2D*(name: cstring, flags: cint): cint {.stdcall, importc: "glfwLoadTexture2D", dynlib: LibName.}

proc LoadMemoryTexture2D*(data: Pointer, size: clong, flags: cint): cint {.stdcall, importc: "glfwLoadMemoryTexture2D", dynlib: LibName.}

proc LoadTextureImage2D*(img: PImage, flags: cint): cint {.stdcall, importc: "glfwLoadTextureImage2D", dynlib: LibName.}

## ---------------------------------------------------------------------------