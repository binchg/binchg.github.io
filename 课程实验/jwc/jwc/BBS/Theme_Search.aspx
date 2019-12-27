<%@ Page language="c#" Codebehind="Theme_Search.aspx.cs" AutoEventWireup="false" Inherits="JWNET.BBS.Theme_Search" %>

<HTML>
	<HEAD>
		<title>论坛搜索</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link href="../_style/Styles_rpt.css" rel="stylesheet" type="text/css">
		<script language='JavaScript' src='returnfunction.js'></script>
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" bgcolor="#ffffff" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b><font color=#000000>搜索主题</font></b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table> 
		<form method="post" action="Theme_Search_sumbit.aspx" >
			<table border="1" width="660" align=center cellpadding="0" cellspacing="0" bordercolordark="#ffffff" bordercolorlight="#89bfa7">
				<tr class='T'><td colspan=2><br></td></tr>
				<tr class='B'>
					<td width="15%" height="25">&nbsp;&nbsp;&nbsp;&nbsp;关键字</td>
					<td width="85%" height="25">&nbsp;<input type="text" name="KeyWord" size="20">&nbsp;<font color="red">*</font>
					</td>
				</tr>
				<tr class='H'>
					<td width="15%" height="25">&nbsp;&nbsp;&nbsp;&nbsp;讨论区</td>
					<td width="85%" height="25">&nbsp;<select size="1" name="area" style="width:155px"><%=vHTML%></select></td>
				</tr>
				<tr class='B'>
					<td width="15%" height="30">&nbsp;&nbsp;&nbsp;&nbsp;搜索项目</td>
					<td width="85%" height="30">
						<input type="checkbox" name="chkTitle" value="1" checked>标题 <input type="checkbox" name="chkContent" value="1">内容
						<input type="checkbox" name="chkAuthor" value="1">发表人
					</td>
				</tr>
				<tr class='H'>
					<td width="15%" height="30">&nbsp;&nbsp;&nbsp;&nbsp;时间范围</td>
					<td width="85%" height="30">
						<input type="radio" id="chkSJ" name="chkSJ" value="1" checked>最近&nbsp;<input type="text" name="Aear0" style="WIDTH:48px; HEIGHT:21px" size="2">
						天 <input type="radio" id="chkSJ" name="chkSJ" value="2">时间区段&nbsp;<!--input type="text" name="Aear1" style="WIDTH:100px">--<input type="text" name="Aear2" style="WIDTH:100px"-->
						<%=sHtmlTime1%>--<%=sHtmlTime2%>
						<input type="hidden" name="search" value="1"> <input type="hidden" name="sj">
					</td>
				</tr>
			</table>
			<p align="center">
				<input type=submit name=CmdSearch value=检索 class=but20>
				&nbsp;&nbsp;&nbsp;<input type="submit" value="返回" name="CmdSearch" class="but20" onClick="history.go(-1);return false;">
			</p>
		</form>
	</body>
</HTML>
