import ldap
import ldap.modlist as modlist
import commands

def connect()
    # Open a connection
    l = ldap.initialize("ldap://172.22.200.146")

    # Bind/authenticate with a user with apropriate rights to add objects
    l.simple_bind_s("cn=admin,dc=miramar,dc=gonzalonazareno,dc=org","miramar")

    # The dn of our new entry/object
    dn="cn=prueba,dc=miramar,dc=gonzalonazareno,dc=org"

def adduser(user,password,domain):

    connect

    uidNumber = commands.getoutput("ldapsearch -H ldap://localhost -D "cn=admin,dc=miramar,dc=gonzalonazareno,dc=org" -w miramar | awk '/uidNumber: / {print $2}' | sort | tail -n 1")

    # A dict to help build the "body" of the object
    attrs = {}
    attrs['objectclass'] = ['top','posixAccount','inetOrgPerson','person']
    attrs['cn'] = user
    attrs['uid'] = user
    attrs['uidNumber'] = int(uidNumber) + 1 
    attrs['gidNumber'] = int(uidNumber) + 1
    attrs['homeDirectory'] = '/srv/ftp/' + user
    attrs['loginShell'] = '/bin/bash'
    attrs['userPassword'] = '{SSHA}yZ7g3Q2z7Ej1Ad3d3bia4fkKdqHWi4S0'
    attrs['sn'] = domain
    attrs['mail'] = user + '@localhost'
    attrs['givenName'] = user


    # Convert our dict to nice syntax for the add-function using modlist-module
    ldif = modlist.addModlist(attrs)

    # Do the actual synchronous add-operation to the ldapserver
    l.add_s(dn,ldif)

    # Its nice to the server to disconnect and free resources when done
    l.unbind_s()

def checkuser(user):

        connect

	existe = commands.getoutput("ldapsearch -H ldap://localhost -D "cn=Admin,dc=miramar,dc=gonzalonazareno,dc=org" -w miramar uid=" + user)
	if existe == '':
		return False
	else
		return True
