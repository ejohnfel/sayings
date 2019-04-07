<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/latin-sayings">
      <xsl:for-each select="saying">
        <xsl:value-of select="./latin/." />|<xsl:value-of select="./author" />|<xsl:value-of select="./english" />
        <xsl:text>&#xa;&#xd;</xsl:text>
      </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
