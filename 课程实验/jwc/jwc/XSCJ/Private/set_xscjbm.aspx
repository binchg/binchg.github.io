<%
	string theStr="";
	try{theStr=Request.QueryString["hid_order"].ToString().Trim();}catch(Exception){}
%>
<head>
<title>设置成绩排名</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript src=pri_setxscjpm.js></script>
<style>
TR.H {	BACKGROUND-COLOR: #f4fef9}white {  font-family: "宋体"; font-size: 12px; color: #FFFFCC}
TR.B {	BACKGROUND-COLOR: #ffffff}white {  font-family: "宋体"; font-size: 12px; color: #FFFFCC}
</style>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center" style="height:26">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center">
        <tr><td valign="bottom" align="left">1、通过双击需排名的列从左边列表移入右边列表。</td></tr>
      </table>   
</td></tr>

 <tr><td valign="top" align="center" height=100%>
	<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height=100%>
	  <tr>
		<td width=49% >
			待排名的列：
			<table id=theTableHead  width=100% BORDER=0 align=center CELLPADDING=0 CELLSPACING=0 ordercolorlight=#75A7AE bordercolordark=#FFFFFF>
			<tr class='T'><td align=center width=80% >列名</td><td width=20% >升序</td><td>&nbsp;&nbsp;</td></tr></table>
			<DIV id=leftDiv style="BORDER:thin inset;height:85%;WIDTH:99%;OVERFLOW-y:scroll ;">
			</DIV>
		<td>
		<td width=2% ><br></td>
		<td width=49% >
			已排名的列：
			<table id=theTableHead  width=100% BORDER=0 align=center CELLPADDING=0 CELLSPACING=0 ordercolorlight=#75A7AE bordercolordark=#FFFFFF>
			<tr class='T'><td align=center width=80% >列名</td><td width=20% >升序</td><td>&nbsp;&nbsp;</td></tr></table>
			<DIV id=righDiv style="BORDER:thin inset;WIDTH: 99%; HEIGHT: 85%;OVERFLOW-y:scroll;">
			</DIV>
		<td>
	  </tr> 
	</table>  
</td></tr>
 <tr><td align="right" height=30>
		<input type=button name=SetOrder value='确定' class=but20 onclick=setPm();>
		<input type=button name=closeWin value='关闭' class=but20 onclick=window.close();>
 </td></tr>
</table>  
</body>
</html>
<script language=javascript>
RightColdefineArray("<%=theStr%>")
LeftColdefineArray()
DrawLeftDiv()
DrawRightDiv()
</script>