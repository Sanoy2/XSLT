<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>Mails</title>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
        </head>

        <body>

            <div class="container">
                <div id="mailsystem" class="tabcontent">
                    <h1>Simple mailing system</h1>
                    <p>Best solution to send e-mails to your clients</p>
                </div>

                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="width: 6em;">Address</span>
                    </div>
                    <input type="text" class="form-control">
                    <xsl:attribute name="value">
                        <xsl:value-of select="client/email" />
                    </xsl:attribute></input>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="width: 6em;">Title</span>
                    </div>
                    <input type="text" class="form-control">
                    <xsl:attribute name="value">
                        <xsl:value-of select="client/title" />
                    </xsl:attribute></input>
                </div>
                <div class="form-group">
                    <label for="comment">Message:</label>
                    <textarea class="form-control" rows="5" id="comment" style="min-height: 24em;">
Dear  <xsl:value-of select="client/author" />, 

Your paper under title <xsl:value-of select="client/title" /> that was register under nr ID <xsl:value-of select="client/id" /> was successfully uploaded to a DepCoS-RELCOMEX conference. 
                                    
You can check that the file is correctly uploaded by following this link: …. 
                                    
Thanks for submitting to DepCoS-RELCOMEX 201x. Until the deadline, you
                                    
can still update your information or transmit a revised file.
                                    
Best regards,
                                    
DepCoS-RELCOMEX chairs.  
                    </textarea>
                    <button type="button" class="btn btn-info btn-block">Send</button>
                </div>
            </div>
        </body>

        </html>
    </xsl:template>
</xsl:stylesheet>
<!-- Author: Krzysztof Tomków -->