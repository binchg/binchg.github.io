<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="确定需安排考试课程",vCK="",vYX="",vZY="";
	string[] ThePer=new string[]{"40%","10%","10%","15%","15%","10%"};
	string[] TheAlign=new string[]{"","right","center","","center","center"};
	string[] TheHeadStr=new string[]{"课程","学分","上课<br>班号","确认<br>结果","申请<br>考试","申请<br>随堂考"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	string vSubmit="";
	try{vSubmit=Request.QueryString["submit"].ToString().Trim();}catch(Exception){}
	if(vSubmit=="ok")
	{
		(new BLL_kssw(this)).Save_xapkskc(this);
	}
	
	Response.Output.Write((new BLL_kssw(this)).DrawRptHear_xapkskc(ThePer,TheHeadStr,""));
	if(Request.ServerVariables["REQUEST_METHOD"]=="POST")
	{
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
		try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
		try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
		
		Response.Output.Write("<form name='form1' method='post' action='Sys_Qdxapkskc_Rpt.aspx?submit=ok'> ");
		Response.Output.Write((new BLL_kssw(this))._qdxapks_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
		
		Response.Output.Write("<input type=hidden name=sel_xnxq value='"+vXNXQ+"'>");
		Response.Output.Write("<input type=hidden name=sel_lc value='"+vKS+"'>");
		Response.Output.Write("<input type=hidden name=sel_cddw value='"+vCDDW+"'>");
		Response.Output.Write("<input type=hidden name=Sel_KC value='"+vKC+"'>");

		Response.Output.Write("</form> ");	
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());

%>
<FONT face="宋体"></FONT>
