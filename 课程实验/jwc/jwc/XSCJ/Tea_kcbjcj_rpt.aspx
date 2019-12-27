<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vRpt="",vKC="",vBJ="",vXNXQ="",gsRpt="",USER_ID="",selbj="";
int R=0;
Response.Output.Write (PubObj.HtmlHear("",""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{selbj=Request.Form["selbj"].ToString();}catch(Exception){selbj="";}
	if (selbj=="1")
	{
		try{vBJ=Request.Form["sel_skbj"].ToString();}catch(Exception){vBJ="";}	
	}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	try{USER_ID=Request.Form["hid_userid"].ToString();}catch(Exception){USER_ID="";}
	if (vRpt=="1")
	{
		try{gsRpt=Request.Form["gs"].ToString();}catch(Exception){gsRpt="";}
		vRpt=gsRpt;
	}
	
	if (vRpt=="0")
	{
		try{R=pSub.GetTableKCBJCJ(vXNXQ,vKC,vBJ,USER_ID);
		}catch(Exception){}
		pSub.ArrayDefineKCBJCJ();
		try{Response.Output.Write(pSub.RptHearInfoTEAYXCJ(vXNXQ,vKC,vBJ,USER_ID));
		}catch(Exception){}
		Response.Output.Write(pSub.DrawRptHeadKCBJCJ("TEA"));
		if (R>0)
		{
			Response.Output.Write (pSub.DrawRptMainKCBJCJ());
		}

	}
	else if (vRpt=="2")
	{
		R=pSub.GetTableTEAYXCJ(vXNXQ,USER_ID,vKC,vBJ,vRpt);
		pSub.ArrayDefineTEAYXCJ(vRpt);
		if (R>0)
		{
			Response.Output.Write(pSub.DrawRptMainTEAYXCJ1(vXNXQ,vKC,vBJ,USER_ID));
		}
	}
	else if (vRpt=="3")
	{
		R=pSub.GetTableTEAYXCJ(vXNXQ,USER_ID,vKC,vBJ,vRpt);
		pSub.ArrayDefineTEAYXCJ(vRpt);
		if (R>0)
		{
			Response.Output.Write(pSub.DrawRptMainTEAYXCJ2(vXNXQ,vKC,vBJ,USER_ID));
		}
	}
	Response.Output.Write ("<script language=javascript>parent.document.all.print.disabled=false;</script>");
}
Response.Output.Write (PubObj.HtmlTrail());
%>