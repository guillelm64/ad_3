<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">	
		<html>
            <head>
                <h1><xsl:value-of select="instituto/empresa"/></h1>
            </head>
            <body>
                <table border="1">
                <tr>
                    <th>Cargo</th>
                    <th>Nombre</th>
                    <th>Contacto</th>
                </tr>
                <tr>
                    <td>Director</td>
                    <td><xsl:value-of select="instituto/director/nombre"/></td>
                    <td><xsl:value-of select="instituto/director/despacho"/></td>
                </tr>
                <tr>
                    <td>Jefe de Estudios</td>
                    <td><xsl:value-of select="instituto/jefe_estudios/nombre"/></td>
                    <td><xsl:value-of select="instituto/jefe_estudios/despacho"/></td>
                </tr>
                <xsl:for-each select="instituto/profesores/profesor">
                    <tr>
                    <td>Profesor</td>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><a href="contacto.html">Contacta ahora</a></td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>