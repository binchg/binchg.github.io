

<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vXN="",vXQ="",vYX="",vZY="",vNJ="",vXF="",vBL="",vKCS="",rxk="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vKCS=Request.Form["txt_KC"].ToString();}catch(Exception){vKCS="";}
	try{vXF=Request.Form["txt_xf"].ToString();}catch(Exception){vXF="";}
	try{vBL=Request.Form["txt_bfb"].ToString();}catch(Exception){vBL="";}
	try{rxk=Request.Form["rxkrad"].ToString();}catch(Exception){rxk="";}
	try{R=pSub.GetTableWDGSXTJYX(vXN,vXQ,vYX,vNJ,vZY,vKCS,vXF,vBL,rxk);
	}catch(Exception ){}

}
pSub.ArrayDefineWDGSXTJYX();
if(R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainWDGSXTJYX());
	}catch(Exception ){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>