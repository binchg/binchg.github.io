<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vYX="",vRpt="",vZY="",vBJ="",vXN="",vXQ="",fstr="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vRpt=Request.Form["radCx"].ToString();}catch(Exception){vRpt="";}
	
	if (vRpt=="1") 
		fstr="qmcj_";
	else if (vRpt=="2")
		fstr="qzcj_";
	else if (vRpt=="3") 
		fstr="pscj_";
	else
		fstr="";
	
	try{R=pSub.GetTableXSCJTJBJ(vXN,vXQ,fstr,vYX,vZY,vBJ);
	}catch(Exception ){}
	Response.Output.Write(pSub.RptHearInfoXSCJTJBJ(vBJ));
}
pSub.ArrayDefineXSCJTJBJ();
Response.Output.Write(pSub.DrawRptHeadXSCJTJBJ());
if (R>0)
{
	try{
	Response.Output.Write (pSub.DrawRptMainXSCJTJBJ());
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>