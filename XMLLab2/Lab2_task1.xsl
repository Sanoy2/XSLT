<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Person</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    </head>
    <body>
        <div class="container">
            <table class="table table-bordered">
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Mobile</th>
                    <th>Job</th>
                    <th>Birth date</th>
                </tr>
                <xsl:for-each select="person">
                    <tr>
                        <td>
                            <p>First name: <xsl:value-of select="name"/> </p>
                            <p>Last name: <xsl:value-of select="surname"/> </p>
                        </td>
                        <td>
                            <p>Street: <xsl:value-of select="homeAddres/street"/> <xsl:value-of select="homeAddres/number"/> </p>
                            <p>City: <xsl:value-of select="homeAddres/city"/> </p>
                            <p>Zip code: <xsl:value-of select="homeAddres/zipCode"/> </p>
                            <p>Country: <xsl:value-of select="homeAddres/country"/> </p>
                        </td>
                        <td>
                            <p><xsl:value-of select="phone"/> </p>
                        </td>
                        <td>
                            <p><xsl:value-of select="mobile"/> </p>
                        </td>
                        <td>
                            <p><xsl:value-of select="job"/> </p>
                        </td>
                        <td>
                            <p>
                                <xsl:value-of select="birthDate/day"/>.<xsl:value-of select="birthDate/month"/>.<xsl:value-of select="birthDate/year"/>
                            </p>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>

<!-- Author: Krzysztof Tomków, index number: 218514 -->