import glfw3 as glfw
 


if glfw.Init() == 0:
    raise newException(E_base, "Failed to initialize GLFW")


var window = glfw.CreateWindow(800, 600, "GLFW WINDOW", nil, nil)

glfw.MakeContextCurrent(window)

while glfw.WindowShouldClose(window) == 0:
    
    glfw.PollEvents()
    glfw.SwapBuffers(window)

    if glfw.GetKey(window,glfw.KEY_ESCAPE) == 1:
        glfw.SetWindowShouldClose(window,1)
    

glfw.DestroyWindow(window)
glfw.Terminate()




