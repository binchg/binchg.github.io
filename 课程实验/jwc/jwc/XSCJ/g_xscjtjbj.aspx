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
if (document.all.sel_bj.value=='')
{alert('需选定行政班级！');return false;}
}

function Dissel(theID)
{
	if(theID.value=="0")
	{
		document.all.sel_xn.disabled=true;
		document.all.sel_xq.disabled=true;
	}
	else if(theID.value=="1")
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=true;
	}
	else
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=false;
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分行政班级按成绩区段统计学生修读课程/环节数[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="g_xscjtjbj_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td id=DISyxzybj><%=SelObj.SetValue("NJ_YXZYBJ",USER_OPTYX)%></td></tr> 
	  <tr><td> 
			<table width=100% border=0 cellpadding=0 cellspacing=0>
			<tr><td width=272>
				<%=SelObj.SetValue("CJFBXNXQ","")%>
			</td><td>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
					<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>入学以来</td>	
					<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>学年</td>
					<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>学期</td>
					</tr></table>
				</td></tr></table>
			</td></tr></table>
	  </td></tr>
	  <tr><td>
			<table width=100% border=0 cellpadding=0 cellspacing=0><tr><td>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#89bfa7 bordercolordark=#FFFFFF><tr><td>
					<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type=radio name=radCx value="0" checked></td><td>综合成绩</td>
					<td><input type=radio name=radCx value="1"></td><td>未考成绩</td>
					<td><input type=radio name=radCx value="2"></td><td>中考成绩</td>
					<td><input type=radio name=radCx value="3"></td><td>平时成绩</td>
					</td></tr></table>
				</td></tr></table>
			</td><td align=right>
				<input type="submit" name="btn_search" value="检索" class=button>
			</td></tr></table>
	  </td></tr></table>  
	  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="g_xscjtjbj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>