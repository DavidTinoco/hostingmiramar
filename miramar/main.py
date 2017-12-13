import os
import manager
from bottle import route,run,get,template,request,static_file,response,redirect,app,debug,abort,error
from beaker.middleware import SessionMiddleware

session_opts = {
    'session.type': 'memory',
    'session.cookie_expires': 1200,
    'session.auto': True
}

# Comment this line if you are using mod_wsgi & apache
app = SessionMiddleware(app(), session_opts)

# index page
@route('/')
def index():
	return template('views/index.tpl')
