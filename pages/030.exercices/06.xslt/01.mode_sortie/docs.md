---
title: 'Modes de sortie'
taxonomy:
    category:
        - docs
---

### Modes de sortie

Dans ces exercices, vous utiliserez le document `recette_penda_mbaye.xml`. 

1. Créez une feuille de style XSLT permettant de généré une liste d'ingrédients au format <a href="http://daringfireball.net/projects/markdown/"  title="markdown">Markdown</a>, avec un encodage UTF-8. Vous devez obtenir ce résultat :
```markdown
#Liste des ingrédients :
* poisson maigre ou charnu
* fruits de mer (moules, coques, crevettes...) _bien frais_
* tomate concentrée
* oignons
* riz
* aubergines
* carottes
* navets
* piment
* tomates fraîches
* poivron vert
* chou-fleur
* huile d'olive
* gousse d'ail
* sel
* poivre
```
2. Modifiez votre feuille de style afin de prendre en compte l'attribut `@type` de  l'élement `<accord_boisson>` . Vous devez obtenir un item supplémentaire :

```
* vin blanc
```

4. Créez une feuille de style XSLT permettant de généré une liste d'ingrédients au format HTML. Vous devez obtenir [ce résultat](ingredients.html):

```html
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title> : liste des ingrédients</title>
</head>
<body>
<h1>Liste des ingrédients</h1>
<ul>
<li>poisson maigre ou charnu</li>
<li>fruits de mer (moules, coques, crevettes...) <strong>bien frais</strong>
</li>
<li>tomate concentrée</li>
<li>oignons</li>
<li>riz</li>
<li>aubergines</li>
<li>carottes</li>
<li>navets</li>
<li>piment</li>
<li>tomates fraîches</li>
<li>poivron vert</li>
<li>chou-fleur</li>
<li>huile d'olive</li>
<li>gousse d'ail</li>
<li>sel</li>
<li>poivre</li>
</ul>
</body>
</html>

```
6. Créez une feuille de style XSLT permettant de généré une liste d'ingrédients  dans un format XML donné.  Vous devez obtenir [ce résultat](ingredients.xml) :

```xml
<?xml version="1.0" encoding="UTF-8"?>
<fournitures>
  <itemlist>
    <item>poisson maigre ou charnu</item>
    <item>fruits de mer (moules, coques, crevettes...) <warning>bien frais</warning></item>
    <item>tomate concentrée</item>
    <item>oignons</item>
    <item>riz</item>
    <item>aubergines</item>
    <item>carottes</item>
    <item>navets</item>
    <item>piment</item>
    <item>tomates fraîches</item>
    <item>poivron vert</item>
    <item>chou-fleur</item>
    <item>huile d'olive</item>
    <item>gousse d'ail</item>
    <item>sel</item>
    <item>poivre</item>
  </itemlist>
</fournitures>

```

8. Améliorez vos feuilles de style afin de faire apparaître les quantités dans la liste. Ex. "oignon (150g)".

## Correction

* [ingredients2markdown.xsl](ingredients2markdown.xsl)

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"
	      encoding="UTF-8"/>
  
  <xsl:template match="/recette">
    <xsl:apply-templates select="liste_ingrédients"/>
  </xsl:template>

  <xsl:template match="liste_ingrédients">
    <xsl:text>#Liste des ingrédients :</xsl:text>
    <xsl:text>&#xa;</xsl:text> <!-- &#xa; est le caractère saut de ligne -->
    <xsl:apply-templates select="ingrédient"/>
  </xsl:template>

  <xsl:template match="ingrédient">
    <xsl:text>* </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>&#xa;</xsl:text>
  </xsl:template>

  <xsl:template match="important">
    <xsl:text>_</xsl:text>
    <xsl:value-of select="."/>
    <xsl:text>_</xsl:text>
  </xsl:template>


</xsl:stylesheet>
```

* [ingredients2html.xsl](ingredients2html.xsl)

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"
	      encoding="UTF-8"/>
  
  <xsl:template match="/recette">
    <html>
      <head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>
	  <xsl:value-of select = "title"/>
	  <xsl:text> : liste des ingrédients</xsl:text>
	</title>
      </head>
      <body>
      <xsl:apply-templates select="liste_ingrédients"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="liste_ingrédients">
    <h1>Liste des ingrédients</h1>
    <ul> 
    <xsl:apply-templates select="ingrédient"/>
    </ul>
  </xsl:template>

  <xsl:template match="ingrédient">
    <li>
      <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="important">
    <strong>
      <xsl:value-of select="."/>
      </strong>
  </xsl:template>
</xsl:stylesheet>
```

* [ingredients2xsl.xsl](ingredients2xsl.xsl)

```xml
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml"
	      indent="yes"
	      encoding="UTF-8"/>
  
  <xsl:template match="/recette">
    <fournitures>
      <xsl:apply-templates select="liste_ingrédients"/>
    </fournitures>
  </xsl:template>

  <xsl:template match="liste_ingrédients">
    <itemlist>
    <xsl:apply-templates select="ingrédient"/>
    </itemlist>
  </xsl:template>

  <xsl:template match="ingrédient">
    <item>
      <xsl:apply-templates/>
    </item>
  </xsl:template>

  <xsl:template match="important">
    <warning>
      <xsl:value-of select="."/>
    </warning>
  </xsl:template>

</xsl:stylesheet>
```
