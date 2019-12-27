<%@ Page language="c#" Codebehind="Tea_hjcj.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSCJ.Tea_hjcj" %>
<HTML>
	<HEAD>
		<title>分环节按行政班级→组次查看成绩</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="99%" align=center border="0" cellspacing="0" cellpadding="0" height="100%" >
			<tr><td valign="top" align="center">
				<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>分环节按行政班级→组次查看成绩</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
				</table>   
			</td></tr>
			<form name=form1 action=Tea_hjcj_rpt.aspx method=post target=frmRpt>
				<tr><td valign="top" align="center" height="5%" width="100%">
						<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td>学年学期&nbsp;<select name='sel_xnxq' style='width:165'><%=SelObj.SetValue("XSCJFBXNXQ","")%></td>
						<td align=right><input type='submit' name='btn_search' value='检索' class=button></td></tr>
						</table>
				</td></tr>
			</form>
			<tr><td valign="top" align="center" ><br>
				<DIV id=theHead style='display: none;width:100%;'></DIV>
			</td></tr>  

			<tr><td valign="top" align="center" height="100%" width="100%">
				<iframe name=frmRpt src="Tea_hjcj_rpt.aspx" width=100% height=98% frameborder=0></iframe>
			</td></tr>
		</table>
	</body>
</HTML>
