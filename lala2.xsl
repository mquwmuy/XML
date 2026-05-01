<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:key name="idxTeachers" match="course" use="teachers/teacher" />
    <xsl:key name="idxKeywords" match="course" use="keywords/keyword" />

    <xsl:template match="/">
        <html>
            <body>
                <h1>Курсы, которые читает Борисов И. О.</h1>
                <ul>
                    <xsl:for-each select="key('idxTeachers', 'Борисов И.О.')">
                        <li>
                            <xsl:value-of select="title" />
                        </li>
                    </xsl:for-each>
                </ul>

                <h1>Курсы, в которых рассматривается XML</h1>
                <ul>
                    <xsl:for-each select="key('idxKeywords', 'XML')">
                        <li>
                            <xsl:value-of select="title" />
                        </li>
                    </xsl:for-each>
                </ul>
                <h1>Курсы, которые читает Борисов И. О. и в которых есть XSLT</h1>
                <ul>
                    <xsl:for-each select="key('idxTeachers', 'Борисов И.О.')[keywords/keyword='XSLT']">
                        <li>
                            <xsl:value-of select="title" />
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

