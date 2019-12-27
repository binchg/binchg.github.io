<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXH="",vNJ="",vYX="",vZY="",vBJ="",vTitle="学生补考课程门次";
	string[] ThePer=new string[]{"15%","6%","20%","20%","14%","10%","6%","9%"};
	string[] TheAlign=new string[]{"","","","","center","","right","right"};
	string[] TheHeadStr=new string[]{"院(系)/部","年级","专业","行政班级","学号","姓名","课程<br>门数","补考费"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vXH=Request.Form["xh"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["Sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request.Form["Sel_bj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._bkkcms_rpt(vXNXQ,vKS,vXH,vNJ,vYX,vZY,vBJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>