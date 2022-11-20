import CrawlDatos

import sqlite3
import mysql.connector
import urllib.error
import ssl
from urllib.parse import urljoin
from urllib.parse import urlparse
from urllib.request import urlopen
from bs4 import BeautifulSoup

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
html = urllib.request.urlopen("https://eltunel.com.uy/bebes-y-ninos/seguridad?js=1&pag=1", context=ctx).read()
print(BeautifulSoup(html, 'html.parser').prettify().find("DOCTYPE"))


with open("Untitled-2", "w", encoding="utf-8") as f:
    f.write(BeautifulSoup(html, 'html.parser').prettify())