<%@ Page %>
<%@ Import NameSpace="BLL.XSXJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%
BLL.XSXJ.XSXJ_XSDA pSub=new BLL.XSXJ.XSXJ_XSDA(this);
BLL.XSXJ.XSXJ_STU xsxj=new BLL.XSXJ.XSXJ_STU();
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;

int R=0;

//USER_ID="200500000045";

Response.Output.Write(pSub.HtmlHear());
R=xsxj.GetTableCurXSSSXX(USER_ID);
if(R>0)
{
	Response.Output.Write(xsxj.DrawMainXSSSXX(USER_ID));
}
if(R==0) Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
Response.Output.Write(pSub.HtmlTrail());
%>