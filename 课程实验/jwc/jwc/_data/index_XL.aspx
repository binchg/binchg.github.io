<%@ Page Language="C#" %>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_Style/Styles_Home.css" type="text/css">
<script language="JavaScript" src='../pub/scr/ind_HTML_hr.js'></script>

<title>青果软件</title>
<script language="JavaScript">
function popWinXL(theURL){
	var pop,w=650,h=540; 
	pop=window.open(theURL,"winGD","width="+w+",height="+h+",resizable=no,menubar=no,toolbar=no,location=no,scrollbars=yes,status=no")
 	pop.moveTo((screen.width-w)/2,0);
	//pop.moveTo(5,5);
}
</script>
</head>
<oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false>
<body  text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<TABLE width="100%" height="70%" border=0 cellpadding="0" cellspacing="0">
<tr><td align="center" valign="top">

<table width='300' border=0 cellspacing='0' cellpadding='0'>

<tr>
<td valign="center"><iframe name=frmCalen src="../pub/Calen/Calen.aspx" width=180 height=155 frameborder=0></iframe></td>

<td valign="top" align="center" >
<table width='120' border=0 cellspacing='0' cellpadding='2'>
<tr><td valign="top" align="center" ><b>大事记</b><br>
<script language="JavaScript" width=120>Draw_HR('120')</script>
</td></tr>
<tr><td valign="top" height=60px>
<div id=divDayNote align="center"><br></div>
</td></tr>
</table>
</td></tr>


<tr><td valign="center" align="right" height="20" colspan=2>
<a href=javascript:void(0) onclick=popWinXL('index_Lookxl.aspx')>校历详情>></a>
<br></td></tr>
</table>

</td></TR>
</TABLE>
</body> 
</html>
