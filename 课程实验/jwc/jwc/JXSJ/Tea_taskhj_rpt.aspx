<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//教师ID
	string USER_ID=(new BLL_jxsj(this)).USER_ID;
	
	string vXNXQ="",vTitle="指导环节";
	string[] ThePer=new string[]{"5%","34%","10%","6%","7%","30%","8%"};
	string[] TheAlign=new string[]{"center","","center","right","right","","right"};
	string[] TheHeadStr=new string[]{"序号","环节","类别","学分","周数","行政班级","实践人数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{	vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._tea_taskhj_rpt(vXNXQ,USER_ID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
