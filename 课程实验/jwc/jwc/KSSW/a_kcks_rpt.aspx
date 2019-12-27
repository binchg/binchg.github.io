<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="课程考试安排";
	string[] ThePer=new string[]{"14%","3%","15%","3%","3%","3%","16%","3%","8%","17%","12%","3%"};
	string[] TheAlign=new string[]{"","right","","right","center","right","","right","","","","right"};
	string[] TheHeadStr=new string[]{"时间","考试<br>人数","课程","学分","批次","考试<br>人数","考场","考试<br>人数","主监考","辅监考","行政班级","考试<br>人数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kcks_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face=宋体></FONT>
