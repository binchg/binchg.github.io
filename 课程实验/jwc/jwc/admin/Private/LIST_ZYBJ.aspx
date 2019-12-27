<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin" %>
<script  language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	try{
		string vID="",vWD="";
		try{vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
		try{vWD=Request.QueryString["wd"].ToString().Trim();}catch(Exception){};
		Response.Output.Write((new purviewManage()).LIST_ZYBJ_rpt(vID,vWD));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:<br>"+ex.Message);
	}
}
</script>