<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <head>
	<meta http-equiv="Content-Type" Content="text/html;charset=GB2312"/>
    	<title></title>
	<link rel="stylesheet" href="../_style/styles_Home.css" type="text/css"/>
	<script language="javascript">
	<![CDATA[
	function popWinDown(theID){
		var pop,w=400,h=80;
		var theURL="../_data/down/"+theID.href;				
		if((theID.href)!=""){
			pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=yes,menubar=yes,toolbar=no,location=no,scrollbars=auto,status=no")
			pop.moveTo((screen.width-w)/2,0)
		}
	}
	]]>
	</script>	
    </head>
    <body bgColor="#ECF2FE" style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <table width="300px" border="0" cellspacing="0" cellpadding="0">
	<xsl:apply-templates select="root"/>
    </table>
    </body>
</html>
</xsl:template>
<xsl:template match="root">
<xsl:for-each select="DOWN">
<xsl:sort select="href" order="descending"></xsl:sort>
<xsl:if test="type[.='0']">
<tr>
   <td valign="center" style="font-size:12px;">
	<img src="../Images/home/index_news_dot.gif" width="11" height="14"/>
	<xsl:element name="span">
		<xsl:attribute name="style">cursor:hand</xsl:attribute>
		<xsl:attribute name="onclick">popWinDown(this)</xsl:attribute>
		<xsl:attribute name="href"><xsl:value-of select="href"/></xsl:attribute>
		<xsl:value-of select="name"/>
	</xsl:element>
	<font size="-1"><xsl:value-of select="time"/>上传</font>
   </td>
</tr>
</xsl:if>

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>