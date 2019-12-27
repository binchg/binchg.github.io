<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vYX="",vRpt="",vZY="",vBJ="",vXNXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear("","table"));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	
	try{R=pSub.GetTableXSXFTJ(vXNXQ,vYX,vZY,vBJ,vRpt);
	}catch(Exception ){}
	Response.Output.Write(pSub.RptHearInfoXSCJTJBJ(vBJ));
}
pSub.ArrayDefineXSXFTJ();
Response.Output.Write(pSub.DrawRptHeadXSXFTJ());
if (R>0)
{
	try{
	Response.Output.Write (pSub.DrawRptMain("990",false));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
