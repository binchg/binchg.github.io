<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="";
	string[]ThePer=new string[]{"4%","15%","19%","5%","10%","10%","5%","6%","6%","10%","10%"};
	string[]TheAlign=new string[]{"center","","","right","center","","center","right","right","center","center"};
	string[]TheHeadStr=new string[]{"序号","课程","考试<br>地点","实考<br>人数","最早<br>交卷时间", "最早<br>交卷学生","全部<br>交卷时间","考1小时<br>交卷人数","考1.5小时<br>交卷人数","舞弊学生","缺考学生"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

