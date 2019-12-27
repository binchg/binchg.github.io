<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_STU pSub=new BLL_STU();
string USER_ID=PubObj.USER_ID;
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
try{R=pSub.GetTableXSDJKSCJ(USER_ID);
}catch(Exception ){}
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainDJKSCJ());
	}catch(Exception ){}
}
else
{
	Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
