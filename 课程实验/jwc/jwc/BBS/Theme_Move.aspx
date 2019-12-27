<%@ Page language="c#" Codebehind="Theme_Move.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_Move" %>
<HTML>
<HEAD>
<title>移动主题</title>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../_style/Styles_Qry.css" rel="stylesheet" type="text/css">
</HEAD>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="300" height="252" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="32" height="26"><img src="../IMAGES/pop/pop_lt.gif" width="32" height="26"></td>
    <td background="../IMAGES/pop/pop_top.gif"><img src="../IMAGES/pop/pop_top.gif" width="7" height="26"></td>
    <td width="17" height="26"><img src="../IMAGES/pop/pop_rt.gif" width="17" height="26"></td>
  </tr><form name="form1" method="get" action="Theme_Modify.aspx">
  <tr> 
    <td background="../IMAGES/pop/pop_back.gif">&nbsp;</td>
    <td  background="../IMAGES/pop/pop_back.gif">
	<asp:Panel ID=OpArea Runat=server>
	</asp:Panel>	
	<p align=center> 
	<input type="submit" value="确定" class="but20">
	</p>
	</td>
    <td background="../IMAGES/pop/pop_back.gif">&nbsp;</td>
  </tr></form>
  <tr> 
    <td height="16"><img src="../IMAGES/pop/pop_ld.gif" width="31" height="16"></td>
    <td background="../IMAGES/pop/pop_bottom.gif">&nbsp;</td>
    <td><img src="../IMAGES/pop/pop_rb.gif" width="16" height="16"></td>
  </tr>
</table>
</body>
</html>