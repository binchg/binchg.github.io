<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vCDDW="",vRpt="",vKC="",vXNXQ="",fstr="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	try{vKC=Request.Form["sel_kc"].ToString();}catch(Exception){vKC="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	if (vRpt=="1") 
		fstr="qmcj_";
	else if (vRpt=="2")
		fstr="qzcj_";
	else if (vRpt=="3") 
		fstr="pscj_";
	else
		fstr="";
	
	try{R=pSub.GetTableXSCJTJ(vXNXQ,fstr,vCDDW,vKC);
	}catch(Exception ){}
	Response.Output.Write(pSub.RptHearInfoXSCJTJ(vKC));
}
pSub.ArrayDefineXSCJTJ();
Response.Output.Write(pSub.DrawRptHeadXSCJTJ());
if (R>0)
{
	Response.Output.Write (pSub.DrawRptMainXSCJTJ());
}
Response.Output.Write (PubObj.HtmlTrail());
%>