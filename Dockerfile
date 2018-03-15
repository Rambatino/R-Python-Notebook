FROM ubuntu:17.10
RUN apt-get update
RUN apt-get install -y r-base python3-pip r-cran-littler

# add R dependencies to requirements.txt
COPY install.R install.R
RUN r install.R

# add python dependencies to requirements.txt
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

WORKDIR /usr/src/app

CMD jupyter notebook --ip=0.0.0.0 --port=12345 --allow-root
