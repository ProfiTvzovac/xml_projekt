<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/kanye">
    <html>
      <head>
        <title>Kanye West</title>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" type="text/css" href="default.css"/>
        <link rel="stylesheet" type="text/css" href="fonts.css"/>
      </head>
      <body>
        <div id="wrapper">
          <div id="menu-wrapper">
            <div id="menu" class="container">
              <ul>
                <li class="current_page_item"><a href="#tkoje">Tko je</a></li>
                <li><a href="#ranizivot">Rani život</a></li>
                <li><a href="#genije">Muzički genije</a></li>
                <li><a href="#albumi">Albumi</a></li>
                <li><a href="#kontakt">Kontakt</a></li>
              </ul>
            </div>
          </div>

          <div id="page" class="container">
            <section id="tkoje">
              <h2>Tko je Kanye West</h2>
              <p><xsl:value-of select="osobno/tko_je"/></p>
            </section>

            <section id="ranizivot">
              <h2>Rani život</h2>
              <p><xsl:value-of select="osobno/rani_zivot"/></p>
            </section>

            <section id="genije">
              <h2>Muzički genije</h2>
              <p><xsl:value-of select="osobno/muzicki_genije"/></p>
            </section>

            <section id="albumi">
              <h2>Albumi</h2>
              <ul>
                <xsl:for-each select="albumi/album">
                  <li><b><xsl:value-of select="naziv"/></b> (<xsl:value-of select="godina"/>)</li>
                </xsl:for-each>
              </ul>
            </section>

            <section id="kontakt">
              <h2>Kontakt</h2>
              <p>Email: <xsl:value-of select="kontakt/email"/></p>
              <p>Telefon: <xsl:value-of select="kontakt/telefon"/></p>
              <p>Adresa: <xsl:value-of select="kontakt/adresa"/></p>
            </section>
          </div>

          <div id="copyright" class="container">
            <p>Paolo Brkić, 2025.</p>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
