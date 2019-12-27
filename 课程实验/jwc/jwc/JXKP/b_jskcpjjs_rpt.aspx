<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vYX="",vJS="",vPJLC="",vPJZT="",vRpt="";
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
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vJS=Request.Form["sel_js"].ToString();}catch(Exception){vJS="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	try{R=pSub.GetTableJSKCPJJS(vXNXQ,vPJLC,vPJZT,vYX,vJS,vRpt);
	}catch(Exception){}
}


if (R>0)
{
	try{Response.Output.Write (pSub.DrawMainJSKCPJJS(vRpt,vXNXQ,vPJLC,vPJZT,vJS));
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>


