<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/latin-sayings">
      <html>
        <head>
          <link rel="stylesheet" type="text/css" href="latin-sayings.css" />
          <title>Latin Sayings</title>
        </head>
        <body>
          <table>
            <xsl:for-each select="saying">
              <tr>
                <td>
                  <xsl:value-of select="latin"/>
                </td>
                <td>
                  <xsl:value-of select="author"/>
                </td>
              </tr>
              <tr>
                <td colspan="2">
                  <xsl:value-of select="english"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
