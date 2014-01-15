#!/usr/bin/env python

import sys
import MySQLdb as mdb

cedula = sys.argv[1]
telefono = sys.argv[2]

sql = "SELECT * FROM clientes WHERE cedula = '" + cedula + "' AND telefono = '" + telefono + "' LIMIT 1"

try:
  coneccion = mdb.connect('localhost', 'root', '', 'agidb')

  cursor = coneccion.cursor()
  cursor.execute(sql)

  fila = cursor.fetchone()

  if fila is not None:
    print "SET VARIABLE resultado", fila[4]
    print "SET VARIABLE nombre", fila[3]
  else:
    print "SET VARIABLE resultado 2"
except mdb.Error, e:
  print "Error %d: %s" % (e.args[0], e.args[1])
  sys.exit(1)

finally:
  if coneccion:
    coneccion.close()

sys.exit(0)
