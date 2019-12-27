<%@ Page %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Web" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
BLL.XSCJ.BLL_CJCX pSub=new BLL_CJCX();
string vBJ="",vPg="1",vXNXQ="",vRptRad="";
string[] vRptChk={"","","",""};
int R=0;
int vPgF=0;
int vPgT=0;
Response.Output.Write (PubObj.HtmlHear(""));
if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vRptRad=Request.Form["radCx"].ToString();}catch(Exception){vRptRad="";}
	try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){vXNXQ="";}
	try{vBJ=Request.Form["sel_bj"].ToString();}catch(Exception){vBJ="";}
	try{vRptChk[0]=Request.Form["chkCx0"].ToString();}catch(Exception){vRptChk[0]="";}
	try{vRptChk[1]=Request.Form["chkCx1"].ToString();}catch(Exception){vRptChk[1]="";}
	try{vRptChk[2]=Request.Form["chkCx2"].ToString();}catch(Exception){vRptChk[2]="";}
	try{vRptChk[3]=Request.Form["chkCx3"].ToString();}catch(Exception){vRptChk[3]="";}
	try{vPg=Request.Form["pag_txt"].ToString();}catch(Exception){vPg="1";}
	vPgF=6*(int.Parse(vPg)-1)+1;
	vPgT=6*(int.Parse(vPg));
	try{R=pSub.GetTableBJXQCJ(vXNXQ,vBJ,vRptRad,vRptChk);
	}catch(Exception ){}
	
	if (R>0)
	{
//		try{
			Response.Output.Write (pSub.DrawRptHeadBJXQCJ(vPgF,vPgT,R));
			Response.Output.Write (pSub.DrawRptMainBJXQCJ(vXNXQ,vBJ,vRptRad,vRptChk));
//		}catch(Exception ){}
	}	
}



Response.Output.Write (PubObj.HtmlTrail());
%>
<FONT face="ËÎÌו"></FONT>
