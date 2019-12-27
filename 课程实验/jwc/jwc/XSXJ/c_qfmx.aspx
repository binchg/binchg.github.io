<%@ Page language="c#" CodeBehind="c_qfmx.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.c_qfmx" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>c_qfmx</title>
		<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body text="#000000" bgColor="#ffffff" leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>欠费学生明细</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="c_qfmx_rpt.aspx" target="main">
				<tr>
					<td valign="top" align="center" height="5%">
						<table width="660" border="0" align="center" cellspacing="0" cellpadding="0">
							<TBODY>
								<tr>
									<td width="25%" colspan="2"><%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%>
										<input type="checkbox" id="chkzx" name="chkzx" value='1' checked>仅在校生
									</td>
								</tr>
								<tr>
									<td align="left">学号/考生号/姓名&nbsp;<input name="sel_xm" type="text" size="20" maxlength="20"></td>
									<td align="right">
										<input type="submit" name="btn_search" value="检索" class="button"></td>
					</td>
				</tr>
		</table>
		</TD></TR></FORM>
		<tr>
			<td valign="top" align="center" height="5%"><br>
				<DIV id="theHead" style='DISPLAY: none;WIDTH: 100%'></DIV>
			</td>
		</tr>
		<tr>
			<td valign="top" align="center" height="100%">
				<iframe name="main" src="c_qfmx_rpt.aspx" width="100%" height="98%" frameborder="0"></iframe>
			</td>
		</tr>
		</TBODY></TABLE>
	</body>
</HTML>
