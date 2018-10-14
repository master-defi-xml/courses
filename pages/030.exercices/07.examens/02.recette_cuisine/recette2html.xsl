<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
		version="1.0">

    <xsl:output method="html" 
		indent="yes" 
		doctype-public="http://www.w3.org/1999/xhtml"/>

    <xsl:template match="recette">
	<html>
	    <head>
		<title>
		    <xsl:text>Mes recettes : </xsl:text>
		    <xsl:value-of select="titre"/>
		</title>
		<meta http-equiv="Content-Type" 
		      content="text/html; charset=utf-8" /> 
		<link rel="stylesheet" 
		      href="recette.css" 
		      type="text/css" media="screen" /> 
	    </head>
	    <body>
		<h1><xsl:value-of select="titre"/></h1>
		<table id="entete">
		    <tr>
			<td>
			    <xsl:apply-templates select="illustration"/>
			</td>
			<td>
			    <xsl:apply-templates select="difficulté"/>
			    <br/>
			    <xsl:apply-templates select="durée"/>
			</td>
		    </tr>
		</table>
		
		<xsl:apply-templates select="liste_ingrédients"/>
		<xsl:apply-templates select="liste_étapes"/>
		<div id="pied">
		    <xsl:apply-templates select="accord_boisson"/>
		    <xsl:apply-templates select="glossaire"/>
		</div>
		
	    </body>
	</html>
    </xsl:template>

    <xsl:template match="illustration">
	<img src="{@href}" alt="image recette"/>
	<!--
	    Équivalent à :
	<img alt="image recette">
	    <xsl:attribute name="src">
		<xsl:value-of select="@href"/>
	    </xsl:attribute>
	</img>
	-->
    </xsl:template>

    <xsl:template match="difficulté">
	<xsl:text>Difficulté : </xsl:text>
	<strong>
	    <xsl:value-of select="."/>
	</strong>
	<br/>
    </xsl:template>

    <xsl:template match="durée">
	<xsl:choose>
	    <xsl:when test="@type='total'">
		<xsl:text>Temps de préparation et cuisson</xsl:text>
	    </xsl:when>
	    <xsl:when test="@type='cuisson'">
		<xsl:text>Temps de cuisson</xsl:text>
	    </xsl:when>
	    <xsl:when test="@type='préparation'">
		<xsl:text>Temps de préparation</xsl:text>
	    </xsl:when>
	</xsl:choose>
	<xsl:text> : </xsl:text>
	<strong>
	    <xsl:value-of select="."/>
	</strong>
    </xsl:template>

    <xsl:template match="liste_ingrédients">
	<div id="ingredients">
	    <h2>Ingédients :</h2>
	    <ul>
		<xsl:apply-templates/>
	    </ul>
	</div>
    </xsl:template>

    <xsl:template match="ingrédient">
	<li>
	    <xsl:choose>
		<xsl:when test="@unité">
		    <xsl:apply-templates/>
		    <xsl:text> : </xsl:text>
		    <strong>
		    <xsl:value-of select="@quantité"/>
		    <xsl:text> </xsl:text>
			<xsl:value-of select="@unité"/>
		    </strong>
		</xsl:when>
		<xsl:otherwise>
		    <xsl:value-of select="@quantité"/>
		    <xsl:text> </xsl:text>
		    <xsl:apply-templates/>
		</xsl:otherwise>
	    </xsl:choose>
	</li>
    </xsl:template>



    <xsl:template match="liste_étapes">
	<div id="etapes">
	    <h2>Préparation : </h2>
	    <ol>
		<xsl:apply-templates/>
	    </ol>
	</div>
    </xsl:template>


    <xsl:template match="étape">
	<li>
	    <xsl:apply-templates/>
	</li>
    </xsl:template>

    <xsl:template match="accord_boisson">
	<h2>
	    <xsl:choose>
		<xsl:when test="contains(@type,'vin')">
		    <xsl:text>Accord met-vin : </xsl:text>
		</xsl:when>
		<xsl:otherwise>
		    <xsl:text>Quelle boisson choisir ? </xsl:text>
		</xsl:otherwise>
	    </xsl:choose>
	</h2>
	<xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="glossaire">
    </xsl:template>

</xsl:stylesheet>