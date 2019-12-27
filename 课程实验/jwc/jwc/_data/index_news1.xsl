<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<title><xsl:value-of select="root/TheTitle/title" /></title>
<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css" />

<SCRIPT LANGUAGE="javascript"><![CDATA[
function popWinJWDT(theID){
	if ((theID.href)!="")
	{var pop,w=660,h=550; 
	var theURL='../_data/news/'+theID.href; //window.navigate(theURL);
	//alert(theURL);
	pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 	pop.moveTo((screen.width-w)/2,100);
	}
}
]]>
<![CDATA[
function popWinMore(){
	var pop,w=550,h=340; 
	var theURL="index_allnews.aspx"; 
	pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=no,status=no")
 	pop.moveTo((screen.width-w)/2,100);
}
]]>
</SCRIPT>

</head>
<body style="overflow:hidden;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="300" border="0" cellspacing="0" cellpadding="0">
	<xsl:apply-templates select="root" />
	</table>
</body>
</html>
</xsl:template>


<xsl:template match="root">
<table  height="100%" width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr><td valign="center" height="90%">
			<xsl:for-each select="NEWS">
						<xsl:sort select="href" order="descending" ></xsl:sort>
							<xsl:if test="position() &lt;12">
								<xsl:if test="issuance[.='1']">	
								<xsl:if test="flag[.='0']"> 
									<img src="../Images/home/index_news_dot.gif" width="11" height="14" />			
									<xsl:element name="span">
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onclick">popWinJWDT(this)</xsl:attribute>
									<xsl:attribute name="href"><xsl:value-of select="href" /></xsl:attribute>
									<xsl:value-of select="name" />
									</xsl:element>
									<font size="-1">  [<xsl:value-of select="time" />]</font><br/>
								</xsl:if>								
								</xsl:if>
							</xsl:if>
					</xsl:for-each>				
				<MARQUEE onmouseover="this.stop()" onmouseout="this.start()" scrollAmount="2" scrollDelay="100" direction="up" width="310" height="180">
					<xsl:for-each select="NEWS">
						<xsl:sort select="href" order="descending" ></xsl:sort>
							<xsl:if test="position() &lt;12">
								<xsl:if test="issuance[.='1']">	
								<xsl:if test="flag[.='1']"> 
									<img src="../Images/home/index_news_dot.gif" width="11" height="14" />			
									<xsl:element name="span">
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onclick">popWinJWDT(this)</xsl:attribute>
									<xsl:attribute name="href"><xsl:value-of select="href" /></xsl:attribute>
									<xsl:value-of select="name" />
									</xsl:element>
									<font size="-1">  [<xsl:value-of select="time" />]</font><br/>
								</xsl:if>								
								</xsl:if>
							</xsl:if>
					</xsl:for-each>						
				</MARQUEE>
						
				</td></tr>							
			<tr><td align="right" height="18px" ><span style="cursor:hand" onclick="popWinMore()" href="javascript:void(0)" >查看更多教务动态请点击>></span></td></tr>
</table>
</xsl:template>

</xsl:stylesheet>
