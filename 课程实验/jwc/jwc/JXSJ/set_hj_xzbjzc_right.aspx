<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vKCDM="",vFlag="",vBJDM="",vNJ="";
	string[] ThePer=new string[]{"45%","15%","40%"};
	string[] TheAlign=new string[]{"left","left","center"};
	string[] TheHeadStr=new string[]{"行政班级","人数","周次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","Styles_Rpt"));
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vFlag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	try{ vBJDM=Request.QueryString["bjdm"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.QueryString["nj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).Set_HJ_XZBJZC_Right_Rpt(vKCDM,vFlag,vBJDM,vNJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex)
	{
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
<script language='javascript'>
function change(){
  parent.document.all.form1.save.disabled=false;
}
</script>
