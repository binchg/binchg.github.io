<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
string vZY="",vNJ="";
try{vZY=Request.QueryString["fxzy"].ToString();}catch(Exception){}
try{vNJ=Request.QueryString["fxnj"].ToString();}catch(Exception){}

%>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>
<link rel='stylesheet' href='../_style/styles_Rpt.css' type='text/css'>
<script language='JavaScript' src='./../include/Scr/ind_HTML_hr.js'></script>
<title>辅修年级/专业培养方案</title>
</head>
<body onsource=window.event.returnValue=false topmargin='0' leftmargin='0'>
<center>
<%
int R=xsxj.GetTableZYXX(vZY);
if (R==0)
{Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");}
else
{
	Response.Output.Write(xsxj.DrawMainFXZY(vNJ,vZY));
}
%>
</center>
</body>
</html>