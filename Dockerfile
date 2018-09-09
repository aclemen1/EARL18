FROM rocker/rstudio:latest

RUN apt-get update && apt-get install -q -y \
	zlib1g-dev \
	libxml2-dev \
	libgit2-dev \
	libssh2-1-dev \
	python-pip \
	virtualenv
RUN echo "en_DK.UTF-8 UTF-8" >>/etc/locale.gen && locale-gen
RUN R -e 'install.packages("tidyverse")'
RUN R -e 'install.packages("repurrrsive")'
RUN R -e 'install.packages("broom")'
RUN R -e 'install.packages("modelr")'
RUN R -e 'install.packages("rsample")'
RUN R -e 'install.packages("keras")'
RUN R -e 'install.packages("devtools")'
RUN R -e 'devtools::install_github("topepo/recipes")'
RUN R -e 'devtools::install_github("aclemen1/modulr")'
