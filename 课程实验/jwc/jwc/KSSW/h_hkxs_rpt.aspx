<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="缓考学生名单",vCK="",vYX="",vZY="";
	string[] ThePer=new string[]{"37%","5%","5%","28%","12%","9%","4%"};
	string[] TheAlign=new string[]{"","right","right","","center","","center"};
	string[] TheHeadStr=new string[]{"课程","学<br>分","缓考<br>人数","行政班级","学号","姓名","性别"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	try{ vCK=Request.Form["ckjs"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};

	try{
		Response.Output.Write((new BLL_kssw(this))._hkxs_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr,vCK,vYX,vZY).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>