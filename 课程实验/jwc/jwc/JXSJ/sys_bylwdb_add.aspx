<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_OptXQ=pSub.USER_OPTXQ;
%>
<html>
<head>
<title>毕业论文答辩安排[按地点]</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">
<form name="form1" method="post" action="d_ddbydbap_rpt.aspx" target="main" >              
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" >
        <tr height="26"><td valign="bottom" align="center"><b>毕业论文答辩安排[按答辩地点]</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
		<tr><td>
		<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center">
		<tr align="left">
			<td width="34%">学年学期&nbsp;<select name=sel_xnxq style='width:165px;'><%=(new ind_subPrivate_JXSJ()).SetValue("sjxnxq","")%></select>
			</td>
			<td width="60%"><%=(new ind_subPrivate_JXSJ()).SetValue("xqlf",USER_OptXQ)%></td>
			<td width="6%" align=right><input type="submit" name="btn_search" value="检索" class=button></td>
		</tr>
		</table>
		</td></tr>
      </table>   
</td></tr>
<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="d_ddbydbap_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr> 

</table>
</form>
</body>
</html>

