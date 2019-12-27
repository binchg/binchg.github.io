<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string KCID="",KCMC="",vTitle="适用年级专业";
	string[] ThePer=new string[]{"10%","20%","70%"};
	string[] TheAlign=new string[]{"center","center",""};
	string[] TheHeadStr=new string[]{"年级","专业代码","专业名称"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	try{ KCID=Request["id"].ToString().Trim();}catch(Exception){};
	try{ KCMC=Request["mc"].ToString().Trim();}catch(Exception){};
	try{
	//Draw-Rpt
		Response.Output.Write((new private_JXJH(this)).INFO_SYZY(KCID,KCMC,vTitle,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
