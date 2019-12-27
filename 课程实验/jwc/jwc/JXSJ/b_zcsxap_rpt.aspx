<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZS="",vZC="",vTitle="周次实习安排";
	string[] ThePer=new string[]{"4%","10%","20%","5%","5%","17%","6%","8%","8%","17%"};
	string[] TheAlign=new string[]{"center","","","right","right","","right","left","left",""};
	string[] TheHeadStr=new string[]{"序号","周次","实习","学分","周数","行政班级","人数","指导<br>教师1","指导<br>教师2","实习基地"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZS=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZC=Request.Form["txt_zc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._zcsxap_rpt(vXNXQ,vZS,vZC,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>