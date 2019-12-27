<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
string vXNXQ="",vJSLC="",vYX="",vJS="";
int R=0;

//USER_ID="1996057";

Response.Output.Write (PubObj.HtmlHear(""));

pSub.ArrayDefineJXZGLFXYX();
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{R=pSub.GetTableJXZGLFXYX(vXNXQ);	
	}catch(Exception){}
}
Response.Output.Write (pSub.DrawRptHead(R,true));
if (R>0)
{
	try{Response.Output.Write (pSub.DrawRptMainJXZGLFXYX());
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
