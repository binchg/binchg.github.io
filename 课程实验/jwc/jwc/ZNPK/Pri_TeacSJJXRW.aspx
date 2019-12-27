<%@ Page language="c#" Codebehind="Pri_TeacSJJXRW.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Pri_TeacSJJXRW" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
  <head>
    <title>指导上机</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
    </head>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>指导上机</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<form name="form" method="post" action="Pri_TeacSJJXRW_rpt.aspx" ID="Form" target="frmRpt">
								<tr>
									<td align="left" width="35%" height="26"><%=(new Base().SetValue("JXRWXNXQ"))%></td>
									<td width="55%" align="right">&nbsp;</td>
									<td width="10%" align="right"><input name="Submit01" type="submit" value="检索" class="button" ></td>
								</tr>
						</form>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center"><br>
					<div id="theHead" align="center" style="WIDTH:99%"></div>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Pri_TeacSJJXRW_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>
