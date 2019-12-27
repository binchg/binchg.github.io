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
	string vNJ="";
	
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CX pSub=new BLL_CX();
	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		
		try{vXNXQ=Request.Form["sel_xnxq"];}catch(Exception){vXNXQ="";}
		try{vYX=Request.Form["sel_yx"];}catch(Exception){vYX="";}
		try{vZY=Request.Form["sel_zy"];}catch(Exception){vZY="";}
		try{vNJ=Request.Form["sel_nj"];}catch(Exception){vNJ="";}
		try{R=pSub.GetRowsYXCXKC(vXNXQ,vNJ,vYX,vZY);
		}catch(Exception ){}
	}
	pSub.ArrayDefineYXCXKC();
	Response.Output.Write (pSub.DrawHeadYXCXKC(R));
	
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptMainYXCXKC());
		}catch(Exception ){}
	} 
%>
</center>
</body>
</html>
