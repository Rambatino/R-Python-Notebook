## To run the notebook

1. git clone https://github.com/Rambatino/R-Python-Notebook.git
2. cd R-Python-Notebook
3. Install <a href="https://docs.docker.com/install/">Docker</a> if you haven't already
4. Make sure the docker server is running
5. In the directory: `docker build -t notebook . && docker run -it -p 12345:12345 -v "$PWD":/usr/src/app notebook`
