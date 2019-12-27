<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Page CodeBehind="j_bjzstj.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.j_bjzstj" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>j_bjzstj</title>
		<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>班级住宿统计</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="j_bjzstj_rpt.aspx" target="main">
				<tr>
					<td valign="top" align="center" height="5%" id="objCx">
						<table width="650" border="0" id="tblJbcx">
							<tr>
								<td width="25%" align="right"><%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%>
									<input type="submit" name="btn_search" value="检索" class="button">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='DISPLAY: none;WIDTH: 100%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="main" src="j_bjzstj_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
