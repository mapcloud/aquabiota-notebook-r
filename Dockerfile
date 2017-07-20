# -*- mode: ruby -*-
# vi: set ft=ruby :

# docker run -i -t -p 8888:8888 --name jupyter -v $(pwd):/home/aqua/workspace/notebooks aquabiota/notebook-r jupyter notebook --ip='*' --port=8888  --no-browser
# docker run -i -t -p 8888:8888   aquabiota/notebook-r jupyter notebook  --ip='*' --port=8888  --no-browser
# docker run -d -v $HOME/data:/home/aqua/data -v $(pwd):/home/aqua/workspace/notebooks --name jupyter -p 8889:8889 aquabiota/notebook-r jupyter notebook --ip='*' --port=8889  --no-browser

# MODIFIED FROM: https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2
# plus check key here: https://www.rosehosting.com/blog/install-r-on-ubuntu/
FROM aquabiota/notebook-py2:latest

LABEL maintainer "Aquabiota Solutions AB <mapcloud@aquabiota.se>"
ARG DEBIAN_FRONTEND=noninteractive

USER root

#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
# sudo add-apt-repository ppa:git-core/ppa
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | tee -a /etc/apt/sources.list
RUN apt-get update  && \
    apt-get install -y r-base r-base-dev


USER $NB_USER
# Create a the user R-site-library to store packages
RUN mkdir $HOME/R-site-library/
RUN conda install -y rpy2


USER root
# Install R packages
COPY rpackages.R /sbin/rpackages.R
RUN chmod +x /sbin/rpackages.R
RUN /sbin/rpackages.R

# Ensure writing access to user to following dirs

RUN chown -R $NB_USER:users $HOME/.local && \
    chown -R $NB_USER:users $HOME/R-site-library && \
    # /usr/local/lib/R/site-library
    chown -R $NB_USER:users /usr/local/lib/R/site-library

# default user starts the container
USER $NB_USER
