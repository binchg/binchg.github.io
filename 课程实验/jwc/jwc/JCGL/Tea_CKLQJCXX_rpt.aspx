<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Page %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
string vflag="";
int R=0;
//USER_ID="0004023";

Response.Output.Write (PubObj.HtmlHear(""));


pSub.ArrayDefineTeaCKLQJCXX();
R=pSub.GetTableTeaCKLQJCXX(USER_ID);
if (R>0)
{
	Response.Output.Write(pSub.DrawRptHearTeaCKLQJCXX());
	Response.Output.Write(pSub.DrawRptMainTeaCKLQJCXX());
}

Response.Output.Write (PubObj.HtmlTrail());
%>
