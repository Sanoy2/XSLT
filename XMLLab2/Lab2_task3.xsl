<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Employees table</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous"/>
    </head>
    <body>
        <div class="container">
            <table class="table table-hover">
                <tr style="text-align: center; font-size: 2em;">
                    <th>Name</th>
                    <th>Job</th>
                    <th>Address</th>
                    <th>Contact</th>
                </tr>
                <xsl:for-each select="employees/employee"> 
                      <tr>    
                         <td>
                            <div>
                                <p><b>First name: </b><xsl:value-of select="name/firstName"/></p>
                                <p><b>Last name: </b><xsl:value-of select="name/lastName"/></p>
                                <p><b>Employee id: </b>
                                    <span class="badge badge-primary badge-pill">
                                        <xsl:value-of select="@id"/>
                                    </span>
                                </p>
                                <xsl:if test="name/additionalName"><p>Additional names:</p>
                                <ul>
                                    <xsl:for-each select="name/additionalName"> 
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                                </xsl:if>
                            </div>
                         </td>
                         <td style="text-align: center;">
                            <p>
                                <b><xsl:value-of select="job/@jobId"/></b>
                            </p>
                            <div style="font-size: 5em;">
                                <xsl:if test="job/@jobId='Project Manager'">
                                    <i class="fas fa-user-tie"></i>
                                </xsl:if>
                                <xsl:if test="job/@jobId='Tester'">
                                    <i class="fas fa-bug"></i>
                                </xsl:if>
                                <xsl:if test="job/@jobId='Developer'">
                                    <i class="fas fa-code"></i>
                                </xsl:if>
                            </div> 
                            
                         </td>
                         <td>
                            <p><b>Street: </b><xsl:value-of select="address/street"/></p>
                            <p>
                                <b>Number: </b><xsl:value-of select="address/number"/>
                                <xsl:if test="address/secondNumber">
                                    /<xsl:value-of select="address/secondNumber"/>
                                </xsl:if>
                            </p>
                            <p><b>City: </b><xsl:value-of select="address/city"/></p>
                            <p><b>Country: </b><xsl:value-of select="address/country"/></p>
                         </td>
                         <td>
                            <p><b>Mobile:</b></p>
                            <xsl:for-each select="contact/mobile"> 
                                <p><xsl:value-of select="."/></p>
                            </xsl:for-each>
                            <p><b>Email:</b></p>
                            <xsl:for-each select="contact/email"> 
                                <p><xsl:value-of select="."/></p>
                            </xsl:for-each>
                         </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-- Author: Krzysztof Tomków -->