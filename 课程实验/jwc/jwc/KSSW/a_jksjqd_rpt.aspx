<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vYX="",vTitle="按时间查看监考安排";
	string[] ThePer=new string[]{"20%","4%","20%","4%","4%","3%","15%","4%","8%","18%"};
	string[] TheAlign=new string[]{"","right","","right","center","right","","right","",""};
	string[] TheHeadStr=new string[]{"时间","监考<br>人数","课程","学分","批次","监考<br>人数","考场","考试<br>人数","主监考","辅监考"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._jksjqd_rpt(vXNXQ,vKS,vYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>