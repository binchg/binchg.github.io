<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCK="",vKCDM="",vTitle="统计监考情况";
	string[] ThePer=new string[]{"25%","15%","15%","15%","15%","15%",};
	string[] TheAlign=new string[]{"","right","right","right","right","right"};
	string[] TheHeadStr=new string[]{"承担单位","考试课程<br>门数","考场<br>个(次)","主监考<br>人(次)","辅监考<br>人(次)","监考<br>人(次)"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._tjjkqk_rpt(vXNXQ,vKS,vCK,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
