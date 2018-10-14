<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:toto="http://www.w3.org/1999/02/22-rdf-syntax-ns#"	
                xmlns:titi="http://purl.org/rss/1.0/" 
                xmlns="">
			
    <xsl:output method="xml"
                indent="yes"/>
    <xsl:template match="/toto:RDF">
        <doc>
            <xsl:apply-templates select="titi:channel/titi:items/toto:Seq/toto:li"/>
        </doc>
    </xsl:template>

    <xsl:template match="toto:li">
        <url>
            <xsl:value-of select="@resource"/>
        </url>
    </xsl:template>
</xsl:stylesheet>