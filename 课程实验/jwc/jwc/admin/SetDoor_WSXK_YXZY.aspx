
<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="System.Web" %>
<%
BLL_SetDoor pSub=new BLL_SetDoor();
%>
<html>
<head>
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript src=Private/pri_radKG.js></script>
<title>可预选年级/专业</title>
</head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0" rightmargin=0>
<form name=form1 action=SetDoor_WSXK_YXZY_rpt.aspx method=post target=frmRpt>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
	
	<table width="100%" border=0 cellspacing="0" cellpadding="3" align="center">
        <tr><td align=left><%=pSub.SetValue("NJYXZY","%")%></td></tr>          
        <tr><td align=right>
			<input type=submit name=btnset value=检索 class=but20>
			<input type=button name=btnset value=保存 class=but20 onclick='frmRpt.form1.submit()'>
			<input type=button name=btnset value=关闭 onclick=window.close() class=but20>
        </td></tr>
      </table>
      
</td></tr>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="SetDoor_WSXK_YXZY_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr><tr><td valign="bottom" align="center" >

</td></tr> 
</table>
</form>
</body>
</html>