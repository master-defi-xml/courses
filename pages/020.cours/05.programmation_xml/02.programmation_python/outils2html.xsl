<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"
	      encoding="utf-8"/>
  <xsl:strip-space elements="*"/>
  <!-- templates -->

  <xsl:template match="ListeOutils">
    <!-- LRE -->
    <html>
      <head>
	<title>Outils XML</title>
      </head>
      <body>
	<h2>Outils XML</h2>
        <xsl:text>Date de la dernière modification : </xsl:text>
	<xsl:value-of select="@modification"/>
        <table border="1">
          <tr><th>Nom</th><th>OS</th><th>Licence</th><th>Liens</th><th>Commentaire</th></tr>
          <xsl:apply-templates select="outil"/>
        </table>
      </body>
    </html>
  </xsl:template>


  <xsl:template match="outil">
      <tr>
	<td>
	  <b>
	    <xsl:apply-templates select="nom"/>
	  </b>
	</td>
	<td>
	    <xsl:apply-templates select="@os"/>
	</td>
	<td>
	    <xsl:apply-templates select="licence"/>
	</td>
	<td>
	  <xsl:apply-templates select="téléchargement"/>
	</td>
	<td>
	  <xsl:apply-templates select="commentaire"/>
	</td>
      </tr>
  </xsl:template>

  <xsl:template match="@os">
    <xsl:value-of select="."/>
  </xsl:template>
  
  <xsl:template match="nom">
      <xsl:element name="a">
      <xsl:attribute name="name">
	<xsl:value-of select="../@xml:id"/>
      </xsl:attribute>  
      </xsl:element>
    <font color="#234567">
      <xsl:apply-templates/>
    </font>
  </xsl:template>

  <xsl:template match="téléchargement">
    <font color="#345678">
      <xsl:apply-templates/>
    </font>
  </xsl:template>


  <xsl:template match="licence">
    <font size="-1">
      <xsl:apply-templates/>
    </font>
  </xsl:template>

  <xsl:template match="url">
    <xsl:element name="a">
      <xsl:attribute name="href">
	<xsl:value-of select="."/>
      </xsl:attribute>
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>

  <xsl:template match="commentaire">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="lien">
    <xsl:variable name="refid">
      <xsl:value-of select="@refid"/>
    </xsl:variable>
    <xsl:element name="a">
      <xsl:attribute name="href">
	<xsl:text>#</xsl:text>
	<xsl:value-of select="@refid"/>
      </xsl:attribute>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="normalize-space(//outil[@xml:id=$refid]/nom)"/>
      <xsl:text>]</xsl:text>
      
    </xsl:element>    
  </xsl:template>

  <xsl:template match="i|b|tt|font|br|ul|li">
    <xsl:copy>
    <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="*">
    <b>INCONNU :
    <xsl:value-of select="name()"/>
  </b>
  </xsl:template>

</xsl:stylesheet>
