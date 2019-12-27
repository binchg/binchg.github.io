<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKC="",vBJ="",vTitle="课程设计学生";
	string[] ThePer=new string[]{"5%","5%","5%","10%","10%","25%","12%","13%","5%","10%"};
	string[] TheAlign=new string[]{"center","center","right","","","","center","","center",""};
	string[] TheHeadStr=new string[]{"序号","组次","人数","指导教师1","指导教师2","地点","学号","姓名","性别","组长"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request["kc"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request["bj"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new ind_subPrivate_JXSJ())._KCSJCDDWXS_Rpt(vXNXQ,vKC,vBJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>