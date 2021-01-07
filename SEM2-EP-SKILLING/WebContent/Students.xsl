<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/Students">
		<html>
			<body>
				<h1 align="center">Student Table</h1>
				<table border="1" align="center">
					<tr>
						<th bgcolor="yellow">studentregno</th>
						<th bgcolor="yellow">studentname</th>
						<th bgcolor="yellow">marks</th>
						<th bgcolor="yellow">studentemail</th>
						<th bgcolor="yellow">studentyear</th>
					</tr>
					<xsl:for-each select="student">
						<tr>
							<td>
								<xsl:value-of select="regno"/>
							</td>
							<td>
								<xsl:value-of select="name"/>
							</td>
							<td>
								<xsl:value-of select="marks"/>
							</td>
							<td>
								<xsl:value-of select="email"/>
							</td>
							<td>
								<xsl:value-of select="class"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>