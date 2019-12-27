<%@Import NameSpace="BLL.KSSW"%>
<%@Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXH="",vNJ="",vYX="",vZY="",vBJ="",vTitle="统计学生缓考情况",vCDDW="",vKC="",vCK="";
	string[] ThePer=new string[]{"60%","20%","20%"};
	string[] TheAlign=new string[]{"","right","right"};
	string[] TheHeadStr=new string[]{"课程","学分","缓考学生数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._hkkc_rpt_hkkc(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr,vCK,vYX,vZY).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}

</script>