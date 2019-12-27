<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>
<HTML>
	<HEAD>
		<title>教学考评—按教师工作量统计</title>
		<%
BLL.JXKP.BLL_subPrivate_JXKP SelObj=new BLL.JXKP.BLL_subPrivate_JXKP(this);
BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
//USER_OPTYX="%";
//USER_OPTDW="%";
%>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
			<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>分院(系)/部按职称/学历/学位及年龄区段统计分析教学工作量</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="c_jxgzlfx_Rpt.aspx" target="main">
				<tr>
					<td valign="top" align="center" height="5%" width="100%">
						<table width="660" border="0" align="center">
							<tr>
								<td valign="bottom" align="left" nowrap>学年学期&nbsp;<SELECT id="select4" name="sel_xnxq"><%=SelObj.SetValue("JXZGLXNXQ","")%></SELECT>
									&nbsp;院(系)/部&nbsp;<select name="sel_yx" style="WIDTH:140px"><%=SelObj.SetValue("yx",USER_OPTYX) %></select></td>
								<td valign="bottom" align="right"><input name="Submit01" type="submit" value="检索" class="button"></td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="main" src="c_jxgzlfx_Rpt.aspx" width="99%" height="98%" frameborder="0" scrolling="auto"></iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
