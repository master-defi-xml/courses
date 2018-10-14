#! /usr/bin/python
#-*- coding: utf-8 -*-

# Ce programme applique la feuille de style contenu dans le fichier 
# "outils2html.xsl"
# au document XML contenu dans le fichier "outils_xml.xml"

import libxml2
import libxslt

# "Parsing" du document XML
doc = libxml2.parseFile("outils_xml.xml");

# Parsing de la feuille de style
doc_xslt =  libxml2.parseFile("outils2html.xsl");

# Instanciation de la transformation (à faire 1x)
xslt = libxslt.parseStylesheetDoc(doc_xslt)

# application de la transformation
result = xslt.applyStylesheet(doc,None)

result.htmlSaveFile("result.html")
# si le résultat était en XML, il faudrait utiliser :
# result.saveFormatFile("result.xml",1)

result.freeDoc()
doc.freeDoc()
