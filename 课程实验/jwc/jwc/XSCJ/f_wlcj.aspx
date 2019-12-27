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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>未录成绩</title>
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function radjskc()
{
	if(document.all.radkcjs1.checked)
	{
		disyx.style.display="none";
		discddw.style.display="";
	}
	else
	{
		disyx.style.display="";
		discddw.style.display="none";
	}
}

function radCxfs()
{
	if(document.all.radCXFS1.checked)
	{
		document.all.radkcjs1.disabled=false;
		document.all.radkcjs2.disabled=false;
	}
	else
	{
		document.all.radkcjs1.disabled=true;
		document.all.radkcjs2.disabled=true;
		document.all.radkcjs1.checked=true;
		radjskc()
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看未交完成绩[原始]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_wlcj_Rpt.aspx" target=frmRpt>
<tr><td valign="top" align="center" height="5%">
    <table width="660" border=0 align="center" cellpadding="1" cellspacing="0"  >
    <tr><td colspan=2>
      	<table border=0 cellpadding=0 cellspacing=0>
      	<tr><td width=230>
		学年学期&nbsp;<select name=sel_xnxq style='width:165'><%=SelObj.SetValue("xnxq","","")%></select>
		</td><td id=discddw style='display:_none'>
			承担单位&nbsp;<select name=sel_cddw style='width:150px'><%=SelObj.SetValue("cddw",USER_OPTDW,"")%></select>
		</td><td id=disyx  style='display:none'>
			院(系)/部&nbsp;<select name=sel_yx style='width:150px'><%=SelObj.SetValue("yx",USER_OPTYX,"")%></select>
        </td></tr></table>
      </td>
      <td nowrap align=right><input name="submit" type="submit" id="Submit1"  value="检索" class="button"></td>
      </tr>
      <tr><td colspan=2>
      	<table border=0 cellpadding=0 cellspacing=0><tr><td>
			<table border=1 cellpadding=0 cellspacing=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'><tr><td>
				<input type=radio name=radCXFS id=radCXFS1 value="0" checked onclick=radCxfs()>理论课程
				<input type=radio name=radCXFS id=radCXFS2 value="1" onclick=radCxfs()>实践环节
			</td></tr></table>
		</td><td>
			<table border=1 cellpadding=0 cellspacing=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'><tr><td>
				<input type=radio name=radkcjs id=radkcjs1 value="0" checked onclick=radjskc()>分课程按教师
				<input type=radio name=radkcjs id=radkcjs2 value="1"  onclick=radjskc()>分教师按课程
			</td></tr></table>
		</td></tr></table>
     </td></tr>
    </table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="f_wlcj_Rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>
