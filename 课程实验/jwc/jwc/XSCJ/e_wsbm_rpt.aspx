<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vYX="",vZY="",vBJ="",vXNXQ="",vLB="",vDJ="",vRpt="",vXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	try{vXNXQ=Request.Form["sel_pmsj"].ToString();}catch(Exception){vXNXQ="";} 
	if(vRpt!="0")
	{
	    try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";} 
		try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
		try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
		try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}		
	}
	else
	{
		try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";} 
		try{vLB=Request.Form["sel_lb"].ToString();}catch(Exception){vLB="";}
		try{vDJ=Request.Form["sel_dj"].ToString();}catch(Exception){vDJ="";}	
	}
	try{
	R=pSub.GetTableDJBM(vXNXQ,vLB,vDJ,vBJ,vZY,vYX,vXQ);
	}catch(Exception){}
}
pSub.ArrayDefineDJBM();
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainDJBM(vXNXQ,vDJ,vYX,vZY,vBJ,vXQ));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%><FONT face=ËÎÌו></FONT>
