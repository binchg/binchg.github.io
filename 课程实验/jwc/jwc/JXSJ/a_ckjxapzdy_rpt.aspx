<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vXNXQ="",vNJ="",vJS="",vSFAP="2",vTitle="军训安排";
	string[] ThePer=new string[]{"6%","15%","9%","20%","15%","15%","8%","9%"};
	string[] TheAlign=new string[]{"center","left","center","left","center","left","center","center"};
	string[] TheHeadStr=new string[]{"序号","指导员","组次","行政班级","学号","姓名","性别","组长"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	
	try{ vXNXQ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["txt_js"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._ckjxapzdy_rpt(vXNXQ,vNJ,vJS,vSFAP,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
