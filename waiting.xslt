<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/sayings">
      <html>
        <head>
          <link rel="stylesheet" type="text/css" href="waiting.css" />
          <title>Sayings While Waiting</title>
        </head>
        <body>
          <table>
            <tr>
              <td class="title">Sayings while Waiting</td>
            </tr>
            <xsl:for-each select="saying">
              <tr class="stripedodd">
                <td>
                  <xsl:value-of select="."/>
	          <xsl:if test="@author and @author != ''"> - <xsl:value-of select="@author" /></xsl:if>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
