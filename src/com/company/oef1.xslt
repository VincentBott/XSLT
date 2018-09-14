<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="klanten">
        <xsl:element name="table">
            <xsl:attribute name="style">border-width:medium;border-style:double</xsl:attribute>
            <xsl:element name="tr">
                <xsl:element name="th">Provincie</xsl:element>
                <xsl:element name="th">Naam</xsl:element>
                <xsl:element name="th">Bedrag</xsl:element>
            </xsl:element>
            <xsl:apply-templates >
                <xsl:sort select="@provincie" order="ascending"/>
            </xsl:apply-templates>
        </xsl:element>
    </xsl:template>
    <xsl:template match="klant">
        <xsl:element name="tr">
            <xsl:if test="bedrag > 1000">
                <xsl:attribute name="style">background-color:red</xsl:attribute>
            </xsl:if>
            <xsl:element name="td"><xsl:value-of select="@provincie"/></xsl:element>
            <xsl:element name="td"><xsl:value-of select="naam"/></xsl:element>
            <xsl:element name="td"><xsl:value-of select="bedrag"/></xsl:element>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>

