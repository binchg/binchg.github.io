<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXQ="",vLF="",vJS="",vTitle="教室考试安排";
	string[] ThePer=new string[]{"10%","30%","20%","4%","4%","5%","12%","15%"};
	string[] TheAlign=new string[]{"","","","right","center","right","",""};
	string[] TheHeadStr=new string[]{"考场","考试时间","考试课程","学分","批次","考试<br>人数","主监考","辅监考"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vXQ=Request.Form["sel_xq"].ToString().Trim();}catch(Exception){};
	try{ vLF=Request.Form["sel_lf"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["sel_js"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._xqlf_rpt(vXNXQ,vKS,vXQ,vLF,vJS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>