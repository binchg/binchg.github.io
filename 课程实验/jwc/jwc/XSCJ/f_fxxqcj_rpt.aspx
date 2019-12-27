
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Page %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vZY="",vNJ="",vPg="1",vXNXQ="",vRptRad="";
string[] vRptChk={"","","",""};
int R=0;
int vPgF=0;
int vPgT=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRptRad=Request.Form["radCx"].ToString();}catch(Exception){vRptRad="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vZY=Request.Form["sel_zy"].ToString();}catch(Exception){vZY="";}
	try{vNJ=Request.Form["sel_nj"].ToString();}catch(Exception){vNJ="";}
	try{vRptChk[0]=Request.Form["chkCx0"].ToString();}catch(Exception){vRptChk[0]="";}
	try{vRptChk[1]=Request.Form["chkCx1"].ToString();}catch(Exception){vRptChk[1]="";}
	try{vRptChk[2]=Request.Form["chkCx2"].ToString();}catch(Exception){vRptChk[2]="";}
	try{vRptChk[3]=Request.Form["chkCx3"].ToString();}catch(Exception){vRptChk[3]="";}
	try{vPg=Request.Form["pag_txt"].ToString();}catch(Exception){vPg="1";}
	vPgF=6*(int.Parse(vPg)-1)+1;
	vPgT=6*(int.Parse(vPg));
	try{R=pSub.GetTableFXXQCJ(vXNXQ,vNJ,vZY,vRptRad,vRptChk);
	}catch(Exception ){}
	
	if (R>0)
	{
		try{
			Response.Output.Write (pSub.DrawRptHeadFXXQCJ(vPgF,vPgT,R));
			Response.Output.Write (pSub.DrawRptMainFXXQCJ(vXNXQ,vNJ,vZY,vRptRad,vRptChk));
		}catch(Exception ){}
	}	
}



Response.Output.Write (PubObj.HtmlTrail());
%>