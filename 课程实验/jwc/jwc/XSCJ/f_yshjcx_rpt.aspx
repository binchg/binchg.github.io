<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vXNXQ="",vKC="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{R=pSub.GetTableCXHJYS(vXNXQ,vKC);
	}catch(Exception ){}
	pSub.ArrayDefineCXHJYS();
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptMainCXHJYS(vXNXQ,R));
		}catch(Exception ){}
	}
}


Response.Output.Write (PubObj.HtmlTrail());
%>