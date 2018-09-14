<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
    <xsl:template match="/boeken">
        <html>
            <head></head>
            <body>
                <table>
                    <tr>
                        <th><xsl:text>Auteur</xsl:text></th>
                        <th><xsl:text>Titel</xsl:text></th>
                        <th><xsl:text>Prijs</xsl:text></th>
                    </tr>
                    <xsl:apply-templates >
                        <xsl:sort select="prijs" order="ascending" />
                    </xsl:apply-templates>

                    <tr>
                        <td></td><td>Totaal: </td>
                        <td>
                            <xsl:value-of select="sum(boek/prijs)" />
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="boek">
        <tr>
            <td><xsl:value-of select="auteur" /></td>
            <td><xsl:value-of select="titel" /></td>
            <td><xsl:value-of select="prijs" /></td>
        </tr>
    </xsl:template>
</xsl:transform>

