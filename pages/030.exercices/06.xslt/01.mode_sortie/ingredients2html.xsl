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
