<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKC="",vBJ="",vJD="",vTitle="实习学生";
	string[] ThePer=new string[]{"5%","10%","10%","15%","15%","15%","15%","5%","10%"};
	string[] TheAlign=new string[]{"center","center","right","","","center","","center",""};
	string[] TheHeadStr=new string[]{"序号","组次","人数","指导教师1","指导教师2","学号","姓名","性别","组长"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.QueryString["kc"].ToString().Trim();}catch(Exception){};
	try{ vBJ=Request.QueryString["bj"].ToString().Trim();}catch(Exception){};
	try{ vJD=Request.QueryString["jd"].ToString().Trim();}catch(Exception){};
	
	
	try{
		Response.Output.Write((new ind_subPrivate_JXSJ())._sxjdxs_rpt(vXNXQ,vKC,vBJ,vJD,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>