<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/"> <!-- the "/" tells the stylesheet to look at the root element of the xml file -->
	<!-- all our work in this classs is going to happen inside this tag -->
	<html>
		<head>
			<title>Telephone Bill</title>
		</head>
		<body>
		<br/><br/>
			<table>
				<tbody>Customer Info
					<tr>Name:</tr>
					<tr>Address:</tr>
					<tr>City:</tr>
					<tr>Province</tr>
					<xsl:for-each select="telephoneBill/customer">
						<tr>
							<td>
								<xsl:value-of select="name"/>
							</td>
							<td>
								<xsl:value-of select="address"/>
							</td>
							<td>
								<xsl:value-of select="city"/>
							</td>
							<td>
								<xsl:value-of select="province"/>
							</td>
							<td>
								<xsl:value-of select="@phoneNumber"/>
							</td>
						</tr>
					</xsl:for-each>
				</tbody>
			</table>
			<br/><br/>
			<table border="1" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th>number</th>
						<th>date</th>
						<th>durationInMinutes</th>
						<th>charge</th>
					</tr>	
					<xsl:for-each select="telephoneBill/call">
						<tr>
							<td>
								<xsl:value-of select="@number"/>
							</td>
								<td>
								<xsl:value-of select="@date"/>
							</td>
								<td>
								<xsl:value-of select="@durationInMinutes"/>
							</td>
								<td>
								<xsl:value-of select="@charge"/>
							</td>
						</tr>
					
					</xsl:for-each>
				</tbody>
			</table>
		</body>
	</html>
	
	
</xsl:template>

</xsl:stylesheet>
