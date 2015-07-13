<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/"> <!-- THE '/' TELLS THE STYLESHEET TO LOOK AT THE ROOT ELEMENT -->

	<!-- PUT ALL CLASS WITHIN THIS TAG -->

	<html>
		<head>
			<title>HELLO WORLD</title>
		</head>
		<body>
		
				<table border="1" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th>Title</th>
							<th>Author</th>
							<th>ISBN</th>
						</tr>
						<xsl:for-each select="books/book">
							<xsl:sort select="author" order="descending"/>
							<xsl:variable name="altColor">
							<xsl:choose>
								<xsl:when test="position() mod 2 = 0">#FFFFFF</xsl:when>
								<xsl:otherwise>#D3DFEE</xsl:otherwise>
							</xsl:choose>
							</xsl:variable>
							<tr bgcolor="{$altColor}">
								<td>
									<xsl:value-of select="title"/>
								</td>
								<td>
									<xsl:value-of select="author"/>
								</td>
								<td>
									<xsl:value-of select="@isbnNumber" />
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
		
		</body>
	</html>

</xsl:template>
</xsl:stylesheet>
