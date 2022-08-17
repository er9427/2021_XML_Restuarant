<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">
		<html>
		<head>
			<title>Restaurant Items</title>
			<style>
			h1 { color:#0D3427 }
			img { margin: 0px 10px 0px 10px }
			body { background-color: #78C0B3; font-family:Arial, Helvetica, sans-serif }
			</style>
		</head>
		<body>
			<xsl:for-each select="/Items/Item">
				<h1>
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="photo">
							</xsl:value-of>
						</xsl:attribute>
					</img>
					<xsl:text> Name: </xsl:text>
					<xsl:value-of select="Name" />
					<xsl:text> - Price: </xsl:text>
					<xsl:value-of select="Price" />
				</h1>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
