<%@ Page %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",vXNXQJS="",vCDDW="";
int R=0; 

Response.Output.Write (PubObj.HtmlHear(""));

	try{ vXNXQ=Request.Form["SelXN"].ToString().Trim();}catch(Exception){};
	try{ vXNXQJS=Request.Form["SelXNJS"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
    pSub.ArrayDefineFKC_CKJCSYQK();
    R=pSub.GetTableFKC_CKJCSYQK(vXNXQ,vXNXQJS,vCDDW);
	Response.Output.Write(pSub.DrawRptHearFKC_CKJCSYQK());
	Response.Output.Write(pSub.DrawRptMainFKC_CKJCSYQK());

Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
