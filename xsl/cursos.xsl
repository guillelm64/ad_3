<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
    <xsl:template match="/">
        <html>
        <head>
            <title>Ciclos Formativos</title>
            <link rel="stylesheet" href="../css/estilo.css" />
        </head>
        <body>
            <div class="titulo">Ciclos Formativos</div>
            <table border="1">
            <tr>
                <th>Ciclo</th>
                <th>Información</th>
            </tr>
            <xsl:for-each select="ciclos/ciclo">
            <tr>
                <td><xsl:value-of select="@id"/></td>            
                <td>
                    <ul>
                    <li><xsl:value-of select="nombre"/></li>
                    <li><xsl:value-of select="grado"/></li>
                    <li><xsl:value-of select="decretoTitulo/@año"/></li>
                    </ul>
                </td>
            </tr>
            </xsl:for-each>
            </table>

            <h3><a href="instituto_XSLT.xsl">Equipo Docente</a></h3>
        </body>
        </html>

    </xsl:template>
   
</xsl:stylesheet>
