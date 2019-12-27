<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZJ="",vTitle="毕业论文答辩安排[按答辩专家]";
	string[] ThePer=new string[]{"4%","16%","15%","25%","4%","20%","4%","4%","4%","4%"};
	string[] TheAlign=new string[]{"center","","center","","center","","center","right","center","right"}; 
	string[] TheHeadStr=new string[]{"序号","答辩专家","答辩时间","答辩地点","年级","专业","学生<br>组次","学生<br>人数","专家<br>组次","专家<br>人数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZJ=Request.Form["txt_zj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._zjbydbap_rpt(vXNXQ,vZJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>