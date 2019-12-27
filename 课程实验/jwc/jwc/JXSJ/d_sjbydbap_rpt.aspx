<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vXNXQ="",vSJ="",vTitle="毕业论文答辩安排[按时间]";
	string[] ThePer=new string[]{"4%","14%","5%","20%","4%","4%","25%","4%","4%","16%"};
	string[] TheAlign=new string[]{"center","center","center","","center","right","","center","right",""};
	string[] TheHeadStr=new string[]{"序号","答辩时间","年级","专业","学生<br>组次","学生<br>人数","答辩地点","专家<br>组次","专家<br>人数","答辩专家"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vSJ=Request.Form["txt_sj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._sjbydbap_rpt(vXNXQ,vSJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>