FROM ubuntu:17.10
RUN apt-get update
RUN apt-get install -y r-base python3-pip r-cran-littler vim

# add R dependencies from install.R
COPY install.R install.R
RUN cat install.R | xargs -I{} Rscript -e 'install.packages("{}", repos="https://cran.rstudio.com")'

# add python dependencies from requirements.txt
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /usr/src/app

CMD jupyter notebook --ip=0.0.0.0 --port=12345 --allow-root
