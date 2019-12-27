<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
		<head>
		 <meta http-equiv="content-Type" content="text/html;charset=gb2312"/>
		 <link rel="stylesheet" href="../_style/Styles_Rpt_.css" type="text/css"/>
		 <title>
		 	<xsl:value-of select="root/theTitle/title"/>
		 </title>
		</head>
		<body bgcolor="#ECF2FE" style="overflow:auto;" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
			<table align="center" width="550px" border="0" cellspacing="0" cellpadding="0">
				<!--tr valign="middle" align="center" height="28px"><td>
					<b><xsl:value-of select="root/theTitle/title"/></b>
				</td></tr-->
				<tr valign="middle" align="center"><td>
				   <table align="center" width="100%" border="1" cellspacing="0" cellpadding="0" bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
							<tr valign="middle" align="center" class="T">
								<td width="20%">角色</td>
								<td width="15%">管理人员</td>
								<td width="25%">部门</td>
								<td width="20%">职务</td>
								<td width="20%">办公电话</td>
							</tr>
							<xsl:for-each select="root/theBody/GLRY">
							<xsl:element name="tr">
								<xsl:attribute name="valign">middle</xsl:attribute>
								<xsl:attribute name="class">
									<xsl:choose>
										<xsl:when test="position() mod 2 =0">
										H
										</xsl:when>
										<xsl:otherwise>
										B
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
										<td width="20%"><xsl:value-of select="./RoleName"/><br/></td>
										<td width="15%"><xsl:value-of select="./UsrName"/><br/></td>
										<td width="25%"><xsl:value-of select="./DeptName"/><br/></td>
										<td width="20%"><xsl:value-of select="./HeadName"/><br/></td>
										<td width="20%"><xsl:value-of select="./OfficePhone"/><br/></td>
							</xsl:element>
							</xsl:for-each>
				   </table>
				</td></tr>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>