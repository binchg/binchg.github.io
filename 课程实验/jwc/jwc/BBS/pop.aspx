<%@ Page %>
<%
string str="";
try{str=Request["str"].ToString();}catch(Exception){}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>师生论坛</title>

<link href="../_style/Styles_Qry.css" rel="stylesheet" type="text/css">
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<br>
<table width="300" height="252" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="32" height="26"><img src="../IMAGES/pop/pop_lt.gif" width="32" height="26"></td>
    <td background="../IMAGES/pop/pop_top.gif"><img src="../IMAGES/pop/pop_top.gif" width="7" height="26"></td>
    <td width="17" height="26"><img src="../IMAGES/pop/pop_rt.gif" width="17" height="26"></td>
  </tr>
  <tr>
    <td background="../IMAGES/pop/pop_back.gif">&nbsp;</td>
    <td  background="../IMAGES/pop/pop_back.gif" align="center">
	<%=str%>[<a href='#' onclick='history.back()'>返回</a>]</td>
    <td background="../IMAGES/pop/pop_back.gif">&nbsp;</td>
  </tr>
  <tr>
    <td height="16"><img src="../IMAGES/pop/pop_ld.gif" width="31" height="16"></td>
    <td background="../IMAGES/pop/pop_bottom.gif">&nbsp;</td>
    <td><img src="../IMAGES/pop/pop_rb.gif" width="16" height="16"></td>
  </tr>
</table>

</body>
</html>
