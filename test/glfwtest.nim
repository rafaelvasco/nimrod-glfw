import glfw
import opengl ## TODO: Maybe import opengl in glfw ?
import strutils


## -------------------------------------------------------------------------------

var
    running : bool = true
    frameCount: int = 0
    lastTime: float = 0.0
    lastFPSTime: float = 0.0
    currentTime: float = 0.0
    frameRate: int = 0
    frameDelta: float = 0.0
    x: float = 0.0
    y: float = 0.0
    vx: float = 200.0
    vy: float = 200.0
    windowW: int = 640
    windowH: int = 480

## -------------------------------------------------------------------------------

proc Initialize() =
    
    if Init() == 0:
        write(stdout, "Could not initialize GLFW! \n")

    if OpenWindow(windowW.cint, windowH.cint, 0, 0, 0, 0, 0, 0, GLFW_WINDOW) == 0:
        Terminate()
    
    opengl.loadExtensions()

    SwapInterval(1)

    glClearColor(0.1,0.1,0.1,1.0)
    glClearDepth(1.0)

    glEnable(GL_BLEND)
    glDisable(GL_LIGHTING)
    glCullFace(GL_BACK)
    glDisable(GL_DEPTH_TEST)

    glViewport(0,0,windowW,windowH)

    glMatrixMode(GL_PROJECTION)

    glOrtho(0.0, float(windowW), float(windowH), 0.0, 0.0, 1.0)

    lastTime = GetTime()
    lastFPSTime = lastTime

## -------------------------------------------------------------------------------

proc Update() =
    
    currentTime = GetTime()

    frameDelta = currentTime - lastTime

    lastTime = currentTime

    if currentTime - lastFPSTime > 1.0:
        frameRate = int(float(frameCount) / (currentTime - lastFPSTime))
        SetWindowTitle("FPS: $1" % intToStr(frameRate))
        
        lastFPSTime = currentTime
        frameCount = 0

    frameCount += 1

    x += vx * frameDelta
    y += vy * frameDelta

    var w = float(windowW)
    var h = float(windowH)

    if x > w - 100.0:

        x = w - 100.0
        vx *= -1.0

    elif x < 0.0:

        x = 0.0
        vx *= -1.0

    if y > h - 100.0:

        y = h - 100.0
        vy *= -1.0

    elif y < 0.0:

        y = 0.0
        vy *= -1.0


## --------------------------------------------------------------------------------

proc Render() =
    
    glClear(GL_COLOR_BUFFER_BIT)

    glMatrixMode(GL_MODELVIEW)

    glLoadIdentity()

    glBegin(GL_QUADS)

    glColor3f(0.9,0.2,0.49)

    glVertex3f(x, y, 0.0)

    glVertex3f(x + 100.0, y, 0.0)

    glVertex3f(x + 100.0, y + 100.0, 0.0)

    glVertex3f(x, y + 100.0, 0.0)

    glEnd()

    SwapBuffers()



## --------------------------------------------------------------------------------

proc Run() =
    
    while running:
    
        Update()

        Render()

        running = GetKey(GLFW_KEY_ESC) == GLFW_RELEASE and 
                  GetWindowParam(GLFW_OPENED) == GL_TRUE


## ==============================================================================

Initialize()

Run()

Terminate()
