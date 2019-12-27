<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;
string vXH="",vRpt="",vW="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	
	try{vXH=Request.Form["sel_xs"].ToString().Trim();}catch(Exception){vXH="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	pSub.ArrayDefineCJDAB(vRpt);
	if(vRpt=="0")vW="730";else vW="1600";
	try{R=pSub.GetTableCJDAB(vXH);
	}catch(Exception ){}
}
if(R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainCJDAB(vXH,vW,vRpt));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
