<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vTitle="已速印试卷信息";
	string[] ThePer1=new string[]{"6%","11%","3%","2%","11%","3%","5%","20%","10%","10%","10%","9%"};
	string[] ThePer2=new string[]{"4%","6%","4%","6%","4%","6%","4%","6%"};
	string[] TheAlign=new string[]{"","","right","center","","right","right","center","center","center","",""};
	string[] TheHeadStr1=new string[]{"承担单位","课程","学分","批次","试卷","考试人数","试卷<br>速印<br>份数","试卷(按16K)","答题纸<br>(按16K)","草稿纸<br>(按16K)","速印人","速印日期"};
	string[] TheHeadStr2=new string[]{"页数","总页数","张数","总张数","张数","总张数","张数","总张数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{	vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{	vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{	vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjysy_rpt(vXNXQ,vKS,vCDDW,ThePer1,ThePer2,TheAlign,TheHeadStr1,TheHeadStr2).ToString().Trim());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>