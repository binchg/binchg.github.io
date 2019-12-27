<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="";
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("权限管理","styles_qry"));

	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};

	try{
		Response.Output.Write((new purviewManage(this)).S_UserQryInfo_Menu_rpt(vID));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>