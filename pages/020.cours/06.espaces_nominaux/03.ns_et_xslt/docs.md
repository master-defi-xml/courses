---
title: XSLT et espaces nominaux
taxonomy:
    category: docs
---
### XSLT et espaces nominaux

La transformation XSLT de documents XML comportant des éléments associés
à des espaces nominaux demande de respecter quelques règles :

-   *Les espaces nominaux utilisés dans le document d’entrée et de
    sortie doivent être déclarés dans la feuille de style*
-   *Ils doivent être associées à des préfixes dans cette déclaration :*
-   *Dans les expressions XPath, les éléments doivent-être préfixés*
-   *Dans les expressions XPath, les attributs d‘élément appartenant à
    un espace nominal ne doivent pas être préfixés, sauf si leur espace
    nominal est différent de celui de l‘élément*

Exemples :
```xml
<xsl:stylesheet version = "1.0"
      xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
      xmlns:rdf = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"
      xmlns:rss = "http://purl.org/rss/1.0/"
      xmlns:sy = "http://purl.org/rss/1.0/modules/syndication/"
      xmlns:prism = "http://prismstandard.org/namespaces/1.2/basic/"
      xmlns:dc = "http://purl.org/dc/elements/1.1/">
   <xsl:output method = "html"/>
   <xsl:template match = "/">
     <html>
       <head>
  <title>
   <xsl:value-of select = "rss:title"/>
  </title>
       </head>
       <body>
  <xsl:apply-templates select = "//rss:item"/>
       </body>
     </html>
   </xsl:template>
  <xsl:template match = "rss:item">
   <ol>
     <xsl:variable name = "url">
       <xsl:value-of select = "@rdf:about"/>
     </xsl:variable>
     <xsl:value-of select = "rss:title"/>
     <a href = "{$url}">
       <xsl:value-of select = "dc:source"/>
     </a>
   <xsl:text>
  </xsl:text>
   </ol>
  </xsl:template>
  </xsl:stylesheet>
```
[Autre exemple](xslt_ns.xsl)
