
### Debian Stretch

~~~
apt-get install libmysqlclient-dev python-pip
~~~

~~~
git clone git@github.com:DavidTinoco/hostingmiramar.git
~~~

~~~
cd hostingmiramar
mkdir venv
virtualenv venv/
source venv/bin/activate
~~~

PIP:

~~~
pip install bottle
pip install beaker
pip install mysql-python
~~~
