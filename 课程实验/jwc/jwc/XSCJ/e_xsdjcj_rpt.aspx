<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vYX="",vZY="",vBJ="",vXNXQ="",vLB="",vDJ="",vNJ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_pmsj"].ToString();}catch(Exception){vXNXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vLB=Request.Form["sel_lb"].ToString();}catch(Exception){vLB="";}
	try{vDJ=Request.Form["sel_dj"].ToString();}catch(Exception){vDJ="";}
	try{R=pSub.GetTableDJCJ(vXNXQ,vLB,vDJ,vBJ,vZY,vYX,vNJ);
	}catch(Exception ){}
}
pSub.ArrayDefineDJCJ();
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainDJCJ());
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>