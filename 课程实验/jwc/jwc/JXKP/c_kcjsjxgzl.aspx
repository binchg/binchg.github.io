
<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP SelObj=new BLL.JXKP.BLL_subPrivate_JXKP(this);
BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();
SelObj.DoorJXGZL(this);
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
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>教学评价—查看教师工作量</title>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分承担单位按课程/环节查看教学工作量</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="c_kcjsjxgzl_rpt.aspx" target="frmRpt">
	<tr><td valign="top" align="center" height="5%" width="100%">
	<table width="660" border=0  cellpadding=0 cellpadding=0>
	<tr><td>
		<table border=0  cellpadding=0 cellpadding=0><tr>
		<td align="left" width=55>学年学期</td><td width=170><select name=sel_xnxq style='width:165'><%=SelObj.SetValue("JXZGLXNXQ","")%></select></td>
		<td align="left" width=55>承担单位</td><td><select name=sel_cddw style='width:150'><%=SelObj.SetValue("cddw",USER_OPTDW)%></select></td>		
		</tr></table>
		
	</td><td align="right"><input name="Submit" type="submit" value="检索" class="button" ID="Submit1">
	</td></tr>
	</table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 


<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="c_kcjsjxgzl_rpt.aspx" width=99% height=90% frameborder=0></iframe>
</td></tr>
</table>
</body>
</HTML>