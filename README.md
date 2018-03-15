## To run the notebook

1. Install <a href="https://docs.docker.com/install/">Docker</a> if you haven't already
2. Make sure the docker server is running
3. In the directory: `docker build -t notebook . && docker run -it -p 12345:12345 -v "$PWD":/usr/src/app notebook`
