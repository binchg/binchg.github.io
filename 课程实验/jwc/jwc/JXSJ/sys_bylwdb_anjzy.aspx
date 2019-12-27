<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
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
<title>毕业论文答辩安排[按年级/专业]</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function changezy(){
 document.all.sel_xy.onchange();
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">
<form name="form1" method="post" action="d_bjbydbap_rpt.aspx" target="main" >              
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" >
        <tr height="26"><td valign="bottom" align="center"><b>毕业论文答辩安排[按年级/专业]</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
		<tr><td>
		<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
		<tr>
			<td width="34%">学年学期<select name=sel_xnxq style='width:165px;'><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select></td>
			<td width="56%">毕业年届<select name=sel_nj style='width:60px;' onchange='changezy()'><%=(new ind_subPublic()).PutValue("pub_xn","")%></select></td>
			<td  width="10%"align=right><input type="submit" name="btn_search" value="检索" class=button>&nbsp;</td></tr>
		</tr>
		<tr>
			<td width="35%" colspan="3"><%=(new ind_subPrivate_JXSJ()).SetValue("yxzy",USER_OPTYX)%></td>
		</tr>
		</table>
		</td></tr>
      </table>   
</td></tr>
<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="d_bjbydbap_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</form>
</body>
</html>

