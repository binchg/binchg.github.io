<%@ Page %>
<html>
<head>
<title>登录限制</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript">
function ChkValue(theForm){
if (confirm('你确信要继续吗?')){return true;}
else{return false;}
}
</script>
</head>

<body oncontextmenu=window.event.returnValue=false onselectstart=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<form name="form1" method="post" action="S_LimitIP.asp" target="frmRpt" onsubmit='return ChkValue(this)'>              
      <tr><td valign="middle" align="center" height="5%">
        <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr>
<td height="26"><br></td>
	</tr>
        </table>
      </td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="../_help/sorry.aspx" width=100% height=90% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>