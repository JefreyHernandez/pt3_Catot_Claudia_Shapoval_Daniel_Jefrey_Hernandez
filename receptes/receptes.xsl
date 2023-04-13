<?xml version='1.0' encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/receptes">
        <html>
            <head>
                <link rel="stylesheet" href="./receptesXML.css"/>
            </head>
            <body>
                <xsl:apply-templates select="recepta"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="recepta">
        <div>
            <a href="{link}" target="_blank">
                <img src="{foto}" alt="foto"/>
            </a>
            <p><xsl:value-of select="titulo"/></p>
        </div>
    </xsl:template>
</xsl:stylesheet>

