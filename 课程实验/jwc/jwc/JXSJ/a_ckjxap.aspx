<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="BLL.JXSJ" %>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
%>
<html>
<head>
<title>军训安排</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function SelRpt(){
if (document.all.radCx1.checked){form1.action='a_ckjxap_rpt.aspx'}
if (document.all.radCx2.checked){form1.action='a_ckjxapzdy_rpt.aspx'}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>军训安排</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="a_ckjxap_rpt.aspx" target="main" >              
	<tr><td valign="top" align="center" height="5%" >
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
		<tr><td align="left" height="26" colspan="2" align="center">
		   <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
			<tr>
			<td width=230>学年学期&nbsp;<select name=sel_xnxq><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select></td>
			<td width=100 >年级&nbsp;<select name=sel_nj><%=(new ind_subPublic()).PutValue("xn","")%></select></td>
			<td id=distd >院(系)/部&nbsp;<select name=sel_yx><%=(new ind_subPublic()).PutValue("yx",USER_OPTYX)%></select></td>
            <td id=disjs style='display:none' align='left'>
			指导员&nbsp;<input type=text name=txt_js value="" size='15'></td>
			</tr>
		   </table>
		</td></tr>
		<tr>
		<td align="left">
			<input type="radio" name="radCx" id="radCx1" value="1" checked onclick='distd.style.display="";disjs.style.display="none"'>分院(系)/部按行政班级
			<input type="radio" name="radCx" id="radCx2" value="2" onclick='distd.style.display="none";disjs.style.display=""'>按指导员
		</td>
		<td align="right" height="26"><input type="submit" name="btn_search" value="查询" class=button onclick=SelRpt()></td></tr> 
		</tr>
	</table>
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="a_ckjxap_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</body>
</html>
