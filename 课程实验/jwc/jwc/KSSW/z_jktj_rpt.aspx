<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXY="",vXNXQ="",vKS="",vTitle="教职工监考次数";
	string[] ThePer=new string[]{"20%","20%","15%","15%","15%","15%"};
	string[] TheAlign=new string[]{"center","","center","right","right","right"};
	string[] TheHeadStr=new string[]{"工号","姓名","性别","任主监考次数","任辅监考次数","合计"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXY=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._jktj_rpt(vXY,vXNXQ,vKS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>