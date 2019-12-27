<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
string vXNXQ="",vXH="",vPlevel="";
string vStr="";
int R=0;
try{vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){}
try{vXH=Request.QueryString["xh"].ToString().Trim();}catch(Exception){}
try{vPlevel=Request.QueryString["plevel"].ToString().Trim();}catch(Exception){}
R=xsxj.GetTableXSCFXX(vXNXQ,vXH,vPlevel);
if(R==0)
{Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");}
vStr=xsxj.DrawMainCXCFXX();

%>
<html>
<head>
<title>撤消惩罚信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table align=center width=100% border=0 cellpadding=0 cellspacing=0 height=100% >
<tr><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>撤消惩罚信息</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td align=center valign=top>
<%=vStr%>
</td></tr>
</table>


</body>
</html>