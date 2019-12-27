<%@ Page %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="";
string USER_ID=PubObj.USER_ID;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["SelXN"].ToString();}catch(Exception){vXNXQ="";}
	Response.Output.Write (pSub.DrawRptXSLQDZ(USER_ID,vXNXQ));
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
