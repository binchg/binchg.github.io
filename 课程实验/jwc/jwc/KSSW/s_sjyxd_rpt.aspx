<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="已选定试卷明细";
	string[]ThePer=new string[]{"9%","5%","5%","6%","12%","3%","2%","8%","11%","6%","6%","6%","6%","3%","9%","3%"};
	string[]TheAlign=new string[]{"","right","right","","","right","center","","","","","","","right","right","right"};
	string[]TheHeadStr1=new string[]{"承担单位","考试课程<br>→批次数","试卷已选<br>定课程→<br>批次数","课程代码","课程名称","学分","批次","试卷<br>代码","试卷名称","出卷人","负责人","出卷日期","上次被<br>选定日期","试卷<br>页数","张数(按16K)","总分"};
	string[]TheHeadStr2=new string[]{"试<br>卷","答<br>题<br>纸","草<br>稿<br>纸"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjyxd_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){}	
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>