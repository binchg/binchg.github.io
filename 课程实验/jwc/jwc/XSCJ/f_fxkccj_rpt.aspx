
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vKC="",vNJ="",vZY="",vXNXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{R=pSub.GetTableFXKCCJ(vXNXQ,vNJ,vZY,vKC);
	}catch(Exception ){}
}
pSub.ArrayDefineFXKCCJ();
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainFXKCCJ(vXNXQ,vNJ,vZY,vKC));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>