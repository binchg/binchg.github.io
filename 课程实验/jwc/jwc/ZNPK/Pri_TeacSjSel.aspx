<%@ Page language="c#" Codebehind="Pri_TeacSjSel.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_TeacSjSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>上机安排表</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
    </head>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>上机安排表</b></td>
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
						<form name="form" method="post" action="Pri_TeacSjSel_rpt.aspx" ID="Form" target="frmRpt">
								<tr>
									<td width="35%">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
									<td width="55%"><br></td>
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
					<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0"></iframe>
					<iframe name="frmRpt" src="Pri_TeacSjSel_rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
	</body>
</html>

