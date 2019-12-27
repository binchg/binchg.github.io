<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<!--#include file="DG_KCCJ_ADD_CheckValue.vbs"-->
<%
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CJLR pSub=new BLL_CJLR();
	BLL.XSCJ.BLL_CJLR_RPT wRpt=new BLL_CJLR_RPT();
	BLL.XSCJ.CJLR_SubmitCJ Save=new BLL.XSCJ.CJLR_SubmitCJ();
	string[] vPV=new string[11]{"","","","","","","","","","",""};
	string[] vCJLR=new string[5]{"","","","",""};
	string[] BFB=new string[8]{"","","","","","","",""};
	string vXNXQ="";
	string chkCJBXXS="";
	string sfSsubmit;
	Response.Write(pSub.HtmlHear("DG_KCCJ_ADD_rpt.aspx"));
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{sfSsubmit=Request.QueryString["f"];}catch(Exception){sfSsubmit="";}
		if(sfSsubmit=="ok")
		{
			Save.SubmitDQCJ(this);
		}
		try
		{
			vXNXQ=Request.Form["hid_xnxq"];
			vPV[0]=vXNXQ.Substring(0,4);
			vPV[1]=vXNXQ.Substring(vXNXQ.Length-1,1);
		}
		catch(Exception)
		{
			vPV[0]="";
			vPV[1]="";
		}
		try{vPV[2]=Request.Form["sel_kc"];}catch(Exception){vPV[2]="";}
		try{vPV[5]=Request.Form["sel_skbj"];}catch(Exception){vPV[5]="";}
		try{vPV[9]=Request.Form["sel_kslc"];}catch(Exception){vPV[9]="";}
		try{vPV[10]=Request.Form["hid_user"];}catch(Exception){vPV[10]="";}
		try{chkCJBXXS=Request.Form["CJBXXS"];}catch(Exception){chkCJBXXS="";}
		try{BFB[0]=Request.Form["chkPSBFB"];}catch(Exception){BFB[0]="";}
		try{BFB[1]=Request.Form["chkZKBFB"];}catch(Exception){BFB[1]="";}
		try{BFB[2]=Request.Form["chkMKBFB"];}catch(Exception){BFB[2]="";}
		try{BFB[3]=Request.Form["chkSYBFB"];}catch(Exception){BFB[3]="";}
		try{BFB[4]=Request.Form["chkSJBFB"];}catch(Exception){BFB[4]="";}
		try{BFB[5]=Request.Form["chkTLBFB"];}catch(Exception){BFB[5]="";}
		try{BFB[6]=Request.Form["chkJSBFB"];}catch(Exception){BFB[6]="";}
		try{BFB[7]=Request.Form["chkLLBFB"];}catch(Exception){BFB[7]="";}
		
	}
	try{
		Response.Output.Write(wRpt.DG_KCCJDrawRptMain(chkCJBXXS,"",BFB,vPV,vPV[10]));
	}catch(Exception ){}
	Response.Write ("</form></center></body></html>");
%>
