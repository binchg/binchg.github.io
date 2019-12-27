<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKCDM="",vXSSTR="",vZC="",vSELJD="",vJDDM="",vDDJS="",vDDJS1="",vBJDM="",vTIMEZC="";
	string[] ThePer=new string[]{"13%","35%","39%","13%"};
	string[] TheAlign=new string[]{"center","center","left","center"};
	string[] TheHeadStr=new string[]{"选定","学号","姓名","性别"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST")
	{
		//addSub
		try{ vXNXQ=Request.Form["xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKCDM=Request.Form["kcid"].ToString().Trim();}catch(Exception){};
		try{ vXSSTR=Request["theval"].ToString().Trim();}catch(Exception){};
		try{ vZC=Request.Form["zc"].ToString().Trim();}catch(Exception){};
		try{ vSELJD=Request.Form["seljd"].ToString().Trim();}catch(Exception){};
		if(vSELJD=="0"){
			try{ vJDDM=Request.Form["sxjd"].ToString().Trim();}catch(Exception){};
		}else{
			try{ vJDDM=Request.Form["lxjd"].ToString().Trim();}catch(Exception){};
		}
		try{ vDDJS=Request.Form["ddjs"].ToString().Trim();}catch(Exception){};
		try{ vDDJS1=Request.Form["ddjs1"].ToString().Trim();}catch(Exception){};
		try{ vTIMEZC=Request.Form["timezc"].ToString().Trim();}catch(Exception){};
		
		try{
			Response.Output.Write((new BLL_jxsj(this))._xzbj_sxap_left_AddSub(vXNXQ,vKCDM,vXSSTR,vZC,vJDDM,vDDJS,vDDJS1,vTIMEZC).ToString());
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
		
	}
	
	try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vBJDM=Request.QueryString["bjdm"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_jxsj())._xzbj_sxap_left_rpt(vXNXQ,vKCDM,vBJDM,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>