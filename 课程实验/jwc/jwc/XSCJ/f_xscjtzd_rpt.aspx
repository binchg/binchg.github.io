<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vNJ="",vBJ="",vXNXQ="",vZY="",vYX="",vXH="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vXH=Request.Form["sel_xs"].ToString();}catch(Exception){vXH="";}
	try{R=pSub.GetTableXSCJTZD(vXNXQ,vNJ,vYX,vZY,vBJ,vXH);
	}catch(Exception ){}
	pSub.ArrayDefineXSCJTZD();
	if (R>0)
	{
	//	try{
			Response.Output.Write (pSub.DrawRptMainXSCJTZD(vXNXQ));
	//	}catch(Exception ){}
	}
}


Response.Output.Write (PubObj.HtmlTrail());
%>