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
</head>
<script language="JavaScript">
function ChkValue(){
if (isNaN(document.all.pag_txt.value)||(document.all.pag_txt.value=="")||(parseInt(document.all.pag_txt.value)<1)){
	alert("请用数字输入第几部分!");
	document.all.pag_txt.focus();
	return false;}
if (document.all.sel_bj.value=="" || document.all.sel_bj.value=="Nothing")
	{alert("请选择行政班级进行检索！");
	 document.all.sel_bj.focus();
	 return false;}
return true;
}
</script>


<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学生成绩档案表[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_cjdab_rpt.aspx" target="main" >              
<tr><td valign="top" align="center" height="5%" width="100%">
	<table width=660 border=0 cellspacing=0 cellpadding=0 align=center height=26>
	<tr>
		<td width=300><%=SelObj.SetValue("XS","")%></td>
		<td>
			<table border=0 cellpadding=0 cellspacing=0><tr>
			<td><input type=radio name=radCx value='0' checked><td><td>纵</td>
			<td><input type=radio name=radCx value='3' ></td><td>横三</td>
			<td><input type=radio name=radCx value='4' ></td><td>横四</td>
			<td><input type=radio name=radCx value='5' ></td><td>横五</td>
			</tr></table>
		</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class=button></td>
	</tr></table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="f_cjdab_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>