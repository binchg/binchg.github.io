<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html>
<head>
<meta http-equiv="Content-Type" Content="text/html;charset=gb2312"/>
<title><xsl:value-of select="root/TheTitle/title"/></title>
<link rel="stylesheet" href="../_style/styles_Home.css" type="text/css"/>
<script language="javascript">
<![CDATA[
	function popWinXKJS(theID){
	var pop,w=665,h=540; 
	var theURL='../_data/XKJS/xkjs.aspx?href='+theID.href;
	pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 	pop.moveTo((screen.width-w)/2,0);	
}
]]>
</script>
</head>
<body bgColor="#ECF2FE" style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0">
<!--tr valign="middle" align="center" height="28px">
	<td>
		<b><xsl:value-of select="root/TheTitle/title"/></b>
	</td>
</tr-->
<xsl:for-each select="root/Subjects/subject">
	<tr valign="middle" align="left"><td>
		<img src="../Images/home/index_news_dot.gif" width="11" height="14" />
		<xsl:element name="span">
			<xsl:attribute name="style">cursor:hand</xsl:attribute>
			<xsl:attribute name="onclick">popWinXKJS(this)</xsl:attribute>
			<xsl:attribute name="href"><xsl:value-of select="href" /></xsl:attribute>
			<xsl:value-of select="name" />
			</xsl:element>
	</td></tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>