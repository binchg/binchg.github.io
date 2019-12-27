<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Page CodeBehind="Tea_jxpjjgsd.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.JXKP.Tea_jxpjjgsd" %>
<HTML>
	<HEAD>
		<title></title>
		<%
BLL.JXKP.BLL_subPrivate_JXKP SelObj=new BLL.JXKP.BLL_subPrivate_JXKP(this);
BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();
SelObj.DoorPJJG(this);
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
//USER_ID="1996057";
%>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		leftMargin="0" topMargin="0" onsource="window.event.returnValue=false">
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>师德调查信息</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="Tea_jxpjjgsd_rpt.aspx" target="frmRpt">
				<tr>
					<td valign="top" align="center" height="5%" width="100%">
						<table width="660" border="0" align="center">
							<tr>
								<td><%=SelObj.SetValue("XNXQPJLC","1")%></td>
								<td valign="bottom" align="right" nowrap><input name="Submit" type="submit" value="检索" class="button" ID="Submit1"></td>
							</tr>
							<tr>
								<td colspan="2">
									<table border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td width="55">评价主体</td>
											<td><select name="sel_pjzt" style="WIDTH:100px"><%=SelObj.SetValue("PJZT","")%></select></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="5%">
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Tea_jxpjjgsd_rpt.aspx" width="99%" height="99%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
