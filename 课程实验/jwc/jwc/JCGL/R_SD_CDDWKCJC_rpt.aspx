<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Page %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",vCDDW="",vKC="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["SelXN"].ToString();}catch(Exception){vXNXQ="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	vKC=PubObj.RequestSafeValue(vKC);
	
	pSub.ArrayDefineSDCDDWKCJC();
	R=pSub.GetTableSDCDDWKCJC(vXNXQ,vCDDW,vKC);
	if (R>0)
	{
		Response.Output.Write (pSub.DrawRptMainSDCDDWKCJC(vXNXQ));
	}
}
Response.Output.Write (PubObj.HtmlTrail());
%>