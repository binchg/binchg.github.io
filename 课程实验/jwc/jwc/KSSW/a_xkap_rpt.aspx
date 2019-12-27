<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vJS="",vXNXQ="",vKS="";
	string[] ThePer=new string[]{"4%","28%","8%","8%","5%","12%","10%","25%"};
	string[] TheAlign=new string[]{"center","","","","center","","",""};
	string[] TheHeadStr=new string[]{"序号","巡考<br>时间","工号","姓名","性别","部门","职称","巡考<br>范围"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["sel_yxjs"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._xkap_rptNew(vYX,vJS,vXNXQ,vKS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
