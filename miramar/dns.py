import os
import dns
from bottle import request, redirect, template, abort

def dnscreatezone(domain):
    try:
	file = open('/etc/bind/named.conf','a')
	file.write('zone "david.miramar.gonzalonazareno.org" {\n')
	file.write('	type master;\n')
	file.write('	file "/etc/bind/zones/david.miramar.zone";\n')
	file.write('	forwarders{\n')
	file.write('	};\n')
	file.write('};\n')
	file.close()

def dnscreatezonefile(domain):
    try:
	file = open('/etc/bind/zones/david.miramar.zone','a')
	file.write('$TTL	86400\n')
        file.write('@		IN	SOA	impala.david.miramar.gonzalonazareno.org	root.david.miramar.gonzalonazareno.org (\n')
        file.write('				0	; Serial\n')
        file.write('				36000	; Refresh\n')
        file.write('				600	; Retry\n')
        file.write('				86400	; Expire\n')
	file.write('				600	; Negative Cache\n')
        file.write('$ORIGIN david.miramar.gonzalonazareno.org.\n')
        file.write('@		IN	NS	impala.david.miramar.gonzalonazareno.org.\n')
        file.write('impala	IN	A	172.22.200.150\n')
        file.close()

