<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
				<xsl:apply-templates select="database"/>
	</xsl:template>
	<xsl:template match="database">
		<xsl:element name="database">
			<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
				<xsl:apply-templates select="table"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="table">
		<xsl:element name="table">
			<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
			<xsl:apply-templates select="field"/>
		</xsl:element>
	</xsl:template>
	<xsl:template match="field">
		<xsl:element name="field">
			<xsl:attribute name="name"><xsl:value-of select="@name"/></xsl:attribute>
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
