<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_STU pSub=new BLL_STU();
string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
//USER_ID="01011028";

int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
try{R=pSub.GetTableXSMXKC(USER_ID);
}catch(Exception){}

pSub.ArrayDefineXSMXKC();
Response.Output.Write (pSub.DrawRptHead(USER_ID,"",R,false));
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainXSMXKC());
	}catch(Exception){}
}
else
{
	Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
}
Response.Output.Write (PubObj.HtmlTrail());
%>