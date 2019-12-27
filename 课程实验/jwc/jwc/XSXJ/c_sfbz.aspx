<%@ Page CodeBehind="c_sfbz.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.c_sfbz" %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
XSXJ_XSDA pSub=new XSXJ_XSDA(this);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title></title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
    <table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center >
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>学杂费标准</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
      
</td></tr>

<form name="form1" method="post" action="c_sfbz_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
          <tr> 
            <td>学年&nbsp;<SELECT id=select4 name=sel_xn><%=(new ind_subPublic().PutValue("xn","all"))%></SELECT>&nbsp;</td>
            <td height="26" ><%=(new XSXJ_XSDA().SetValue("YXZYBJ",pSub.USER_OPTYX))%></td>
	  </tr>
	  <tr>
	      <td width=100% colspan=2 align=right><input type="submit" name="btn_search" value="检索" class=button></td>
          </tr>
        </table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="c_sfbz_rpt.aspx" width=99% height=95% frameborder=0></iframe>
</td></tr> 
</table>
</body>
	
  
</html>
