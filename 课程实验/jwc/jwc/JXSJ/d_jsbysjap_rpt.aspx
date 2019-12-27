<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZY="",vNJ="",vTitle="毕业设计安排[按指导教师]",vZFX="";
	string[] ThePer=new string[]{"5%","14%","5%","5%","10%","5%","6%","14%","10%","5%","21%"};
	string[] TheAlign=new string[]{"center","","right","right","left","center","right","center","","center",""};
	string[] TheHeadStr1=new string[]{"序号","指导教师","毕业设计","组次","人数","学号","姓名","性别","课题名称"};
	string[] TheHeadStr2=new string[]{"学分","周数","周次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZFX=Request.Form["radCx"].ToString().Trim();}catch(Exception){};

	try{
		Response.Output.Write((new BLL_jxsj(this))._jsbysjap_rpt(vXNXQ,vZY,vNJ,vZFX,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());	
}
</script>