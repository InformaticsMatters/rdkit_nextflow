FROM informaticsmatters/rdkit_java:Release_2017_03_1
MAINTAINER Tim Dudgeon <tdudgeon@informaticsmatters.com>

USER root
WORKDIR /root

RUN apt-get update -y && apt-get install -y curl && apt-get clean -y

# install nextflow
RUN curl -fsSL get.nextflow.io | bash && mv nextflow /usr/local/bin
