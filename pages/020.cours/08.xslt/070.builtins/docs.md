---
title: Règles modèle internes (Built-in templates)
taxonomy:
    category: docs
---

### Règles modèle internes (Built-in templates) 

Les règles suivantes sont toujours appliquées si des règles plus
spécifiques ou une redéfinition de ces règles ne sont pas présentes dans
la feuille de style :

```xml
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">

<xsl:template match = "*|/">
  <xsl:apply-templates select="*|text()"/>
</xsl:template>

<xsl:template match = "text()|@*">
  <xsl:value-of select = "."/>
</xsl:template>

<xsl:template match = "processing-instruction()|comment()"/>
</xsl:stylesheet>
```
