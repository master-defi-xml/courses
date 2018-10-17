---
title: Exemple de transformation XSLT
taxonomy:
    category: docs
---
### Exemple de transformation XSLT


**le fichier XML**

```xml
<?xml version="1.0" encoding="utf-8">
<cours>
    <explication>Une <important>feuille de style <super_important>XSLT</super_important></important>
    permet de <super_important>transformer</super_important> un <important>document XML</important>
    (donc une structure arborescente) en <important>un autre  document</important> arborescent.</explication>
    <explication>Le <important>document de sortie</important> peut
   être du <super_important>XML</super_important>,
   du <super_important>texte</super_important> ou du <super_important>HTML</super_important>.</explication>
</cours>
```

**La feuille de style XSLT**

```xml
<?xml version="1.0" encoding="utf-8">
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"  version = "1.0">
  <xsl:output method = "xml"></xsl:output>
  <xsl:template match = "/cours">
      <html>
  <head>
      <meta http-equiv = "Content-Type" content = "text/html; charset=utf-8"></meta>
      <title>Feuille de style XSLT</title>
  </head>
  <body>
      <xsl:apply-templates select = "explication"></xsl:apply-templates>
  </body>
      </html>
  </xsl:template>

  <xsl:template match = "explication">
      <div>
  <xsl:apply-templates select = "*|text()"></xsl:apply-templates>
      </div>
  </xsl:template>

  <xsl:template match = "important">
      <i>
  <xsl:apply-templates select = "*|text()"></xsl:apply-templates>
      </i>
  </xsl:template>

  <xsl:template match = "super_important">
      <b>
  <xsl:apply-templates select = "*|text()"></xsl:apply-templates>
      </b>
  </xsl:template>

  <xsl:template match = "text()">
      <xsl:value-of select = "."></xsl:value-of>
  </xsl:template>

</xsl:stylesheet>
```

**Le résultat**

```xml
<?xml version="1.0" encoding="utf-8">
<html>
  <head>
    <meta http-equiv = "Content-Type" content = "text/html; charset=utf-8"></meta>
    <title>Feuille de style XSLT</title>
  </head>
  <body>
    <div>Une <i>feuille de style <b>XSLT</b></i>
    permet de <b>transformer</b> un <i>document XML</i>
    (donc une structure arborescente) en <i>un autre  document</i> arborescent.</div>
    <div>Le <i>document de sortie</i> peut être du <b>XML</b>,
   du <b>texte</b> ou du <b>HTML</b>.</div>
  </body>
</html>
```
