<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vPJZT="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
pSub.ArrayDefinePJJGFB();

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vPJZT=Request.Form["sel_pjzt"].ToString();}catch(Exception){vPJZT="";}
	try{R=pSub.GetTablePJJGFB(vXNXQ,vPJZT);
	}catch(Exception){}
}

Response.Output.Write (pSub.DrawRptHearPJJGFB());
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainPJJGFB());
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
