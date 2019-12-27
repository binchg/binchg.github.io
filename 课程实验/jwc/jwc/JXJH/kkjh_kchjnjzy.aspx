<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXJH" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<html>
<head>
<title>查看学期开设课程/环节对应年级/专业</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function ChkValue(theID){
if (document.all.sel_cddw.value==''||document.all.sel_cddw.value=='Nothing')
{alert('请选择承担单位进行检索！');return false;}
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table  align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学期开设课程/环节对应年级/专业</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="kkjh_kchjnjzy_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
      <tr><td valign="top" align="center" height="5%">
        <table width="650" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
          <tr> 
            <td height="26" nowrap align=left>学年学期&nbsp;<select name=sel_xnxq  style="width:165"><%=(new ind_subPublic()).PutValue("xnxq","")%></select>
	    承担单位 <select name=sel_cddw ><<%=(new private_JXJH()).SetValue("cddw",pSub.USER_OPTDW)%><</select>
	   </td></tr>
	   <tr>  
           <td align="left" height="26">
		<input type="radio" name="chkCxfs" value="0" checked >理论课程&nbsp;&nbsp;
	        <input type="radio" name="chkCxfs" value="1" >实践环节&nbsp;&nbsp;</td>
		<td align=right><input type="submit" name="btn_search" value="检索" class=button><td>
          </tr>
        </table>     
</td></tr>
</form>
<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="kkjh_kchjnjzy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>