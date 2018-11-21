<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:media="http://search.yahoo.com/mrss/" xmlns:atom="http://www.w3.org/2005/Atom" xmlns:nyt="http://www.nytimes.com/namespaces/rss/2.0">

    <xsl:template match="rss/channel">
        <html>

        <head>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        </head>

        <body>
            <h1>
                <xsl:value-of select="title" />
            </h1>
            <xsl:for-each select="item">
                <b>
                    <a href="{link}">
                        <xsl:value-of select="title" />
                    </a>
                </b>
                <br/>
                <p>
                    <xsl:value-of select="media:description" />
                </p>
            </xsl:for-each>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>