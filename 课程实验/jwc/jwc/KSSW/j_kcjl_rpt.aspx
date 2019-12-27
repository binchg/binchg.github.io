<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vKCDM="",vKSPC="",vKSDM="",vJSDM="",vTitle="查看考场记录";
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vKSPC=Request.QueryString["kspc"].ToString().Trim();}catch(Exception){};
	try{ vKSDM=Request.QueryString["kscs"].ToString().Trim();}catch(Exception){};
	try{ vJSDM=Request.QueryString["jsdm"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kcjl_rpt(vKCDM,vKSPC,vKSDM,vJSDM).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>