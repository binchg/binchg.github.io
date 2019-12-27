<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Page %>
<!--#include file="BYSJCJ_ADD_CheckValue.vbs"--><FONT face="ËÎÌו"></FONT>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ PubObj =new BLL_subPrivate_XSCJ(this);
	BLL.XSCJ.BLL_CJLR pSub=new BLL_CJLR();
	BLL.XSCJ.BLL_CJLR_RPT wRpt=new	BLL_CJLR_RPT();
	BLL.XSCJ.CJLR_SubmitCJ Save=new BLL.XSCJ.CJLR_SubmitCJ();
	string[] vPV=new string[11]{"","","","","","","","","","",""};
	string[] vCJLR=new string[5]{"on","on","on","on","on"};
	string vXNXQ="";
	string viewCJBXXS="";
	string sfSsubmit;
	Response.Write (pSub.HtmlHear("Tea_BYSJCJ_ADD_rpt.aspx"));
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{sfSsubmit=Request.QueryString["f"];}catch(Exception){sfSsubmit="";}
		if(sfSsubmit=="ok")
		{
			Save.SubmitBYSJCJ(this);
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
		try{vPV[9]=Request.Form["zfx_flag"].ToString();}catch(Exception){vPV[9]="";}		
		try{vPV[10]=Request.Form["hid_user"].ToString();}catch(Exception){vPV[10]="";}
		
		if(vPV[9]!="1")
		{
			try{vPV[2]=Request.Form["sel_kc"].ToString();}catch(Exception){vPV[2]="";}
			try{vPV[6]=Request.Form["sel_nj"].ToString();}catch(Exception){vPV[6]="";}
			try{vPV[7]=Request.Form["sel_zy"].ToString();}catch(Exception){vPV[7]="";}
		}
		else
		{
			try{vPV[2]=Request.Form["sel_fxkc"].ToString();}catch(Exception){vPV[2]="";}
			try{vPV[6]=Request.Form["sel_fxnj"].ToString();}catch(Exception){vPV[6]="";}
			try{vPV[7]=Request.Form["sel_fxzy"].ToString();}catch(Exception){vPV[7]="";}
		}
		try{vCJLR[0]=Request.Form["chkZHCJ"].ToString();}catch(Exception){vCJLR[0]="on";}
		try{vCJLR[1]=Request.Form["chkZHCJ"].ToString();}catch(Exception){vCJLR[1]="on";}
		try{vCJLR[2]=Request.Form["chkPSCJ"].ToString();}catch(Exception){vCJLR[2]="on";}
		try{vCJLR[3]=Request.Form["chkQZCJ"].ToString();}catch(Exception){vCJLR[3]="on";}
		try{vCJLR[4]=Request.Form["chkQMCJ"].ToString();}catch(Exception){vCJLR[4]="on";}
		try{viewCJBXXS=Request.Form["chkCJBXXS"];}catch(Exception){viewCJBXXS="";}
	}
	try{
		Response.Write (wRpt.JSBYSJDrawRptMain(vCJLR,viewCJBXXS,vPV,vPV[10]));
	}catch(Exception ){}
	Response.Write ("</form></center></body></html>");
%>

