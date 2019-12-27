<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
pSub.DoorOnOff(this,"XJ_XS_XJYDSQ");
string vStr=xsxj.GetYDSQtime();
%>
<HTML>
<HEAD>
<title>异动申请</title>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</HEAD>
<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<table height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>申请异动</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td align="center">
	<table width=450 align=center border=0 cellpadding=0 cellspacing=0>
	<tr><td><br></td></tr>
	<tr><td>
		<%=vStr%>
	</td></tr>
	</table>
</td></tr>
<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Stu_ydsq_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</HTML>