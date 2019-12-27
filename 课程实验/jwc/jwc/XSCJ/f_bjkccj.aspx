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
string USER_OPTYX=SelObj.USER_OPTYX;
%>

<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">

function ChkValue(theID){ 
   if(document.all.sel_bj.value==''){
   alert('需选定班级！');
   document.all.sel_bj.focus();
   return false;
  }
   if(document.all.sel_kc.value==''){
   alert('需选定课程！');
   document.all.sel_kc.focus();
   return false;
  }	
  return true;
}
</script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分行政班级按课程/环节查看成绩[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="f_bjkccj_rpt.aspx" target="main" onSubmit="return ChkValue(this)" >              
      <tr><td valign="top" align="center" height="5%" width="100%">
        <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
          <tr> 
          	<td><%=SelObj.SetValue("XNXQBJKC",USER_OPTYX)%></td>
          	<td valign="top" align=right><input type=submit name=btn_search value=检索 class=button></td>
          </tr>
        </table>
</td></tr>
</form>


<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=main src="f_bjkccj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr>

</table>
</body>
