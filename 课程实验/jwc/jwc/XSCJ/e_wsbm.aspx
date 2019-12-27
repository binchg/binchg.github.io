<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
string USER_ID=SelObj.USER_ID;
string USER_OPTYX=SelObj.USER_OPTYX;
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript>
function disCxfs()
{
	if(document.all.radCx1.checked)
	{
		dislb.style.display='';
		disbj.style.display='none';
	}
	else
	{
		dislb.style.display='none';
		disbj.style.display='';
	}	
}
function ChkValue(theID)
{
     if(document.all.sel_xq.value=='')
     {
     alert('需选定校区！');
     document.all.sel_xq.focus();
     return false;
     }
     return true;
}	
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看等级考试报名情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form" method="post" action="e_wsbm_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
  <tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td>
		<table border=0 cellpadding=0 cellspacing=0><tr>
		<td id=disxq><%=SelObj.SetValue("xq","all")%></td>    
		<td>考试时间&nbsp; <select name=sel_pmsj style='width:120'><%=SelObj.SetValue("DJBMSJ","ALL")%></select></td>
		<td><input type=radio name=radCx id=radCx1 value=0 checked onclick=disCxfs()>分类别按等级<input type=radio name=radCx id=radCx2 value=1  onclick=disCxfs()>分班级按学生</td>
		</tr></table>		
	</td></tr>           
    <tr><td>
		<table border=0 cellpadding=0 cellspacing=0><tr>		
		<td id=dislb><%=SelObj.SetValue("lbdj","all")%></td>
		<td width="87%" align="" height="13" style='display:none' id=disbj><%=SelObj.SetValue("yxzybj",USER_OPTYX)%></td>
		<td width=6% align='right' height="26"><input type="submit" name="btn_search" value="检索" class=button></td>
		</tr></table>
	  </td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="e_wsbm_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>