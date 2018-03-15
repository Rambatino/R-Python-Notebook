## To run the notebook

1. `git clone https://github.com/Rambatino/R-Python-Notebook.git`
2. `cd R-Python-Notebook`
3. Install <a href="https://docs.docker.com/install/">Docker</a> if you haven't already
4. Make sure the docker server is running
5. `docker build -t notebook . && docker run -it -p 12345:12345 -v "$PWD":/usr/src/app notebook`

Then you should see the output:

``` ruby
Copy/paste this URL into your browser when you connect for the first time,
to login with a token:
    http://0.0.0.0:12345/?token=28ec714f87f31f0aa2898772666163682db90266524610c2
```

So click that link and you're in!
