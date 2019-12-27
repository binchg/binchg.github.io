<%@ Page %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL PubObj =new BLL_subPrivate_JCGL(this);
BLL.JCGL.BLL_JCGL pSub=new BLL_JCGL();
string vXNXQ="",vXN="",vND="",vXNXQ_Rad="",vCBND_Rad="";
int R=0; 

Response.Output.Write (PubObj.HtmlHear(""));

	try{ vXNXQ=Request.Form["SelXNXQ"].ToString().Trim();}catch(Exception){};
	try{ vXN=Request.Form["SelXN"].ToString().Trim();}catch(Exception){};
	try{ vND=Request.Form["SelND"].ToString().Trim();}catch(Exception){};
	
	try{ vXNXQ_Rad=Request.Form["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vCBND_Rad=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	
   Response.Output.Write(pSub.GetTable_CKLQJCXX(vXNXQ,vXN,vND,vXNXQ_Rad,vCBND_Rad));

Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
