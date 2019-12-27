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
//USER_ID="01231109";

string vHTML=xsxj.DrawMainBYSHJL(USER_ID);
Response.Output.Write(pSub.HtmlHear());
if (vHTML!=""){
	Response.Output.Write(vHTML);
}
Response.Output.Write(pSub.HtmlTrail());
%>