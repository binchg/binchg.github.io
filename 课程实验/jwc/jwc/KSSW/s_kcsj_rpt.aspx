<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vCDDW="",vXNXQ="",vTitle="库存试卷信息";
	string[]ThePer=new string[]{"17%","8%","8%","8%","27%","5%","27%"};
	string[]TheAlign=new string[]{"","right","right","right","","right","center"};
	string[]TheHeadStr1=new string[]{"承担单位","课程<br>门数","课程→库<br>存试卷数","课程→缺<br>少试卷数","课程","学分","试卷库存"};
	string[]TheHeadStr2=new string[]{"标准套数","现有套数","缺少套数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kcsj_rpt(vCDDW,vXNXQ,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>