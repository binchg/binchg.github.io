<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312"/>
<title><xsl:value-of select="root/titleName"/></title>
<link rel="stylesheet" href="../_style/Styles_Home.css" type="text/css"/>
</head>
<body bgColor="#ECF2FE" style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table align="center" width="300px" border="0" cellspacing="0" cellpadding="0">
		<tr><td align="center"><b><xsl:value-of select="root/titleName"/></b></td></tr>
		<tr><td><br/></td></tr>
		<tr><td align="left"><pre><xsl:value-of select="root/content"/></pre></td></tr>
		<tr><td><br/></td></tr>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>