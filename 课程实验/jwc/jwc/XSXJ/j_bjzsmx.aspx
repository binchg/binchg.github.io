<%@ Page CodeBehind="j_bjzsmx.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.j_bjzsmx" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>j_bjzsmx</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>班级住宿明细</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="j_bjzsmx_rpt.aspx" target="main">
				<tr>
					<td valign="top" align="center" height="5%" id="objCx">
						<table width="650" border="0" id="tblJbcx">
							<tr>
								<td width="25%" align="right"><%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="660" border="0" align="center">
							<tr>
								<td align="left"><!---<input type="radio" name="chkCxfs" value="0" checked onclick="swapCxtbl(this.value)">基本查询&nbsp;&nbsp;
									<input type="radio" name="chkCxfs" value="1" onclick="swapCxtbl(this.value)">高级查询&nbsp;&nbsp;
								----></td>
								<td align="right" width="10%">
									<input type="submit" name="btn_search" value="检索" class="button"></td><!--- onclick="checkCFTJ();"---->
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
					<iframe name="main" src="j_bjzsmx_rpt.aspx" width="100%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
