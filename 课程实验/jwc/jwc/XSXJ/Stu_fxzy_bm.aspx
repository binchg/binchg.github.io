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
string vstr=pSub.playTimeArea("FXSQ","");
%>
<HTML>
<HEAD>
<title>辅修专业报名</title>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="../_style/styles_Qry.css" type=text/css rel=stylesheet >
<base target=frmRpt>
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</HEAD>
<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<table height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
<tr><td valign="top" align="center" colspan=2>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>辅修报名</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
  
  <tr><td vAlign=top align=center height="5%" colspan=2>
      <table cellSpacing=0 cellPadding=3 width="660" align=center border=0>
        <tr><td id=disbut align=left width=100%><%=vstr%></TD></TR>
		</TD></TR></TABLE>  

</td></tr>

<tr><td valign="top" height=100%>
<iframe name=main2 src="Stu_fxzy_bm_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</HTML>
