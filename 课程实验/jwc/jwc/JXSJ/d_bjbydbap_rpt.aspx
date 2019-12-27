<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZY="",vNJ="",vTitle="毕业论文答辩安排[按年级/专业]";
	string[] ThePer=new string[]{"4%","5%","5%","25%","25%","5%","5%","26%"};
	string[] TheAlign=new string[]{"center","center","right","","","center","right",""};
	string[] TheHeadStr=new string[]{"序号","学生<br>组次","学生<br>人数","答辩时间","答辩地点","专家<br>组次","专家<br>人数","答辩专家"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj())._bjbydbap_rpt(vXNXQ,vZY,vNJ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>