<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="未录入考场记录的课程→考场";
	string[] ThePer=new string[]{"9%","14%","3%","3%","22%","13%","15%","9%","12%"};
	string[] TheAlign=new string[]{"","","right","right","","","","",""};
	string[] TheHeadStr=new string[]{"承担单位","课程","学分","批次","考试时间","录入考场记录时间区段","考场","主监考","辅监考"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kclr_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>