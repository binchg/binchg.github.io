<%@ Page CodeBehind="Tea_jxpjjgsd_rpt.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.JXKP.Tea_jxpjjgsd_rpt" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vPJLC="",vPJZT="";
string USER_ID=PubObj.USER_ID;
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vPJLC=Request.Form["sel_pjlc"].ToString();}catch(Exception){vPJLC="";}
	try{vPJZT=Request.Form["sel_pjzt"].ToString();}catch(Exception){vPJZT="";}
	try{R=pSub.GetTableJSPJJGSD(vXNXQ,vPJLC,vPJZT,USER_ID);	
	}catch(Exception){}
}
pSub.ArrayDefineJSPJJGSD();
Response.Output.Write (pSub.DrawRptHeadTEA(R));

if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainPJJGSD(vXNXQ));
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>