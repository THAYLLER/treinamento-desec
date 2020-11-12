#!/usr/bin/python
import socket

for port in range(1,65535):
  meusocket = socket.socket(socket.AF_INET, socket.SOCKET_STREAM)
  if meusocket.connect_ex((sys.argv[1],port)) == 0:
    print "Porta", port, "[ABERTA]"
    meusocket.close()