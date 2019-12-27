<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vJSLC="";
string USER_ID=PubObj.USER_ID;
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));

pSub.ArrayDefineJXZGLTEA();
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vJSLC=Request.Form["sel_jslc"].ToString();}catch(Exception){vJSLC="";}
	try{R=pSub.GetTableJXZGLTEA(vXNXQ,USER_ID,vJSLC);	
	}catch(Exception){}
}
Response.Output.Write (pSub.DrawRptHearJXZGLTEA(USER_ID));
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainJXZGLTEA());
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>

