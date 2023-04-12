<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            <link rel="stylesheet" type="text/css" href="receptesXML.css"/>
                <title>Recetas Vegetarianas Saludables</title>
            </head>
            <body>
                <xsl:for-each select="receptes/recepta">
                    <img src="{document('')/receptes/recepta/foto}{.}" alt="{.}"/>
                </xsl:for-each>
                <h1>LISTA DE RECETAS</h1>
                <xsl:apply-templates select="//receptes">
                    <xsl:sort select="foto" order="descending"/>
                    <xsl:sort select="temps" order="descending"/>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="recepta">

        <h3> <xsl:value-of select="titol"/> </h3>
    </xsl:template>
</xsl:stylesheet>
