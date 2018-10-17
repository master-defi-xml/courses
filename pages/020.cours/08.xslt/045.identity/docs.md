---
title: Feuille de style « identité »
taxonomy:
    category: docs
---
### Feuille de style « identité »
La feuille de style suivante permet de reproduire « nœud à nœud » le
document d'entrée dans le document de sortie. En ajoutant des règles
supplémentaires, on peut construire facilement des feuilles de style
permettant de modifier un document (ajout d'attributs, extraction de
certain nœuds, ...).

```xml
 <?xml version="1.0"?>
<xsl:transform  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template match="*|@*|text()">
        <xsl:copy>
            <xsl:apply-templates select="*|@*|text()|comment()|processing-instruction()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="processing-instruction()|comment()">
        <xsl:copy/>
    </xsl:template>
</xsl:transform>
```

NOTA : l'appel éventuel à une DTD dans le document d'entrée ne sera pas
copié dans le document de sortie. Il faut spécifier explicitement la DTD
de sortie dans les attributs `doctype-public` et `doctype-system` de
l'élément &lt;xsl:output&gt;.
