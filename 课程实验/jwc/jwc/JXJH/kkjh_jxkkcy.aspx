<%@ Page %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXJH" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<html>
<head>
<title>查看开课计划与教学计划的差异</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function ChkValue(theID){
if (document.all.sel_nj.value==''||document.all.sel_nj.value=='Nothing'||document.all.sel_zy.value==''||document.all.sel_zy.value=='Nothing')
{alert('请选择年级专业进行检索！');return false;}
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center" width="660" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td>.
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看开课计划与教学计划的差异</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="top" align="center" height="5%" width="100%">
<form name="form1" method="post" action="kkjh_jxkkcy_rpt.aspx" target="main" onSubmit="return ChkValue(this)">              
<table width="660" border=0 leftmargin="0" cellspacing=0 cellpadding=0>
	<tr>
	<td width=100>年级&nbsp;<select name=sel_nj><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
	<td><%=(new private_JXJH()).SetValue("yxzy",pSub.USER_OPTYX)%></td>
	<td width=200>
	   <input type=radio name=radgs id=radgs1 value="0" checked  >理论课程&nbsp;
	   <input type=radio name=radgs id=radgs2 value="1" >实践环节&nbsp;
	<td></tr>
	<tr><td align=left colspan=3 nowrap>
	<table width="660" border=0 cellspacing=0 cellpadding=0>
	   <tr><td> 学年学期
	   <select name=sel_xnxq  style="width:165"><%=(new ind_subPublic()).PutValue("xnxq","")%></select></td>
	   <td><table border=0 cellspacing=0 cellpadding=0>
	   	<tr><td width=400>
	   	<input type=radio name=radCx id=radCx1 value="增开" checked>增开&nbsp;
	   	<input type=radio name=radCx id=radCx2 value="不开">不开&nbsp;
		<input type=radio name=radCx id=radCx3 value="修改">修改&nbsp;
	   	<input type=radio name=radCx id=radCx4 value="%">全部&nbsp;
	   	</td></tr>
	   	</table></td>
	   <td align=right><input type="submit" name="btn_search" value="检索" class=button></td>
	   </tr></table>
	</td></tr></table>
     </td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="kkjh_jxkkcy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>