import os
import MySQLdb as mariadb
from bottle import request, redirect, template, abort
from beaker.middleware import SessionMiddleware

def con(host,user,passwd):
    try:
        connection = mariadb.connect("%s","%s","%s","databasename" %(host,user,passwd))
        cursor = connection.cursor()
        return template('views/dashboard.tpl', cursor = cursor)
    except mariadb.Error:
        var = 1
        return template('index.tpl', error=var)
