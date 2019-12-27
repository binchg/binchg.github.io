<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html;charset=GB2312"/>
	<title><xsl:value-of select="root/title"/></title>
	<link rel="stylesheet" href="../_style/Styles_Home.css" type="text/css"/>
	</head>
	<body style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=falase"  onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
	<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td bgcolor="#CCCCCC" width="20%" height="100%" align="center"></td>
	<td width="60%"  height="100%" align="center">
	  <table width="530" height="100%" cellspacing="0" cellpadding="0" align="center">
        <tr><td height="5"></td></tr>
		<tr><td height="10" align="center">		
		  <table width="90%" height="100%" border="0" align="center" valign="top">
		    <tr>
			    <td  height="25" align="center" valign="top"><font style="color:red" /><b><big><xsl:value-of select="root/title"/></big></b></td>
			</tr>

		    <tr><td width="80%" height="1px" align="center" valign="top"><hr/></td></tr>
			<tr> 
              <td valign="top" align="center" width="100%" style="font-size:14px;">
              <textarea readonly="true" style="width:430px;overflow-y:visible;border:0px;BACKGROUND-COLOR:transparent;font-size:14px;font-family:宋体 Fixedsys;">
				<xsl:value-of select="root/content"/>
			  </textarea> 
              </td>
            </tr> 			
        </table>
	      </td>
        </tr>
	
        <tr><td height="5"></td></tr>
	  </table>
	</td>
    <td bgcolor="#CCCCCC" width="20%" height="100%" ></td>
  </tr>
</table>

	</body>
</html>
</xsl:template>
</xsl:stylesheet>