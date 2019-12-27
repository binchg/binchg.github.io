<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.include.ind_subPublic_TheSYSDoor Door=new BLL.include.ind_subPublic_TheSYSDoor();
BLL.JXZY.jxzy pSub=new BLL.JXZY.jxzy(this);
string t=Door.TheSYSDoor("LOAD","");
string door=Door.TheSYSDoor("Get","ZY_JZG_GRXX");
if(door!="1")Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");
%>
<html>
<head>
<title>教师基本信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>


<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>增改个人基本信息</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr><td align="left" height=26>
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	<tr><td><%=pSub.EditTeaInfotime()%><br></td></tr></table>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Tea_EditMyInfo_rpt.aspx" width=100% height=95% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>
