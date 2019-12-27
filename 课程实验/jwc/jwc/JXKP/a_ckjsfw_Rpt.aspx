<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vYX="",vYXJS="",vPJLC="";
int R=0;

Response.Output.Write (PubObj.HtmlHear(""));
pSub.ArrayDefinePJFW();


if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vYXJS=Request.Form["sel_js"].ToString();}catch(Exception){vYXJS="";}
	try{vPJLC=Request.Form["sel_pjlc"].ToString();}catch(Exception){vPJLC="";}
	try{R=pSub.GetTablePJPFW(vXNXQ,vPJLC,vYXJS);	
	}catch(Exception){}
}

if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainPJFW());
	}catch(Exception){}
}

Response.Output.Write (PubObj.HtmlTrail());
%>