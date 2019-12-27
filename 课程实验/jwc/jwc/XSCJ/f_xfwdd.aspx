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
function ChkValue(theID){ 
  
    if(document.all.radcxfs1.checked ){
     if(isNaN(document.all.txt_xf.value)||document.all.txt_xf.value==""){
       alert('"获得学分未达到",请用数字输入!');
       document.all.txt_xf.focus();
       return false;
   }}
   if(document.all.radcxfs2.checked){
     if(isNaN(document.all.txt_bl.value)||document.all.txt_bl.value==""){
       alert('"未达到学分比例占",请用数字输入!');
       document.all.txt_bl.focus();
       return false;}
     if(document.all.txt_bl.value>100){	
	alert('例占大于100!');
       document.all.txt_bl.focus();
       return false;
   }}
	
  return true;

}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>获得学分未达到X或Y%的学生名单</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="f_xfwdd_rpt.aspx" target="main" onSubmit="return ChkValue(this)" >              
  <tr><td valign="top" align="center" height="5%">
	<table width="650" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr> 
	    <td colspan=2>学年学期 <select name=sel_xnxq style='width:165'><%=SelObj.SetValue("cjxnxq","")%></select>
		<input type=radio name="radcxfs" id="radcxfs1" value="1" checked onclick="document.all.txt_bl.disabled=true;document.all.txt_xf.disabled=false;">获得学分未达到&nbsp;<input type=text name="txt_xf" size="4" maxlength="4">
	        <input type=radio name="radcxfs" id="radcxfs2" value="2" onclick="document.all.txt_bl.disabled=false;document.all.txt_xf.disabled=true;">未达到学分比例占&nbsp;<input type=text name="txt_bl" size="4" maxlength="4" disabled> %　

	    </td>
	  </tr>
	<tr><td><%=SelObj.SetValue("njyxzy",USER_OPTYX)%>
	<input type=checkbox name=Chkrxk value="1">不含任选课&nbsp;</td>
	<td align=right><input type="submit" name="btn_search" value="检索" class=button></td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="f_xfwdd_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>