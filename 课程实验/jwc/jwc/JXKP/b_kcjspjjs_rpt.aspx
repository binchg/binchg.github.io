<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vCDDW="",vKC="",vPJLC="",vPJZT="",vRpt="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));



if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vPJLC=Request.Form["sel_pjlc"].ToString();}catch(Exception){vPJLC="";}
	if(vPJLC!="")
	{
		vPJLC=vPJLC.Split('|')[0];
	}

	try{vPJZT=Request.Form["sel_pjzt"].ToString();}catch(Exception){vPJZT="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	try{R=pSub.GetTableKCJSPJJS(vXNXQ,vPJLC,vPJZT,vCDDW,vKC,vRpt);
	}catch(Exception){}
}


if (R>0)
{
	try{Response.Output.Write (pSub.DrawMainKCJSPJJS(vRpt,vXNXQ,vPJLC,vPJZT,vKC));
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
