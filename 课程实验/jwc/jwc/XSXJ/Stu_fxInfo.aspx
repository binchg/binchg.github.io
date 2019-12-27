<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%
	BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
	BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
	pSub.DoorOnOff(this,"XJ_XS_FXSQ");
	
	string USER_ID=pSub.USER_ID;
	string USER_ZH=pSub.USER_ZH;
	string USER_NAME=pSub.USER_NAME;
	string USER_LVID=pSub.USER_LVID;
	string USER_BJID=pSub.USER_BJID;
	string USER_LEVEL=pSub.USER_LEVEL;
	string USER_OPTYX=pSub.USER_OPTYX;
	string USER_OPTDW=pSub.USER_OPTDW;
	string vstr=xsxj.Stu_fxInfo(USER_ID);
	if(vstr=="")
	{Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");}
%>
<html>
<head>
<title>学生辅修信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Rpt.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
		<tr><td valign="top" align="center" colspan=3 >
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" >
				<tr><td valign="bottom" align="center" style="height:22px"><b>辅修信息</b></td></tr>
				<tr><td valign="bottom" align="center" style="height:4px"><script language="JavaScript" >Draw_HR('99.5%')</script>
				</td></tr>
			</table>   
		</td></tr>
		<tr><td valign="top" align="center" >
			<table width=400 border=1 cellpadding=0 cellspacing=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'>
				<tr class='T'><td><br></td></tr>
				<tr><td><%=vstr%></td></tr>
				<tr class='T'><td><br></td></tr>
			</table>
		</td></tr> 
	</table>
</body>
</html>
