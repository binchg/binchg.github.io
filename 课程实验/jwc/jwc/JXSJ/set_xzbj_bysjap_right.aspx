<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKCDM="",vZYDM="",vNJ="",vXSSTR="",flag="",vSelzx="",vSelfx="";
	string[] ThePer=new string[]{"7%","15%","18%","7%","23%","15%","15%"};
	string[] TheAlign=new string[]{"center","center","left","center","left","left","left"};
	string[] TheHeadStr=new string[]{"选定","学号","姓名","性别","指导教师","题目","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vZYDM=Request.QueryString["zydm"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.QueryString["nj"].ToString().Trim();}catch(Exception){};
	try{ vXSSTR=Request.QueryString["theval"].ToString().Trim();}catch(Exception){};
	try{ vSelzx=Request["selzx"].ToString().Trim();}catch(Exception){};
	try{ vSelfx=Request["selfx"].ToString().Trim();}catch(Exception){};
	
	try{ flag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._xzbj_bysjap_right_rpt(flag,vXNXQ,vKCDM,vZYDM,vNJ,vXSSTR,vSelzx,vSelfx,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
