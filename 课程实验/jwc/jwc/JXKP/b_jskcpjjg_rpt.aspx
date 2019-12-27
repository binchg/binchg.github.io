
<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vYX="",vJS="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));



if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}

	
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vJS=Request.Form["sel_js"].ToString();}catch(Exception){vJS="";}
	try{R=pSub.GetTableJSKCPJJG(vXNXQ,vYX,vJS);
	}catch(Exception){}
}


if (R>0)
{
	try{Response.Output.Write (pSub.DrawMainJSKCPJJG(vXNXQ,vYX,vJS));
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>


