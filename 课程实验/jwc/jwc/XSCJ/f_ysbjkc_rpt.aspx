<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vNJ="",vBJ="",vXNXQ="",vZY="",vYX="",vKC="";
int R=0;
string P=P=Request.QueryString["p"];
Response.Output.Write (PubObj.HtmlHear(""));

if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	if(P=="2")
	{
		try{vBJ=Request.Form["sel_skbj"].ToString();}catch(Exception){vBJ="";}
	}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{R=pSub.GetTableBJXSCJYS(vXNXQ,vBJ,vKC);
	}catch(Exception ){}
	pSub.ArrayDefineBJXSCJYS();
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptMainBJXSCJYS(vXNXQ,R,P,vBJ));
		}catch(Exception ){}
	}
}


Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
