<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL SelObj=new BLL.JCGL.BLL_subPrivate_JCGL(this);
string USER_OPTDW=SelObj.USER_OPTDW;
//SelObj.DoorOnOff(this,"JC_FBJCXX");
%>
<html>
<head>
<title>分课程/环节查看使用教材情况</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center" colspan=2 height="5%">
       <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
           <tr><td valign="bottom" align="center"><b>分课程/环节查看使用教材情况</b></td></tr>
	       <tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
	    </table>   
</td></tr>

<form name="form1" method="post" action="Sys_FKC_CKJCSYQK_rpt.aspx" target="main" >              
<tr><td valign="top" align="center" height="5%">
     <table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="52">
      <tr>      
		<td width="38%" align="left"  height="26">起始学年学期&nbsp;<select name="SelXN" style="width:165px;"><%=SelObj.SetValue("JCGL_XNXQ","")%></select></td>
        <td width="38%" align="left"  height="26">结束学年学期&nbsp;<select name="SelXNJS" style="width:165px;"><%=SelObj.SetValue("JCGL_XNXQ","")%></select></td> 
        <td width="24%" align="right"  height="26"><input type="submit" name="btn_search" value="检索" class=button></td>
      </tr>
      <tr><td colspan=3 height="26">承担单位&nbsp;<select name=sel_cddw style="width:188px"><%=SelObj.SetValue("CDDW",USER_OPTDW)%></select></td>
     </tr></table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Sys_FKC_CKJCSYQK_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>