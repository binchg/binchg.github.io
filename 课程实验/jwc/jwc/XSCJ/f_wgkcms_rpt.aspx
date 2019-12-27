<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vXNXQ="",vYX="",vZY="",vNJ="",vRpt="",vMS="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt=Request.Form["Chkrxk"].ToString();}catch(Exception){vRpt="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vMS=Request.Form["txt_ms"].ToString();}catch(Exception){vMS="";}
	try{R=pSub.GetTableWGKCMS(vXNXQ,vNJ,vZY,vRpt,vMS);
	}catch(Exception ){}

}
pSub.ArrayDefineWGKCMS();
Response.Output.Write (pSub.DrawRptHead(R,true));

if(R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMain());
	}catch(Exception ){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>