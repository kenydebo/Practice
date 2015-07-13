<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/">
<html>
	<head>
		<title>Canada info</title>
	</head>
	<body>
		About Canada:<br/>
		<xsl:value-of select="canada/capital/@name"/>
		<br/><br/>
		<table>
			<tbody>
				<tr>
					<th>Provinces</th>
				</tr>
				<tr>
					<th>Name</th>
					<th>Language(s)</th>
					<th>Population</th>
				</tr>
				<xsl:for-each select="canada/provinces/province">
					<xsl:sort select="@name" order="descending"/>
					<xsl:call-template name="jurisdictionTemplate"/>
				</xsl:for-each>
			</tbody>
		</table>
		
		<br/>
				<table>
			<tbody>
				<tr>
					<th>Territories</th>
				</tr>
				<tr>
					<th>Name</th>
					<th>Language(s)</th>
					<th>Population</th>
				</tr>
				<xsl:for-each select="canada/territories/territory">
				    <xsl:sort select="@name"/>
					<xsl:call-template name="jurisdictionTemplate"/>
				</xsl:for-each>
			</tbody>
		</table>
	</body>
</html>

</xsl:template>

<xsl:template name="jurisdictionTemplate">
				<tr>
					<xsl:if test="position() mod 2 = 0">
						<xsl:attribute name="bgcolor">#EAEAEA</xsl:attribute>
					</xsl:if>
						<td>
							<xsl:value-of select="@name"/>
						</td>
						<td>
							<xsl:value-of select="language"/>
						</td>
						<td>
							<xsl:value-of select="population"/>
						</td>
					</tr>
</xsl:template>

</xsl:stylesheet>
