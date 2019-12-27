<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vCDDW="",vTitle="分承担单位按课程设计查看题目";
	string[] ThePer=new string[]{"5%","30%","5%","25%","25%","10%"};
	string[] TheAlign=new string[]{"center","","right","","",""};
	string[] TheHeadStr=new string[]{"序号","环节","学分","题目","内容<br>与要求","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._akcsjcktm_rpt(vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
		
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>