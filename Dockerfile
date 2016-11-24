FROM kernsuite/base:dev
RUN docker-apt-install python-casacore casacore-data
RUN pip install ipython
ADD run.py /
CMD python /run.py

