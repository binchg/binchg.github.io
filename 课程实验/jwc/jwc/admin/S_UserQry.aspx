<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>浏览管理人员权限</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>

  </head>
<script language=javascript>
function SelChk(theID){
var id;
id=theID.value;
document.all.snz.value=id;
}
</script>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>浏览管理人员权限</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="S_UserQry_rpt.aspx" target="frmRpt">              
      <tr><td valign="middle" align="center" height="5%">
        <table width="660px" border=0 align="center" cellspacing="0" cellpadding="0" height="26">
        <tr><td align=left nowrap>
	<input type=radio name=chkSel id=chkSel1 value=1 onclick="SelChk(this)" checked>分管理人员按角色&nbsp;&nbsp;
	<input type=radio name=chkSel id=chkSel2 value=2 onclick="SelChk(this)">分角色按管理人员</td>
	<td nowrap width="300px">用户姓名/帐号&nbsp;<input type=text id=txtLogID name=txtLogID size=16 maxlength=16 value='' style="width:70px">
	&nbsp;登录IP&nbsp;<input type=text id=txtIP name=txtIP size=15 maxlength=15 style="width:90px"></td>
	<td nowrap align="right">
	<input type="submit" name="submit" value="检索" class=but20>
	<!--<input type="button" name="Print" value="打印" class=but20 onclick=doPrint()>            -->
	<input type=hidden name="snz" value="1"></td>
	</tr>
        </table>
      </td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="S_UserQry_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</body>
</html>
