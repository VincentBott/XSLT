<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>K3</title>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="naam">
        <div>
            <xsl:value-of select="."/>
        </div>
    </xsl:template>
</xsl:transform>