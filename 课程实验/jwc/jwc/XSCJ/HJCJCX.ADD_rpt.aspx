<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<!--#include file="HJCJCX_Add_CheckValue.vbs"-->
<%
	BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CJLR pSub=new BLL_CJLR();
	BLL.XSCJ.BLL_CJLR_RPT wRpt=new	BLL_CJLR_RPT();
	BLL.XSCJ.CJLR_SubmitCJ Save=new BLL.XSCJ.CJLR_SubmitCJ();
	string[] vPV=new string[11]{"","","","","","","","","","",""};
	string[] vCJLR=new string[5]{"","","","",""};
	string vXNXQ="";
	string viewCJBXXS="";
	string sfSsubmit;
	Response.Write (pSub.HtmlHear("HJCJCX.ADD_rpt.aspx"));
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
		try{vPV[8]=Request.Form["sel_cddw"];}catch(Exception){vPV[4]="";}
		try{vPV[10]=Request.Form["hid_user"];}catch(Exception){vPV[10]="";}
		try{vCJLR[0]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[0]="";}
		try{vCJLR[1]=Request.Form["chkZHCJ"];}catch(Exception){vCJLR[1]="";}
		try{viewCJBXXS=Request.Form["chkCJBXXS"].ToString();}catch(Exception){viewCJBXXS="";}
	}
	try{Response.Write (wRpt.HJCXDrawRptMain(vCJLR,viewCJBXXS,vPV,vPV[10]));
	}catch(Exception ){}
	Response.Write ("</form></center></body></html>");
%>
