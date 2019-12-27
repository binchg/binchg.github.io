<%@Import NameSpace="BLL.JXSJ"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vYX="",vTitle="班级实习安排";
	string[] ThePer=new string[]{"6%","30%","6%","31%","5%","5%","10%","7%"};
	string[] TheAlign=new string[]{"center","","right","","right","right","","right"};
	string[] TheHeadStr=new string[]{"序号","行政班级","人数","环节","学分","周数","周次","分组<br>个数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new ind_subPrivate_JXSJ())._bjsxap_rpt(vXNXQ,vYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
