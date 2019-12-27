<?xml version="1.0" encoding="gb2312" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
<title><xsl:value-of select="root/TheTitle/vtitle"/></title>
<link rel="stylesheet" href="../_style/styles_rpt.css" type="text/css"/>

<script language="javascript"><![CDATA[
function checkparent(theID){
	var s=theID.theCount;
	perant.document.all.theCount.innerHTML=s;
}
]]></script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" id="tableReportMain" border="1" ID="ID_Table" CELLPADDING="0" CELLSPACING="0"  bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
<xsl:apply-templates select="root"/>
</table>
</body>
</html>
</xsl:template>
<xsl:template match="root">
	 <xsl:for-each select="TheBody/Record">
	 <tr>
	 <td width="4%">
	 <xsl:value-of select="Fd_0"/><br/>
	 </td>
	 <td width="24%">
	 <xsl:value-of select="Fd_1"/><br/>
	 </td>
	 <td width="8%">
	 <xsl:value-of select="Fd_2"/><br/>
	 </td>
	 <td width="8%">
	 <xsl:value-of select="Fd_3"/><br/>
	 </td>
	 <td width="5%">
	 <xsl:value-of select="Fd_4"/><br/>
	 </td>
	 <td width="15%">
	 <xsl:value-of select="Fd_5"/><br/>
	 </td>
	 <td width="10%">
	 <xsl:value-of select="Fd_6"/><br/>
	 </td>
	 <td width="16%">
	 <xsl:value-of select="Fd_7"/><br/>
	 </td>
	 </tr>
	 </xsl:for-each>
</xsl:template>
</xsl:stylesheet>