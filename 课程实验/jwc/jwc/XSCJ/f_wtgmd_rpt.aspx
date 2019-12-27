<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vCDDW="",vYX="",vXN="",vXQ="",vRpt="0";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt=Request.Form["rBJKC"].ToString();}catch(Exception){vRpt="";}
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	
	try{R=pSub.GetTableWTGMD(vXN,vXQ,vCDDW,vYX,vRpt);
	}catch(Exception ){}
	
	
}
pSub.ArrayDefineWTGMD(vRpt);
Response.Output.Write (pSub.DrawRptHead(R,true));
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainWTGMD(vRpt));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>