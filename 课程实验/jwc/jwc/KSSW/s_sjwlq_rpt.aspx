<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCK="",vCDDW="",vKC="",vTitle="试卷未领取信息";
	string[] ThePer=new string[]{"25%","6%","24%","4%","4%","25%","6%","6%"};
	string[] TheAlign=new string[]{"","right","","right","center","","right","right"};
	string[] TheHeadStr=new string[]{"考试时间","课程<br>门数","课程","学<br>分","批<br>次","试卷","试卷<br>份数","考场<br>数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["sn"].ToString().Trim();}catch(Exception){};
	
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._sjwlq_rpt(vXNXQ,vKS,vCK,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>