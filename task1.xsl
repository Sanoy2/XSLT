<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
    <table>
        <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Phone</th>
        <th>Mobile</th>
        <th>job</th>
        <th>city</th>
        </tr>
          <xsl:for-each select="people/person">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="surname"/></td>
              <td><xsl:value-of select="phone"/></td>
              <td><xsl:value-of select="mobile"/></td>
              <td><xsl:value-of select="job"/></td>
              <td><xsl:value-of select="homeAddres/city"/></td>
            </tr>
      </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

