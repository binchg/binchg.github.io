<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vXQ="",vLF="",vJS="",vTitle="分校区/楼房按教室打印考场标签";
	string[] ThePer=new string[]{"40%","40%","20%"};
	string[] TheAlign=new string[]{"","","center"};
	string[] TheHeadStr=new string[]{"考试时间","考试课程","批次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{ vXQ=Request.Form["sel_xq"].ToString().Trim();}catch(Exception){};
	try{ vLF=Request.Form["sel_lf"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["sel_js"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._xqlfbq_rpt(vXNXQ,vKS,vXQ,vLF,vJS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>