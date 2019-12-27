<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJRDJR pSub=new BLL_CJRDJR();


string USER_ID=PubObj.USER_ID;
string USER_ZH=PubObj.USER_ZH;
string USER_NAME=PubObj.USER_NAME;
string USER_LVID=PubObj.USER_LVID;
string USER_BJID=PubObj.USER_BJID;
string USER_LEVEL=PubObj.USER_LEVEL;
string USER_OPTYX=PubObj.USER_OPTYX;
string USER_OPTDW=PubObj.USER_OPTDW;

string vXH="",vXN="",vRpt="";
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	if (USER_LEVEL!="STU")
	{	try{vXH=Request.Form["SelXS"].ToString().Trim();}catch(Exception){vXH="";}
		vXH=PubObj.RequestSafeValue(vXH);
	}
	else
	{
		vXH=USER_ID;
	}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	try{vXN=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXN="";}
	try{
		Response.Output.Write (pSub.DrawRptMainCJRDJL(vXN,vXH,vRpt));
	}catch(Exception ){}
	
}
Response.Output.Write (PubObj.HtmlTrail());
%>
