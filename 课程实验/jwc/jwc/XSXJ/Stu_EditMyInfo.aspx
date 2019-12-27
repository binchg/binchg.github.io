<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA();
pSub.DoorOnOff(this,"XJ_XS_GRXX");
%>
<html>
<head>
<title>学生信息修改</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="662px" border="0" cellspacing="0" cellpadding="0" height="100%"  align=center>
	<tr><td valign="top" align="center" colspan=3>
		<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
			<tr><td valign="bottom" align="center"><b>增改基本信息</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
		</table>   
	</td></tr>
	<tr><td align="left" height=26>
		<table cellSpacing=0 cellPadding=3 width="660" align=center border=0>
			<tr><td id=disbut align=left width=100%><%=pSub.playTimeArea("EDITXSXX","")%>
			</TD></TR>
		</TABLE>  
	</TD></TR>
	<tr><td valign="top" align="center" height="100%">
		<iframe name=main src="Stu_EditMyInfo_rpt.aspx" width=100% height=95% frameborder=0></iframe>
	</td></tr> 
</table>
</body>
</html>