<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);

string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;


%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function ChkValue(theID){
if (document.all.radCx1.checked){
if (document.all.sel_cddw.value==''||document.all.sel_cddw.value=='Nothing')
{alert('请选择承担单位进行检索！');return false;}}
else{
if (document.all.sel_yx.value==''||document.all.sel_yx.value=='Nothing')
{alert('请选择院(系)/部进行检索！');return false;}}

}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>免修情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="b_xsmxqk_rpt.aspx" target="main" _onSubmit="return ChkValue(this)">              
      <tr><td valign="top" align="center" height="5%" width="100%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
          <tr>
	  <td width="35%">学年学期
		<select name=sel_xnxq><%Response.Output.Write(SelObj.SetValue("XNXQ","",""));%></select></td>
	  <td width=391>
		<table border=0 cellspacing="0" cellpadding="0">
		<tr><td id=diskc style='display:_none'>承担单位
		   <select name=sel_cddw style="width:150px">
		   <%Response.Output.Write(SelObj.SetValue("CDDW",USER_OPTDW,""));%>
		   </select>
		</td><td id=disyx style='display:none'>院(系)/部
		<select name=sel_yx style="width:150px"><%Response.Output.Write(SelObj.SetValue("YX",USER_OPTYX,""));%></select>  
		</td></tr>
		</table>
	  </td>
	  <td width="40" align=right>
		<input type="submit" name="btn_search" value="检索" class=button>
	  </td>
	  <tr><td colspan=3>
	   <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26"><tr>
	   <td align=left>
	        <input type=radio name=radCx id=radCx1 value="0" checked onclick="diskc.style.display='';disyx.style.display='none'">分承担单位按课程/环节
		<input type=radio name=radCx id=radCx2 value="1" onclick="diskc.style.display='none';disyx.style.display=''">分院(系)/部按年级/专业
	   </td>
	   
	   </table>
         </td></tr>
        </table>
</td></tr>
</form>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="b_xsmxqk_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>
</html>


