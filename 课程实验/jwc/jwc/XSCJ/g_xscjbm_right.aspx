<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vBJ="",vNJ="",vZY="",vYX="",vXN="",vXQ="",sKC="",sOrder="",vWTGKCS="",sP1="",sP2="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{sKC=Request.Form["hid_kc"].ToString();}catch(Exception){sKC="";}
	try{sOrder=Request.Form["hid_pm"].ToString();}catch(Exception){sOrder="";}
	try{vWTGKCS=Request.Form["txtwtg"].ToString();}catch(Exception){vWTGKCS="";}
	try{sP1=Request.Form["txtmc1"].ToString();}catch(Exception){sP1="";}
	try{sP2=Request.Form["txtmc2"].ToString();}catch(Exception){sP1="";}
	try{R=pSub.GetTableXSCJBM(vXN,vXQ,vNJ,vYX,vZY,vBJ,sKC,sOrder,vWTGKCS);
	}catch(Exception ){}
}
pSub.ArrayDefineXSCJBM();
Response.Output.Write (pSub.DrawRptHead("","760"));
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawMainXSCJBM(sP1,sP2));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
