<%@ Page Language="C#"%>
<%@Import NameSpace="BLL.include"%>
<%@Import NameSpace="BLL.JXSJ"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vYX="",vZY="",vNJ="",vTitle="军训安排",vSFAP="1";
	string[] ThePer=new string[]{"6%","14%","13%","17%","8%","8%","10%","11%","5%","5%"};
	string[] TheAlign=new string[]{"center","","","","center","","center","","center","center"};
	string[] TheHeadStr=new string[]{"序号","院(系)/部","专业","行政班级","组次","指导员","学号","姓名","性别","组长"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	//Request-Data
	try{ vXNXQ=Request.Form["Sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["Sel_YX"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._ckjxap_rpt(vXNXQ,vYX,vNJ,vSFAP,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>