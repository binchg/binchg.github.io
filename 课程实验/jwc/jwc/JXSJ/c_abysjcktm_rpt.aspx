<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="分院(系)/部按专业查看毕业设计题目";
	string[] ThePer=new string[]{"5%","20%","35%","25%","15%"};
	string[] TheAlign=new string[]{"center","","","",""};
	string[] TheHeadStr=new string[]{"序号","专业","题目","内容<br>与要求","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vCDDW=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._azybysjcktm_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
		
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>