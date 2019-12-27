<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
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
//USER_OPTDW="%";
//USER_OPTYX="%";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>教学评价—查看督导评价范围</title>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function ChkValue(){
	if(document.all.sel_js.value==""){
		alert("需选定教师！")
		return false
	}
	return true
}
</script>
</head>

<body  leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%"  height="26">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看非学生评价范围</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td valign="top" align="center" width="100%">
	<form name="form1" method="post" action="a_ckjsfw_Rpt.aspx" target="main" onsubmit='return ChkValue()'>              
	<table width="660" border=0 cellpadding=0 cellspacing=1 align="center" height="26">
	<tr><td colspan=3>
		<table border=0 cellpadding=0 cellspacing=0><tr>
		<td width=5></td><td><%=SelObj.SetValue("XNXQPJLC","")%></td>
		</tr></table>
	</td></tr>
	<tr><td><%=SelObj.SetValue("yxjs",USER_OPTYX)%></td>
		<td align="right"><input type="submit" name="Submit" value="检索" class=but20 ></td>
	</tr></table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 


<tr><td valign="top" align="center" height="100%">
<iframe name=main src="a_ckjsfw_Rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>
</table>
</body>
</html>