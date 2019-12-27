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
SelObj.DoorOnOff(this,"JC_FBJCXX");
%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>有售教材信息</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="R_JCGL_KCJC_A3_rpt.aspx" target="main" >              
<tr><td valign="top" align="center" height="5%">
     <table width=660px border="0" cellspacing="0" cellpadding="0" align="center" height="26" valign="middle">
      <tr>
		<!--<td width="35%" align="left" valign="middle" >学年学期&nbsp;
                   <select name="SelXN" style="width:167px;">
                   <%=SelObj.SetValue("JCGL_XNXQ","")%></select></td>-->
        <td width="60%" align="center" ><%=SelObj.SetValue("XQ_KF","")%></td>
		<td width="5%" align="right" ><input type="hidden" name="flag">
		<input type="submit" name="btn_search" value="检索" class=button></td>
     </tr>	   
     </table>    
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="R_JCGL_KCJC_A3_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>
