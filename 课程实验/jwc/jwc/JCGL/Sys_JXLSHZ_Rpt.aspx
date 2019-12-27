<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Page %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",vCDDW="",vJC="";
int R=0; 

Response.Output.Write (PubObj.HtmlHear(""));

	try{ vXNXQ=Request.Form["SelXN"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vJC=Request.Form["txt_jc"].ToString().Trim();}catch(Exception){};
	
    pSub.ArrayDefineSysCKLQJCXX();
    R=pSub.GetTableSysCKLQJCXX(vXNXQ,vCDDW,vJC);
	Response.Output.Write(pSub.DrawRptHearSysCKLQJCXX());
	Response.Output.Write(pSub.DrawRptMainSysCKLQJCXX());

Response.Output.Write (PubObj.HtmlTrail());
%>