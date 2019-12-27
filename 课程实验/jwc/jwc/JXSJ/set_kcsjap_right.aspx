<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKCDM="",vBJDM="",vXSSTR="",vFlag="";
	string[] ThePer=new string[]{"7%","15%","18%","7%","13%","12%","12%","16%"};
	string[] TheAlign=new string[]{"center","center","left","center","center","left","left","left"};
	string[] TheHeadStr=new string[]{"选定","学号","姓名","性别","组长","指导教师1","指导教师2","设计场地"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	try{ vFlag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vXSSTR=Request["theval"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vBJDM=Request.QueryString["bjdm"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).set_kcsjap_right_rpt(vFlag,vXNXQ,vKCDM,vBJDM,vXSSTR,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>