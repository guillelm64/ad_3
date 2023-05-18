<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">	
		<html>
            <head>
                <title>Instituto</title>
                <link rel="stylesheet" href="../css/estilo.css" />
            </head>
            <body>
                <div class="titulo"><xsl:value-of select="instituto/empresa"/></div>
                <h2>Equipo Docente</h2>
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
                    <td><a href="../html/contacto.html">Contacta ahora</a></td>
                    </tr>
                </xsl:for-each>
                </table>
                <h2>Formación</h2>
                <table border="1">
                    <tr>
                    <th>Ciclo</th>
                    <th>Información</th>
                    </tr>
                <xsl:for-each select="instituto/ciclos/ciclo">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><a href="../xsl/cursos.xsl">Más informacón</a></td>
                    </tr>
                </xsl:for-each>
                </table>
                <section>
                    <h2>Información adicional</h2>
                    <ul class="lista">
                    <xsl:for-each select="instituto/ciclos/ciclo">
                        <li class="encabezado"><xsl:value-of select="@id"/>
                            <ul class="relleno">
                                <li><xsl:value-of select="nombre"/></li><br/>
                                <li><xsl:value-of select="grado"/></li><br/>
                                <li><xsl:value-of select="decretoTitulo/@año"/></li><br/>
                            </ul>
                        </li>  
                                            
                    </xsl:for-each>
                    </ul>
                </section>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>