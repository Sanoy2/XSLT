<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>Cars 1example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
    <table>
            <tr>
                <th>Manufacturer</th>
                <th>Model</th>
                <th>Production Year</th>
                <th>Color</th>
                <th>Engine</th>
            </tr>
            <xsl:for-each select="cars/car">
            <xsl:sort select="manufacturer" order="ascending"/> <!-- ascending|descending -->
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
                            <li><xsl:value-of select="engine/structure"/></li>
                        </ul>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
