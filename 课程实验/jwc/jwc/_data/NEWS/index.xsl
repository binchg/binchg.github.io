<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
	<link REL="Stylesheet" HREF="../sys/Styles_Home.css" TYPE="text/css" />
	<xsl:apply-templates select="root" />
</xsl:template>

<xsl:template match="root">
<html>
<head>
<title><xsl:value-of select="TheHead/title"/></title>
<SCRIPT LANGUAGE="javascript"><![CDATA[
function popWinJWDT(theID){
	if ((theID.href)!="")
	{var pop,w=1,h=1; 
	var theURL='./'+theID.href; //window.navigate(theURL);(screen.width-w)/2100
	//alert(theURL);
	//width="+w+",height="+h+",
	pop=window.open(theURL,"winDWLJeasonDown","fullscreen=yes,resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=no,status=no")
 	pop.moveTo(0,0);
	}
}
]]>
</SCRIPT>
</head>

<body style="overflow:auto;" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form>
<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
  <tr>
    <td bgcolor="#CDF2E3" width="20%" height="100%"><br/></td>
	<td width="50%" align="center" height="100%">
	  <table width="530" height="100%" cellspacing="0" cellpadding="0" align="center">
        <tr><td height="5"></td></tr>
		<tr><td height="10" align="center" >
		  <table width="94%" >
		    <tr><td width="95%" height="5" align="center"><font style="color:red" /><b><big>教务动态</big></b></td>
		        </tr>

		    <tr><td width="100%" height="1" valign="top" align="center"><hr/></td></tr>
		  </table>
		</td></tr>
        <tr>
          <td width="530" valign="top" align="center" colspan="2">
	      <table width="90%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
	        <xsl:if test="TheBody/adjunct[.!='0']">
				<tr valign="top" align="left" height="26px">
					<td width="100%" style="font-size:12px;">
					下载附件：
						<xsl:element name="span">
						<xsl:attribute name="style">cursor:hand;color:blue;</xsl:attribute>
						<xsl:attribute name="onclick">popWinJWDT(this)</xsl:attribute>
						<xsl:attribute name="href"><xsl:value-of select="TheBody/adjunct"/></xsl:attribute>
						<xsl:value-of select="TheBody/adjName"/>
						</xsl:element>
					</td>
				</tr>
			</xsl:if>
		    <tr valign="top"><td height="28px" align="center">
		    	<table height="100%"><tr><td height="100%" style="font-size:20px;">
			<b><xsl:value-of select="TheHead/title"/></b><br></br></td></tr></table>
		    </td></tr>
			<tr> 
              <td valign="top" align="left" width="100%" style="font-size:14px;">
              <textarea readonly="true" style="width:430px;overflow-y:visible;border:0px;BACKGROUND-COLOR:transparent;font-size:14px;font-family:宋体 Fixedsys;line-height:20px;text-indent:0px;">
				<xsl:value-of select="TheBody/content" />
              </textarea></td>
            </tr> 			
			
			<tr><td height="10%" align="right">
			      <table height="100%"><tr><td height="100%" style="font-size:16px;"><xsl:value-of select="TheBody/fromname"/></td><td width="50px"></td></tr></table>
				</td>
		    </tr>
			
			<tr><td height="10%" size="16px" align="right">
			      <table height="100%"><tr><td height="100%"><xsl:value-of select="TheBody/time"/></td></tr></table>
				</td>
		    </tr>
          </table>
	      </td>
        </tr>
	
        <tr><td height="5"><br/></td></tr>
	  </table>
	</td>
    <td bgcolor="#CDF2E3" width="20%" height="100%"><br/></td>
  </tr>
</table>

</form>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

