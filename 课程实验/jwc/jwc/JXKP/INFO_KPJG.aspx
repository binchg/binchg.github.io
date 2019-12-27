<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vLB="",vXNXQ="",vKC="",vJS="";
string vStr="";
int R=0;
try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKC=Request.QueryString["kcdm"].ToString();}catch(Exception){vKC="";}
try{vJS=Request.QueryString["jsdm"].ToString();}catch(Exception){vJS="";}
%>
<html>
<head>
<title>考评结果</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_rpt.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center" height="100%">
<%
pSub.ArrayDefineINFOKPJG();
vStr=pSub.GetRptHearInfoINFOKPJG(vKC,vJS);
Response.Output.Write(pSub.DrawRptHearPJJG(vStr));
R=pSub.GetTableINFOKPJG(vLB,vXNXQ,vKC,vJS);
if (R>0)
{
	Response.Output.Write(pSub.DrawRptMainINFOKPJG());	
} 
%>
</td></tr> 
</table>
</body>
</html>