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
