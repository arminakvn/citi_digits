FROM google/python

# Create a virtualenv for dependencies. This isolates these packages from
# system-level packages.
RUN apt-get update
RUN virtualenv /env

# Setting these environment variables are the same as running
# source /env/bin/activate
ENV VIRTUAL_ENV /env
ENV PATH /env/bin:$PATH

RUN apt-get install -y libmysqlclient-dev python-dev
RUN pip uninstall PIL
RUN apt-get install -y libjpeg-dev 
RUN apt-get install -y zlib1g-dev 
RUN apt-get install -y libpng12-dev 
RUN pip install PIL
RUN python setup.py install
RUN aptitude install -y libapache2-mod-python libapache2-mod-wsgi
RUN mkdir media; mkdir media/backup ; chmod a+rw media
RUN apt-get install mysql-server
RUN mysql_secure_installation
RUN pip install python-dateutil --upgrade