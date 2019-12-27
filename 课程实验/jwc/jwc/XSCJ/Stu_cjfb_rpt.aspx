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
string vXN="",vXQ="",vRpt="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	pSub.ArrayDefineXSCJFB();
	Response.Output.Write (pSub.DrawRptHeadXSCJFB());
		try{R=pSub.GetTableXSCJFB(USER_ID,vXN,vXQ);
		}catch(Exception){}
	if (R>0)
	{
		try{Response.Output.Write (pSub.DrawRptMainXSCJFB_KC());
		}catch(Exception){}
		
	}
	else
	{
		Response.Redirect ("../_help/sorry.aspx?str=NO_DATA");
	}
}
Response.Output.Write (PubObj.HtmlTrail());

%>
