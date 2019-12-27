<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Page %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",vXQ="",vKF="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	//try{vXNXQ=Request.Form["SelXN"].ToString();}catch(Exception){vXNXQ="";}
	try{vXQ=Request.Form["Sel_XQ"].ToString();}catch(Exception){vXQ="";}
	try{vKF=Request.Form["Sel_KF"].ToString();}catch(Exception){vKF="";}
	pSub.ArrayDefineKCJC();
	//R=pSub.GetTableKCJC(vXNXQ,vXQ,vKF);
	R=pSub.GetTableKCJC(vXQ,vKF);
	if (R>0)
	{
		Response.Output.Write (pSub.DrawRptMainKCJC());
	}
}
Response.Output.Write (PubObj.HtmlTrail());
%>