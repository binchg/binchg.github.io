<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_CJFB");
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
%>

<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript>
function selchk(theID){
	if(theID.checked)
	{
		document.all.txt_xs.disabled=false;
		document.all.sel_xs.disabled=false;
		document.all.sel_nj.disabled=true;
		document.all.sel_yx.disabled=true;
		document.all.sel_zy.disabled=true;
		document.all.sel_bj.disabled=true;
	}
	else
	{
		document.all.txt_xs.disabled=true;
		document.all.sel_xs.disabled=true;
		document.all.sel_nj.disabled=false;
		document.all.sel_yx.disabled=false;
		document.all.sel_zy.disabled=false;
		document.all.sel_bj.disabled=false;
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学期成绩通知单[原始]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="f_xscjtzd_rpt.aspx" target="main">              
  <tr><td valign="top" align="center" height="5%">
	<table width="650" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr> 
	    <td>学年学期 <select name=sel_xnxq style='width:165'><%=SelObj.SetValue("cjxnxq","")%></select>
	    <td nowrap>
			<table border=0 cellpadding=0 cellspacing=0>
			<tr><td width=90>
				<table border=0 cellpadding=0 cellspacing=0><tr>
				<td><input type=checkbox name=chk value='1' onclick='selchk(this)'></td><td>按单个学生</td>
				</tr></table>
			</td><td><%=SelObj.SetValue("XS","")%></td>
			</tr></table>
		<td align=right><input type="submit" name="btn_search" value="检索" class=button></td></tr>
		<tr><td colspan=5><%=SelObj.SetValue("njyxzybj",USER_OPTYX)%></td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="f_xscjtzd_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>
<script language=javascript>
document.all.chk.onclick();
</script>