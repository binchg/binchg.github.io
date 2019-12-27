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
	string vCDDW="";
	string vRpt="";
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_MX pSub=new BLL_MX();
	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		
		try{vXNXQ=Request.Form["sel_xnxq"];}catch(Exception){vXNXQ="";}
		try{vYX=Request.Form["sel_yx"];}catch(Exception){vYX="";}
		try{vCDDW=Request.Form["sel_cddw"];}catch(Exception){vCDDW="";}
		try{vRpt=Request.Form["radCx"];}catch(Exception){vRpt="";}
		try{R=pSub.GetRows(vXNXQ.Trim(),vCDDW.Trim(),vYX.Trim(),vRpt);
		}catch(Exception ){}
	}
	pSub.ArrayDefineMXQK(vRpt);
	Response.Output.Write (pSub.DrawHead(R));
	
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptMainMXQK(vRpt));
		}catch(Exception ){}
	} 
%>
</center>
</body>
</html>