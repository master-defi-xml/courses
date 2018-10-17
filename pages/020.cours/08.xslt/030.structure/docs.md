---
title: Structure d'une feuille de style XSLT
taxonomy:
    category: docs
---
### Structure d'une feuille de style XSLT

#### Feuille de style minimale

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
</xsl:stylesheet>
```

***Nota :***
On peut indifféremment utiliser l‘élément `<xsl:transform>` au lieu de
`<xsl:stylesheet>`

### Feuille de style... moins minimale


```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
               version = "1.0">
   <!-- ############################## -->
   <!-- Formatage de l'arbre de sortie -->
   <!-- ############################## -->
   <xsl:output method="xml" encoding="utf-8"/>

   <!-- ############################## -->
   <!--            Templates           -->
   <!-- ############################## -->
   <xsl:template match="/recette">
       <!-- Ajouter ici les instructions pour la construction
            de l'arbre de sortie. Ce "template" sera appliqué
           si l'élément racine est "recette".
           -->
   </xsl:template>

   <xsl:template match="ingrédients">
       <!-- Ajouter ici les instructions pour la construction
            de l'arbre de sortie.  Ce "template" sera appliqué
            uniquement si une instruction "apply-templates" le demande.
       -->
   </xsl:template>

   <!-- il y a autant de template que nécessaire,
        pour la construction de l'arbre de sortie -->
</xsl:stylesheet>
```

Une feuille de style XSLT contient donc essentiellement des éléments
&lt;xsl:template&gt;, précédé de divers éléments permettant de préciser
le type de document de sortie désiré (dans &lt;xsl:output&gt;, text,
html ou xml) et éventuellement de divers autres éléments : ![Stucture
XSLT](struct_xslt.jpg)
