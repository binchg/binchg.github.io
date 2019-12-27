<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.JZMXKC pSub=new JZMXKC();
string vNJ="";
string vZY="";
string vYX="";
string vXNXQ="";
try{vNJ=Request.Form["sel_nj"];}
catch(Exception ){}
try{vZY=Request.Form["sel_zy"];}
catch(Exception ){}
try{vYX=Request.Form["sel_yx"];}
catch(Exception ){}
try{vXNXQ=Request.Form["sel_xnxq"];}
catch(Exception ){}
Response.Output.Write (PubObj.HtmlHear(""));
if (Request.ServerVariables["REQUEST_METHOD"]=="POST")
{
	try{
		Response.Output.Write(pSub.DrawMain(vNJ,vYX,vZY,vXNXQ));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
