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
<script language="JavaScript">
function dissel(theID){
if(theID.checked){
  document.all.sel_nj.disabled=false
  document.all.sel_yx.disabled=false
  document.all.sel_zy.disabled=false
}
else{
  document.all.sel_nj.disabled=true
  document.all.sel_yx.disabled=true
  document.all.sel_zy.disabled=true
}
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分课程/环节按年级/专业查看补考成绩</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_pkcj_rpt.aspx" target="main" onSubmit="" >              
      <tr><td valign="top" align="center" height="5%" width="100%">
       <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td height="26" align="" nowrap><%=SelObj.SetValue("CJCXXNXQCDDWKCBK",USER_OPTDW)%></td><tr> 
	  <tr><td height="26" align="" nowrap>
	  <table border=0 width="100%" align="center" cellpadding="0" cellspacing="0"><tr>
	  <td height="28" align=left >
	  <input type=checkbox name=chkDisNJZY value="" onclick="dissel(this)"></td>
	  <td><%=SelObj.SetValue("njyxzy","%")%></td>
	  <td align=right><input type=submit name=submit value="检索" class=button></td>
	  </tr></table>
	  </td><tr>
	</table>  
</td></tr>
</form>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="f_pkcj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>
<script language=javascript>
document.all.sel_nj.disabled=true;
document.all.sel_yx.disabled=true;
document.all.sel_zy.disabled=true;
</script>