<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string flag="",vXNXQ="",vKCDM="",vBJDM="",vXSSTR="";
	string[] ThePer=new string[]{"7%","15%","18%","7%","13%","12%","12%","16%"};
	string[] TheAlign=new string[]{"center","center","left","center","center","left","left","left"};
	string[] TheHeadStr=new string[]{"选定","学号","姓名","性别","组长","指导教师1","指导教师2","备注"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	try{ flag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	if(flag=="del"){
		//del
		try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKCDM=Request.QueryString["kcid"].ToString().Trim();}catch(Exception){};
		try{ vXSSTR=Request["theval"].ToString().Trim();}catch(Exception){};
		
		try{
		 Response.Output.Write((new BLL_jxsj(this))._xzbj_sxap_right_DelSub(vXNXQ,vKCDM,vXSSTR).ToString());
		 }catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		 }
	}
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vBJDM=Request["bjdm"].ToString().Trim();}catch(Exception){};
	try{
	//Rpt
	  Response.Output.Write((new BLL_jxsj())._xzbj_sxap_right_rpt(vXNXQ,vKCDM,vBJDM,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>