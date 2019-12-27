<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_STU pSub=new BLL_STU();
string USER_ID=PubObj.USER_ID;

string vXNXQ="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
try{R=pSub.GetTableXSCXKC(USER_ID);
}catch(Exception ){}
pSub.ArrayDefineXSCXKC();
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainXSCXKC());
	}catch(Exception ){}
}
else
{
	Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
}
Response.Output.Write (PubObj.HtmlTrail());
%>