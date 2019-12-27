<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKS="",vCDDW="",vKC="",vTitle="未录入考场记录的课程→考场";
	string[] ThePer=new string[]{"3%","19%","5%","3%","5%","5%","6%","6%","5%","5%","10%","10%","9%","12%"};
	string[] TheAlign=new string[]{"","","center","center","right","right","right","right","right","right","center","center","right","right"};
	string[] TheHeadStr=new string[]{"序<br>号","课程","学<br>分","批<br>次","考场<br>数","监考<br>人数","应考<br>人数","实考<br>人数","缺考<br>人数","舞弊<br>人数","最早交<br>卷时间","全部交<br>卷时间","考试1/2<br>时间交卷<br>比例","考试2/3<br>时间交卷<br>比例"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
	try{vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kctj_rpt(vXNXQ,vKS,vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>