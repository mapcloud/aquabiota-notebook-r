# -*- mode: ruby -*-
# vi: set ft=ruby :

#  docker run -i -t -p 8888:8888  -v $(pwd):$NOTEBOOK_DIR  aquabiota/notebook-r jupyter notebook --notebook-dir=$NOTEBOOK_DIR --ip='*' --port=8888  --no-browser
#  docker run -i -t -p 8888:8888   aquabiota/notebook-r jupyter notebook  --ip='*' --port=8888  --no-browser

# MODIFIED FROM: https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2
# plus check key here: https://www.rosehosting.com/blog/install-r-on-ubuntu/
FROM aquabiota/notebook-py2:latest

LABEL maintainer "Aquabiota Solutions AB <mapcloud@aquabiota.se>"
ARG DEBIAN_FRONTEND=noninteractive

USER root
RUN apt-get install -y software-properties-common python-software-properties

#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
# sudo add-apt-repository ppa:git-core/ppa
#RUN add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | tee -a /etc/apt/sources.list
RUN apt-get update  && \
    apt-get install -y r-base r-base-dev
# Install R packages
COPY rpackages.R /sbin/rpackages.R
RUN chmod +x /sbin/rpackages.R
RUN /sbin/rpackages.R

RUN chown -R $NB_USER:users /home/aqua/.local

USER $NB_USER
RUN conda install -y rpy2

# https://stackoverflow.com/questions/37294127/python-gdal-2-1-installation-on-ubuntu-16-04/41613466
#RUN sudo apt-get -yd build-dep gdal
#RUN sudo apt-get -yd build-dep python-gdal python3-gdal

#RUN conda install -y -c r r-essentials
#RUN conda install -y rpy2
#RUN conda install -y gdal=2.1.3 -c conda-forge  && \
    #conda install -y --channel https://conda.anaconda.org/awkwong r-rgdal && \
    #conda install -y r-Hmisc r-car r-psych && \
    #conda install -y r-mgcv r-randomForest r-ROCR r-raster


USER $NB_USER
