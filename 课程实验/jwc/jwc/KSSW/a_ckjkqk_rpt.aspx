<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCK="",vYX="",vXH="",vCDDW="",vKCDM="",vTitle="查看监考情况";
	string[] ThePer=new string[]{"30%","5%","5%","15%","15%","15%","15%"};
	string[] TheAlign=new string[]{"","right","center","right","right","right","right"};
	string[] TheHeadStr=new string[]{"课程","学分","批次","考场<br>个数","主监考<br>人数","辅监考<br>人数","监考<br>人数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._ckjkqk_rpt(vXNXQ,vKS,vCK,vYX,vXH,vCDDW,vKCDM,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
