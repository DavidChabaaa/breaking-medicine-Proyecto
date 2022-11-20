from xml.dom import minicompat
import CrawlDatos

import sqlite3
import mysql.connector
import urllib.error
import ssl
from urllib.parse import urljoin
from urllib.parse import urlparse
from urllib.request import urlopen
from bs4 import BeautifulSoup

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

conn = sqlite3.connect('productos.sqlite')
cur = conn.cursor()

cur.execute('''CREATE TABLE IF NOT EXISTS Pages
    (id INTEGER PRIMARY KEY, url TEXT UNIQUE, html TEXT)''')

db = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="proyecto"
)
mycursor = db.cursor()

url = input('Pagina - ')
subcategoria = int(input('Categoria: '))
minicategoria = int(input('minicategoria: '))
if minicategoria < 1: minicategoria = None

listaAnchors = []
pag = 1
i = 0
# obtiene todos los <a> de los productos en la categoria dada
while True:
    html = urllib.request.urlopen(url+"?js=1&pag="+str(pag), context=ctx).read()
    soup = BeautifulSoup(html, 'html.parser')
    print(url+"?js=1&pag="+str(pag))
    if(soup.prettify().find("<!DOCTYPE html>") != -1 or pag > 2): break
    pag +=1

    anchors = soup.find_all("a")
    for anchor in anchors:
        if(anchor.get("href").find("/catalogo/" ) != -1):
            if(listaAnchors.count(anchor.get("href")) == 0):
                i+=1
                listaAnchors.append(anchor.get("href"))

print(i)

query = "INSERT INTO articulos values(null, 1, %s, %s, %s, %s, 99, 1, 0)"
queryUpdate = "UPDATE articulos SET imagen=%s where nombre = %s"
querySelect = "SELECT * FROM articulos where nombre = %s"
queryArtCat = "INSERT INTO artcat values(%s, %s, %s)"

# inserta todos los productos obtenidos de los <a> en la base de datos
for producto in listaAnchors:
    print("-----------")
    try:
        dic = CrawlDatos.crawl(producto)
        nombre = (str(dic["nombre"])[:50]) if len(str(dic["nombre"])) > 50 else str(dic["nombre"])
        val = (nombre, str(dic["descripcion"]), str(dic["imagen"]), int(dic["precio"]))
        mycursor.execute(query, val)
        mycursor.execute(querySelect, [nombre])
        try:
            id = mycursor.fetchone()[0]
        except:
            print("ERROR")
        else:
            mycursor.execute(queryUpdate, [str(id)+".jpg", nombre])
            # print("http:"+str(dic["imagen"]))
            opener = urllib.request.build_opener()
            opener.addheaders = [('User-agent', 'Mozilla/5.0')]
            urllib.request.install_opener(opener)
            urllib.request.urlretrieve("http:"+str(dic["imagen"]), "C:/wamp64/www/Prueba/breaking-medicine-Proyecto/frontend/imgArt/"+str(id)+".jpg")
            mycursor.execute(queryArtCat, [int(subcategoria), int(minicategoria) if (minicategoria!=None) else None, int(id)])
        # print("Precio: "+str(dic["precio"])+" nombre: "+dic["nombre"])
        # print("imagen: "+dic["imagen"])
        # print(dic["descripcion"])
    except:
        print("Error al insertar articulo")
    else:
        print("articulo|"+nombre+"| insertado con exito")

db.commit()
print("-----------")
print("-----------")
print("articulos insertados con exito")