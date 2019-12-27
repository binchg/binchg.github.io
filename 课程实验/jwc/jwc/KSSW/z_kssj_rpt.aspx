<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vTitle="考试时间发布";
	string[] ThePer=new string[]{"15%","20%","20%","20%","25%"};
	string[] TheAlign=new string[]{"center","center","center","center","center"};
	string[] TheHeadStr=new string[]{"场次","起始时间","结束时间","考试时间","占用上课节次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kssj_rpt(ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
