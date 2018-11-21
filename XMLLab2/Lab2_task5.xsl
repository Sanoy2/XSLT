<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:media="http://search.yahoo.com/mrss/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:nyt="http://www.nytimes.com/namespaces/rss/2.0">

    <xsl:template match="/">
        <html>

        <head>
            <title>From RSS</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
                crossorigin="anonymous" />
        </head>

        <body style="background-color: #d0d0e1;">
            <div class="container">
                <xsl:for-each select="rss/channel">
                    <div class="row">
                        <div class="col-sm-8">
                            <h1>
                                <xsl:value-of select="title" />
                            </h1>
                        </div>
                        <div class="col-sm-4">
                            <img alt="image_link">
                            <xsl:attribute name="src">
                                <xsl:value-of select="image/url" />
                            </xsl:attribute>
                            </img>
                        </div>
                    </div>
                    <h6>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="link" />
                            </xsl:attribute>
                            Here
                        </a>you can find us
                    </h6>
                    <h6> and
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="atom:link/@href" />
                            </xsl:attribute>
                            here
                        </a>is the link to xml file
                    </h6>
                    <xsl:for-each select="item">
                        <div style="border: 0.3em solid; border-radius: 4em; background-color: #a3a3c2;">
                            <div class="row" style="padding: 1.3em;">
                                <div class="col-sm-2">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="link" />
                                        </xsl:attribute>

                                        <img alt="image_link">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="media:content/@url" />
                                        </xsl:attribute>
                                        </img>
                                    </a>
                                </div>
                                <div class="col-sm-10">
                                    <div class="row">
                                        <h5>
                                            <xsl:value-of select="title" />
                                        </h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <h6>Media credit:</h6>
                                            <p>
                                                <xsl:value-of select="media:credit" />
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <h6>DC creator:</h6>
                                            <p>
                                                <xsl:value-of select="dc:creator" />
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <h3>
                                                <xsl:value-of select="pubDate" />
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding-left: 2em;">
                                    <p>
                                        <xsl:value-of select="description" />
                                    </p>
                                </div>
                                <div class="row" style="padding-left: 2em;">
                                    <p>
                                        <xsl:value-of select="media:description" />
                                    </p>
                                </div>
                                <div class="row" style="padding-left: 2em;">
                                    <p> Category:
                                        <xsl:for-each select="category">
                                            <xsl:value-of select="." />,
                                        </xsl:for-each>
                                    </p>
                                </div>
                            </div>


                        </div>
                        <br />
                    </xsl:for-each>
                    <table class="table table-bordered">
                        <tr>
                            <td>Language:</td>
                            <td>
                                <xsl:value-of select="language" />
                            </td>
                        </tr>
                        <tr>
                            <td>Copyright:</td>
                            <td>
                                <xsl:value-of select="copyright" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last build date:</td>
                            <td>
                                <xsl:value-of select="lastBuildDate" />
                            </td>
                        </tr>
                    </table>
                    <div>
                        <img alt="image_link">
                        <xsl:attribute name="src">
                            <xsl:value-of select="image/url" />
                        </xsl:attribute>
                        </img>
                    </div>

                </xsl:for-each>
            </div>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>

<!-- Author: Krzysztof Tomków -->