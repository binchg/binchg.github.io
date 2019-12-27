<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vXNXQ="",vLB="",vDJ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_pmsj"].ToString();}catch(Exception){vXNXQ="";}
	try{vLB=Request.Form["sel_lb"].ToString();}catch(Exception){vLB="";}
	try{vDJ=Request.Form["sel_dj"].ToString();}catch(Exception){vDJ="";}
	try{R=pSub.GetTableDJCJFX(vXNXQ,vDJ);
	}catch(Exception ){}
}
pSub.ArrayDefineDJCJFX(vDJ);
Response.Output.Write (pSub.DrawHeadDJCJFX());
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainDJCJFX());
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
