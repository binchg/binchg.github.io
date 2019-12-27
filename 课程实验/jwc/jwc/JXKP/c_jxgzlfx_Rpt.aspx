<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vYX="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
pSub.ArrayDefineJXGZLFX();


if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{R=pSub.GetTableJXGZLFX(vXNXQ,vYX);	
	}catch(Exception){}
}

Response.Output.Write (pSub.DrawRptHearJXGZLFX());
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainJXGZLFX(vXNXQ));
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>