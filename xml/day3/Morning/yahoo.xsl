<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/">
	<html>
		<head>
			<title>Yahoo</title>
		</head>
		<body>
		<br/><br/>
		
		<table >
			<tbody>
				<tr>
					<th>category</th>
				</tr>
				<tr>
					<th>sequence</th>
					<th>name</th>
					<th>url</th>
					<th>title</th>
				</tr>
				<xsl:for-each select="yahooHomePage/searchCategories/category">
					<!--<xsl:sort select="@sequence" order="ascending"/> -->
					<tr>
						<td>
							<xsl:value-of select="@sequence"/>
						</td>
						<td>
							<xsl:value-of select="name"/>
						</td>
						<td>
							<xsl:value-of select="url"/>
						</td>
						<td>
							<xsl:value-of select="title"/>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
