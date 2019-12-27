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
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center" colspan=2 height="5%">
       <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
           <tr><td valign="bottom" align="center"><b>查看教学领书情况</b></td></tr>
	       <tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
	    </table>   
</td></tr>

<form name="form1" method="post" action="Sys_JXLSHZ_rpt.aspx" target="main" >              
<tr><td valign="top" align="center" height="5%">
     <table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
      <tr>      
		<td width="34%" align="left" >学年学期&nbsp;<select name="SelXN" style="width:165px;"><%=SelObj.SetValue("JCGL_XNXQ","")%></select></td>
        <td width=59%>承担单位&nbsp;<select name=sel_cddw style="width:140"><%=SelObj.SetValue("CDDW",USER_OPTDW)%></select>
			教材&nbsp;<input type=text name=txt_jc style="width:150px" maxlength=50 title="输入教材名称可进行模糊检索">
        </td>
        <td width=7% align="right" ><input type="submit" name="btn_search" value="检索" class=button></td>
     </tr></table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Sys_JXLSHZ_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>