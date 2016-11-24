FROM kernsuite/base:dev
RUN docker-apt-install python-casacore casacore-data
RUN pip install ipython
ADD run.py /
RUN docker-apt-install makems
RUN mkdir /data
WORKDIR /data
CMD makems makems.cfg

