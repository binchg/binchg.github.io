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
if (document.all.sel_kc.value==''||document.all.sel_kc.value=='Nothing')
{alert('需选定课程/环节！');return false;}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分课程/环节按年级/专业查看学生成绩分布[原始]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="g_xscjtj_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td colspan=3>
	  学年学期 
	  <select name=sel_xnxq style='width:166' onchange=LetInnerHTML(this,document.all.sel_kc,document.all.sel_cddw,2)><%=SelObj.SetValue("CJXNXQ","")%></select>
	  <input type=radio name=radCx value="0" checked>综合成绩
	  <input type=radio name=radCx value="1">未考成绩
	  <input type=radio name=radCx value="2">中考成绩
	  <input type=radio name=radCx value="3">平时成绩
	  </td></tr>
	  <tr>
	   <td id=DISnj nowrap>
	   <td id=DIScddwkc><%=SelObj.SetValue("xnxqcddwkc",USER_OPTDW)%></td>	
	   <td align=right><input type="submit" name="btn_search" value="检索" class=button></td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="g_xscjtj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>