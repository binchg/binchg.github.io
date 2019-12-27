<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vRAD="";
string vXH="";
string vXN="";
string vXQ="";
string zfx_flag="";
string vRpt="";
string vXNXQ="";
int R=0,M=0;

Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRpt=Request.Form["sj"].ToString();}catch(Exception){vRpt="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vXN=Request.Form["sel_xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["sel_xq"].ToString();}catch(Exception){vXQ="";}
	try{vRAD=Request.Form["SelXNXQ"].ToString();}catch(Exception){vRAD="";}
	try{zfx_flag=Request.Form["zfx_flag"].ToString();}catch(Exception){zfx_flag="";}
	try{vXH=Request.Form["sel_xs"].ToString();}catch(Exception){vXH="";}
	try{R=pSub.GetTableDGXSCJ(vXN,vXQ,vXH,vRpt,vRAD,zfx_flag);
	}catch(Exception ){}
}
pSub.ArrayDefineDGXSCJ(vRpt);
if (R>0)
{
	try{
		Response.Output.Write("<div align=left style='height:15px'>"+PubObj.GetStuInfo(vXH,"")+"</div>");
		Response.Output.Write(pSub.DrawRptMainDGXSCJ(vRpt,false));
	}catch(Exception ){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>