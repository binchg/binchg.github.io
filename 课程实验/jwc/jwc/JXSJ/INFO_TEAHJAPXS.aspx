<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="",vTitle="环节学生";
	string[] ThePer=new string[]{"10%","30%","10%","20%","20%","10%"};
	string[] TheAlign=new string[]{"center","","right","center","","center"};
	string[] TheHeadStr=new string[]{"序号","行政班级","人数","学号","姓名","性别"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vID=Request["id"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._info_TeaHJAPXS_rpt(vID,vTitle,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>