<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vCDDW="";
int R=0;

//USER_ID="1996057";

Response.Output.Write (PubObj.HtmlHear(""));

pSub.ArrayDefineJXZGLCDDWKC();
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	try{R=pSub.GetTableJXZGLCDDWKC(vXNXQ,vCDDW);	
	}catch(Exception){}
}
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainJXZGLCDDWKC());
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>



