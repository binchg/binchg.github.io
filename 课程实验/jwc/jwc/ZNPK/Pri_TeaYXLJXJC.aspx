<%@ Page language="c#" Codebehind="Pri_TeaYXLJXJC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Pri_TeaYXLJXJC" %>
<%BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();%>
<HTML>
	<HEAD>
		<title>录入教学进度表</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<form name="form1" method="post" action="Pri_TeaYXLJXJC_rpt.aspx" target=frmRpt>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>录入教学进度表</b></td></tr>
						<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td></tr>
					</table>
				</td>
			</tr>
			<tr><td height=28px>
				<table width="660px" border=0 align="center" cellpadding="0" cellspacing="0">
					<tr> 
						<td width="45%" align="left">学年学期&nbsp;<select name="SelXN" style="width:165px"><option value=<%=vXNXQ%>><%=pSub.GetValue("XNXQ",vXNXQ)%></option></select></td>
						<td width="7%">&nbsp;</td>
						<td align="right" width="5%"><input name="Submit01" type="submit" value="检索" class="button"></td>
					</tr>
				</table>
			</td></tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Pri_TeaYXLJXJC_rpt.aspx" width="99%" height="99%" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>
