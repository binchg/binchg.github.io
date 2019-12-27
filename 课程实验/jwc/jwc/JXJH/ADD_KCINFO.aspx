<%@ Page %>
<%@ Import NameSpace="BLL.JXJH" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看课程/环节信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
			<table align="center" width="660" border="0" cellpadding="0" cellspacing="0" height="100%">
				<tr><td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr><td valign="top" align="center">
						<form name=form1 action=ADD_KCINFO_rpt.aspx method=post target=main>
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>查看课程/环节信息</b></td>	</tr><tr>
						<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr></table></td></tr>
				<tr><td valign="top" align="center" height="5%">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr height="20"><td width="10%" nowrap>承担单位</td><td width="40%" colspan="5">
							<select name="sel_cddw" style='WIDTH:220px'>
							<%Response.Output.Write((new private_JXJH()).SetValue("cddw",pSub.USER_OPTDW));%>
							</select></td>
							<td width="30%" align="left" nowrap>&nbsp; 课程代码或名称&nbsp;<input name="kc" type="text" size="20" maxlength="20"></td>
							<td width="30%" colspan="4" align="right" nowrap>&nbsp; <input type="submit" name="btn_search" value="检索" class="button">
							</td></tr>
						</table>
						</form>
						</td></tr>
						
				<tr><td valign="top" align="center" height="5%"><br>
				<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td></tr>
					
				<tr><td valign="top" align="center" height="100%">
				<iframe name=main src="ADD_KCINFO_rpt.aspx" width=99% height=98% frameborder=0></iframe>
				</td></tr> 
				</table>
	</body>
</HTML>
