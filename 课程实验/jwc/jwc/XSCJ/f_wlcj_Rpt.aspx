<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vCDDW="",vYX="",vXNXQ="",vRpt="0",vRpt1="0",vRpt2="";
int R=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt1=Request.Form["radkcjs"].ToString();}catch(Exception){vRpt1="";}
	try{vRpt2=Request.Form["radCXFS"].ToString();}catch(Exception){vRpt2="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vCDDW=Request.Form["sel_cddw"].ToString();}catch(Exception){vCDDW="";}
	try{vYX=Request.Form["sel_yx"].ToString();}catch(Exception){vYX="";}
	if (vRpt1=="1" && vRpt2=="0") vRpt="1";
	if (vRpt2=="1")
	{
		vRpt="3";
	}
	try{R=pSub.GetTableWJCJ(vXNXQ,vCDDW,vYX,vRpt);
	}catch(Exception ){}	
}
pSub.ArrayDefineWJCJ(vRpt);
Response.Output.Write (pSub.DrawRptHead(R,true));
if (R>0)
{
	try{
		Response.Output.Write (pSub.DrawRptMainWJCJ(vRpt));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
