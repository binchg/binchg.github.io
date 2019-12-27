<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vNJ="",vXNXQ="",vZY="",vYX="",vKC="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{R=pSub.GetTableBYSJHJCJ(vNJ,vZY,vKC);
	}catch(Exception ){}
	pSub.ArrayDefineBYSJHJCJ();
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptMainBYSJHJCJ(vNJ,vZY,vKC,R));
		}catch(Exception ){}
	}
}


Response.Output.Write (PubObj.HtmlTrail());
%>