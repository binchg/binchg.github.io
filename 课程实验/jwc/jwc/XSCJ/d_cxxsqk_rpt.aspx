<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_rpt.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_PRINT_Fun.js'></script>
<title></title>
</head>

<body onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin='0' leftmargin='0'>
<center>
<%
	int R=0;
	string vXNXQ="";
	string vYX="";
	string vZY="";
	string vBJ="";
	string vKC="";
	string vCDDW="";
	string vRpt="";
	
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CX pSub=new BLL_CX();
	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		
		try{vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){vXNXQ="";}
		try{vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){vYX="";}
		try{vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){vZY="";}
		try{vBJ=Request.Form["sel_bj"].ToString().Trim();}catch(Exception){vBJ="";}
		try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();;}catch(Exception){vCDDW="";}
		try{vKC=Request.Form["sel_mxkc"].ToString().Trim();}catch(Exception){vKC="";}
		try{vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){vRpt="";}
		try{R=pSub.GetRowsCXQK(vXNXQ,vYX,vZY,vBJ,vCDDW,vKC,vRpt);
		}catch(Exception ){}
	}
	pSub.ArrayDefineCXQK(vRpt);
	if (R>0)
	{
		try{Response.Output.Write (pSub.DrawRptMainCXQK(vXNXQ,vRpt));
		}catch(Exception){}
	} 
%>
</center>
</body>
</html>