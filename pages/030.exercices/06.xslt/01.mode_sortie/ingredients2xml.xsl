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
