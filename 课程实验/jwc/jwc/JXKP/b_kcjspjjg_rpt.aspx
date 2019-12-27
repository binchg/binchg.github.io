<%@ Page %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
	BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP();
	BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
	string vXNXQ="",vCDDW="",vKC="";
	int R=0;

	Response.Output.Write (PubObj.HtmlHear(""));
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
		try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
		try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
		try{R=pSub.GetTableKCJSPJJG(vXNXQ,vCDDW,vKC);
		}catch(Exception){}
	}
	if(R>0)
	{
		try{Response.Output.Write (pSub.DrawMainKCJSPJJG(vXNXQ,vCDDW,vKC));
		}catch(Exception){}
	}
	Response.Output.Write (PubObj.HtmlTrail());
%>


