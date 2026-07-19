# docker_goserver

This little project is from boot.dev.

1. We start off by hosting a simple web server using a go app, with the port hard-coded.
2. We then containerize the go app, so that it can be shipped in a docker image.
3. To make life a bit more interesting, we change the go app to accept the port number as an environment variable. This is then coded into the Dockerfile, and the image is rebuilt.
4. go apps work well in containers because they don't need an interpreter. What if we want to containerize a Python app? We use part of the bookbot app that I built earlier using Python, which counts the number of characters in a book. When containerizing this, there is an error message!
5. Now we need to make a new Dockerfile for the Python app which includes a Python interpreter. The Dockerfile.py is used to rebuild the bookbot image, including the interpreter. It takes long! 547.3 seconds to create the image. Luckily it works!

