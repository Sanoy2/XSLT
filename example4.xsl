<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Cars 4example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
</head>
<body>
    <div class="container">
        <table class="table table-striped">
            <tr>
                <th>Manufacturer</th>
                <th>Model</th>
                <th>Production Year</th>
                <th>Color</th>
                <th>Engine</th>
            </tr>
            <xsl:for-each select="cars/car">
            <xsl:sort select="manufacturer" order="ascending"/> <!-- ascending|descending -->
            <xsl:sort select="model" order="ascending"/> 
            <xsl:if test="engine/@fuelType='gasoline'">
                <tr>
                    <td><xsl:value-of select="manufacturer"/></td>
                    <td><xsl:value-of select="model"/></td>
                    <td><xsl:value-of select="productionYear"/></td>
                    <td><xsl:value-of select="colour"/></td>
                    <td>
                        <ul>
                            <li><xsl:value-of select="engine/@fuelType"/></li>
                            <li><xsl:value-of select="engine/capacity"/></li>
                            <li><xsl:value-of select="engine/power"/></li>
                        </ul>
                    </td>
                </tr>
            </xsl:if>
            </xsl:for-each>
        </table>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
