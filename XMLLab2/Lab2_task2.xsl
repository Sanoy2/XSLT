<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>TV Schedule</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
</head>
    <body class="container">
        <div>
            <table class="table table-hover">
                <xsl:for-each select="TVSCHEDULE/CHANNEL">
                    <tr>
                        <th colspan="5"><h2><xsl:value-of select="BANNER"/></h2></th>
                    </tr>
                    <xsl:for-each select="DAY">
                        <tr>
                            <th colspan="2">
                                <h4><xsl:value-of select="DATE"/></h4>
                            </th>
                            <th>
                                Language
                            </th>
                            <th>
                                Description
                            </th>
                            <th>
                                Rating
                            </th>
                        </tr>
                        <xsl:for-each select="PROGRAMSLOT">
                            <tr>
                                <td><xsl:value-of select="TIME"/></td>
                                <td><xsl:value-of select="TITLE"/></td>

                                <xsl:choose>
                                    <xsl:when test="TITLE/@LANGUAGE">
                                        <td><xsl:value-of select="TITLE/@LANGUAGE"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>-</td>
                                    </xsl:otherwise>
                                </xsl:choose>

                                <xsl:choose>
                                    <xsl:when test="DESCRIPTION">
                                        <td><xsl:value-of select="DESCRIPTION"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>-</td>
                                    </xsl:otherwise>
                                </xsl:choose>

                                <xsl:choose>
                                    <xsl:when test="TITLE/@RATING">
                                        <td><xsl:value-of select="TITLE/@RATING"/></td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>-</td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each>
            </table>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>

<!-- Author: Krzysztof Tomków, index number: 218514 -->