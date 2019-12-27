<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vYX="",vXNXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{R=pSub.GetTableWDGSXTJ(vXNXQ,vYX);
	}catch(Exception ){}
}
pSub.ArrayDefineWDGSXTJ();
Response.Output.Write (pSub.DrawRptHead(R,true));
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainWDGSXTJ());
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>