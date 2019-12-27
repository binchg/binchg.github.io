<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vKC="",vBJ="",vXNXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{R=pSub.GetTableBJKCCJ(vXNXQ,"",vBJ,vKC,"");
	}catch(Exception ){}
}
pSub.ArrayDefineBJKCCJ();
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainBJKCCJ(vXNXQ,vKC,vBJ));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>