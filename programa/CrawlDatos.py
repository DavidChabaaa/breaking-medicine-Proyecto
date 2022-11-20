from msilib.schema import File
import sqlite3
import urllib.error
import ssl
from urllib.parse import urljoin
from urllib.parse import urlparse
from urllib.request import urlopen
from bs4 import BeautifulSoup


conn = sqlite3.connect('productos.sqlite')

# Ignore SSL certificate errors
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

#url = input('Pagina - ')
def crawl(url):
    html = urllib.request.urlopen(url, context=ctx).read()
    soup = BeautifulSoup(html, 'html.parser')

    nombre = "NO ENCONTRADO"
    precio = "NO ENCONTRADO"
    moneda = "NO ENCONTRADO"
    imagen = "NO ENCONTRADO"
    descripcion = "-"

    tags = soup.find_all("span")
    for tag in tags:
        # print(tag.get("class"))
        if(tag.get("class") == ["monto"]):
            precio = ''.join(filter(str.isdigit, tag.string)) 
            break

    tags = soup.find_all("span")
    for tag in tags:
        if(tag.get("class") == ["sim"]):
            if(tag.string == "$"): moneda = "peso"
            else: moneda = "dolar"
            break


    tags = soup.find_all("h1")
    for tag in tags:
        if(tag.get("class") == ["tit"]):
            nombre = tag.string
            break

    tags = soup.find_all("img")
    for tag in tags:
        if(tag.get("src").find("catalogo") != -1):
            imagen = tag["src"]
            break

    tags = soup.find_all("div")
    for tag in tags:
        if(tag.get("class") == ["desc"]):
            descripcion = tag.p.string
            break

    if(moneda == "dolar"): precio = int(precio)*41
    # print("Precio: "+str(precio)+" nombre: "+nombre)
    # print("imagen: "+imagen)
    # print(descripcion)
    return {"nombre":nombre, "precio":precio, "imagen":imagen, "descripcion":descripcion}

