from beaker.middleware import SessionMiddleware

def setcoockie(key, value):
 # session = environ['beaker.session']
 s = request.environ['beaker.session']
 s[key]=value

def getcoockie(key):
 s = request.environ['beaker.session']
 if key in s:
  return s[key]
 else:
  abort(401, "Acceso Denegado.")

def deletecoockie():
 s = request.environ['beaker.session']
 s.delete()
