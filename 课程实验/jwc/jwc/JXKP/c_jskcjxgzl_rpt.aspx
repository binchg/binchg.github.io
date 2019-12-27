<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vJSLC="",vYX="",vJS="";
int R=0;

//USER_ID="1996057";

Response.Output.Write (PubObj.HtmlHear(""));

pSub.ArrayDefineJXZGLYXJS();
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vJSLC=Request.Form["sel_jslc"].ToString();}catch(Exception){vJSLC="";}
	try{vJS=Request.Form["sel_js"].ToString();}catch(Exception){vJS="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{R=pSub.GetTableJXZGLYXJS(vXNXQ,vJSLC,vYX,vJS);	
	}catch(Exception){}
}
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainJXZGLYXJS());
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>


