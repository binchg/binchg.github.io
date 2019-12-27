<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCK="",vYX="",vCDDW="",vKC="",vTitle="统计学生舞弊/缺考情况";
	string[] ThePer=new string[]{"10%","20%","30%","20%","20%"};
	string[] TheAlign=new string[]{"center","","","right","right"};
	string[] TheHeadStr=new string[]{"年级","专业","行政班级","舞弊人次","缺考人次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._xstj_rpt(vXNXQ,vKS,vCK,vYX,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>