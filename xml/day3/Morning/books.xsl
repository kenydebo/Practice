<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/">
<html>
	<head>
		<title>Books In Class</title>
	</head>
	<body>
		<xsl:value-of select="books/book"/>
		
		<br/><br/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tbody>
				<tr bgcolor="#9acd32">
					<th>title</th>
					<th>author</th>
					<th>isbnMunber</th>
				</tr>
				<xsl:for-each select="books/book">
					<tr>
					<xsl:if test="position() mod 2 = 0">
						<xsl:attribute name="bgcolor">#9acd20</xsl:attribute>
					</xsl:if>
						<td>
							<xsl:value-of select="title"/>
						</td>
						<td>
							<xsl:value-of select="author"/>
						</td>
						<td>
							<xsl:value-of select="@isbnNumber"/>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</body>
</html>

</xsl:template>


</xsl:stylesheet>
