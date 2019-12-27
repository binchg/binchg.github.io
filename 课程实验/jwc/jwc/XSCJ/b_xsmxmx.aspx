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
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">

function ChkValue(theID){
if (document.all.radCx2.checked){
if (document.all.sel_cddw.value==''||document.all.sel_cddw.value=='Nothing')
{alert('请选择承担单位进行检索！');return false;}}
else{
if (document.all.sel_yx.value==''||document.all.sel_yx.value=='Nothing')
{alert('请选择院(系)/部进行检索！');return false;}}

}

function chkCx(){
  if(document.all.radCx1.checked){discddw.style.display='none';disyx.style.display='';}
  else{discddw.style.display='';disyx.style.display='none';}
}
</script>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>免修情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="b_xsmxmx_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%" width="100%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
          <tr>
          <td align="" width=230>学年学期
	     <select name=sel_xnxq><%Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("XNXQ","","") );%></select>
	     </td> <td width=180>
  	     <input type=radio name=radCx id=radCx2 onclick='chkCx()' value="1" checked>分承担单位 
	     <input type=radio name=radCx id=radCx1 onclick='chkCx()' value="0">分院(系)/部
	     </td>
	     <td id=discddw style='display:_none'><select name=sel_cddw style="width:130px"><%Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CDDW",USER_OPTDW,"") );%></select></td>
	     <td id=disyx style='display:none'><select name=sel_yx  style="width:130px"><%Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("yx",USER_OPTYX,"") );%></select></td>
	     <td align=right><input type="submit" name="btn_search" value="检索" class=button></td>
	     </tr>
        </table>
</td></tr>
</form>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="b_xsmxmx_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>
