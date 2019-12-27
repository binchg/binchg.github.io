<%@ Page language="c#" Codebehind="Pri_Tea_SQTZJXAP.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_Tea_SQTZJXAP" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<%@ Import NameSpace="System"%>
<%BLL.include.ind_subPublic pSub=new BLL.include.ind_subPublic();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>申请调整教学安排</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
  </head>
 <body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center">
      <table width="660px" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>申请调整教学安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

  <tr><td height=28px>
    <table width="660px" border=0 align="center" cellpadding="0" cellspacing="0">
    <form name="form1" method="post" action="Pri_Tea_SQTZJXAP_rpt.aspx" target=frmRpt>
	  <tr> 
          <td width="45%" align="left">学年学期&nbsp;<select name="SelXN" style="width:165px"><option value=<%=xnxq%>><%=pSub.GetValue("XNXQ",xnxq)%></option></select></td>
          <td width="7%">&nbsp;</td>
		 <td align="right" width="5%"><input name="Submit01" type="submit" value="检索" class="button"></td>
      </tr>
    </form>
   </table>
</td></tr>


<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="Pri_Tea_SQTZJXAP_rpt.aspx" width=99% height=100% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>
