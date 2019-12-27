<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<!--#include file="HJCJ_Add_CheckValue.vbs"-->
<%
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CJLR pSub=new BLL_CJLR();
	BLL.XSCJ.BLL_CJLR_RPT wRpt=new	BLL_CJLR_RPT();
	BLL.XSCJ.CJLR_SubmitCJ Save=new BLL.XSCJ.CJLR_SubmitCJ();
	string[] vPV=new string[11]{"","","","","","","","","","",""};
	string[] vCJLR=new string[5]{"","","","",""};
	string vXNXQ="";
	string viewCJBXXS="";
	string sfSsubmit,pStr="";
	Response.Write (pSub.HtmlHear("HJCJ_ADD_rpt.aspx"));
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{sfSsubmit=Request.QueryString["f"];}catch(Exception){sfSsubmit="";}
		if(sfSsubmit=="ok")
		{
			Save.SubmitCJ(this);
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
		try{vPV[4]=Request.Form["sel_xzbj"];}catch(Exception){vPV[4]="";}
		try{vPV[10]=Request.Form["hid_user"];}catch(Exception){vPV[10]="";}
		try{vPV[9]=Request.Form["hid_zc"];}catch(Exception){vPV[9]="";}
		try{vCJLR[0]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[0]="";}
		try{vCJLR[1]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[1]="";}
		try{viewCJBXXS=Request.Form["chkCJBXXS"];}catch(Exception){viewCJBXXS="";}
		try{pStr=Request.Form["hjcjlr_p"];}catch(Exception){pStr="";}
	}
	try{
	Response.Write (wRpt.HJCJDrawRptMain(vCJLR,viewCJBXXS,vPV,vPV[10],pStr));
	}catch(Exception){}
	Response.Write ("</form></center></body></html>");
%>
