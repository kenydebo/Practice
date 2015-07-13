<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template match="/"> <!-- the "/" tells the stylesheet to look at the root element of the xml file -->
	<!-- all our work in this classs is going to happen inside this tag -->
	<html>
		<head>
			<title>Hello World</title>
		</head>
		<body><!-- use the xpath to point the data i want to output -->
			<xsl:value-of select="sait/courses/course"/>
			<br/><br/>
			<table border="1" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<th>Course Code</th>
						<th>Course Name</th>
						<th>Course Instructor</th>
					</tr>
					<xsl:for-each select="sait/courses/course">
						<!-- everything u wan to be output needs to be nested in the foreach tag -->
						<tr>
						<!-- because these selects are inside my for-each (which has 		the xpath of sait/courses/course) i dont need the full xpath here -->
							<td> 
								<xsl:value-of select="code"/>
							</td>
														<td>
								<xsl:value-of select="name"/>
							</td>
														<td>
								<xsl:value-of select="instructor"/>
							</td>
						</tr>
					
					</xsl:for-each>
				</tbody>
			</table>
		</body>
	</html>
	
</xsl:template>

</xsl:stylesheet>
