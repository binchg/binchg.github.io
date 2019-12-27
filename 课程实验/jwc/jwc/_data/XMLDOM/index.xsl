<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<title><xsl:value-of select="root/TheTitle/title" /></title>
<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css" />

<script language="javaScript"><![CDATA[
function popWinDown(theID){
	var pop,w=400,h=80; 
	var theURL='../_data/down/'+theID.href;
	if ((theID.href)!=""){
	pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=no,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
	pop.moveTo((screen.width-w)/2,0);}
}

function popWinRule(theID){
	var pop,w=620,h=540; 
	var theURL='../_data/RULE/'+theID.href;
	pop=window.open(theURL,"winDWL","width="+w+",height="+h+",resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 	pop.moveTo((screen.width-w)/2,0);	
}
]]></script>
</head>

<body bgColor="#ECF2FE" style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="300" border="0" cellspacing="0" cellpadding="0">
	<xsl:apply-templates select="root" />
	</table>
</body>
</html>
</xsl:template>
	
<xsl:template match="root">		
		<xsl:for-each select="RULES/RULE">
			<tr><td valign="center">
			<img src="../Images/home/index_news_dot.gif" width="11" height="14" />
			<xsl:element name="span">
			<xsl:attribute name="style">cursor:hand</xsl:attribute>
			<xsl:attribute name="onclick">popWinRule(this)</xsl:attribute>
			<xsl:attribute name="href"><xsl:value-of select="href" /></xsl:attribute>
			<xsl:value-of select="name" />
			</xsl:element>

			</td></tr>
		</xsl:for-each>
		
		<xsl:for-each select="DOWN">
			<tr><td valign="center">				
			    <img src="../Images/home/index_news_dot.gif" width="11" height="14" /> 
			    <xsl:element name="span">
			    <xsl:attribute name="style">cursor:hand</xsl:attribute>
			    <xsl:attribute name="onclick">popWinDown(this)</xsl:attribute>
			    <xsl:attribute name="href"><xsl:value-of select="href" /></xsl:attribute>
			    <xsl:value-of select="name"/>		  
			    </xsl:element>			    
			    <xsl:value-of select="time"/>
			    </td>
			</tr>
		</xsl:for-each>
		
		<xsl:for-each select="BBS">
			<tr><td width="100"></td>
			<td><xsl:value-of select="name"/>
			</td></tr>
		</xsl:for-each>
		
		<xsl:for-each select="XL">
			<tr><td width="100" height="200"></td>
			<td><xsl:value-of select="name"/></td>
			</tr>
		</xsl:for-each>
		
		<xsl:for-each select="TIME">
			<tr><td width="100" height="200"></td>
			<td><xsl:value-of select="name"/></td>
		    	</tr>
		</xsl:for-each>
		
		<xsl:for-each select="PERSON">
			<tr><td width="100" height="200"></td>
			<td><xsl:value-of select="name"/></td>
			</tr>
		</xsl:for-each>
		
		<xsl:for-each select="DEPT">
			<tr><td width="100" height="200"></td>
			<td><xsl:value-of select="name"/></td>
			</tr>
		</xsl:for-each>
</xsl:template>

</xsl:stylesheet>
