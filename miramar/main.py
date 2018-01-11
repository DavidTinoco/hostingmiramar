import os
import manager
import MySQLdb as mariadb
from bottle import route,run,get,template,request,static_file,response,redirect,app,debug,abort,error
from beaker.middleware import SessionMiddleware
import session

session_opts = {
    'session.type': 'memory',
    'session.cookie_expires': 1600,
    'session.auto': True
}

# Comment this line if you are using mod_wsgi & apache
app = SessionMiddleware(app(), session_opts)

# index page
@route('/')
def index():
	return template('views/login.tpl')

@route('/register')
def register():
    return template('views/register.tpl')

@route('/index')
def logged():
    return template('views/index.tpl')

@route('/logout')
def logout():
 session.deletecoockie()
 redirect('/')

@route('/contrato')
def contrato():
    return template('views/contrato.tpl')

@route('/chpassword')
def plain():
    return template('views/chpassword.tpl')

@route('/credenmysql')
def plain():
    return template('views/credenmysql.tpl')

@route('/addsubdomain')
def plain():
    return template('views/addsubdomain.tpl')

# Static files
@route('/static/<filepath:path>')
def server_static(filepath):
	return static_file(filepath, root='static')

# Comment this if you are using mod_wsgi & apache
debug(True)
run(app=app, host = '0.0.0.0', port = 8080)
