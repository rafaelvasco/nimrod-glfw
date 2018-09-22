# Package

packageName   = "glfw"
version       = "3.2.1"
author        = "Rafael Vasco, Cory Null(Noll) Crimmins - Golden"
description   = "Nimrod bindings for GLFW3 library"
license       = "MIT"

skipDirs = @["test"]

when defined(Windows):
  switch("GLFW_EXPOSE_NATIVE_WIN32")
  switch("GLFW_EXPOSE_NATIVE_WGL")
elif defined(MacOSX):
  switch("GLFW_EXPOSE_NATIVE_COCOA")
  switch("GLFW_EXPOSE_NATIVE_NSGL")
