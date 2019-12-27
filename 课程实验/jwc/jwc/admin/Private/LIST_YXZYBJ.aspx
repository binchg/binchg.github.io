<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin" %>
<script  language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	try{
		string vID="",vWD="",vS="";
		try{vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
		try{vWD=Request.QueryString["wd"].ToString().Trim();}catch(Exception){};
		try{vS=Request.QueryString["s"].ToString().Trim();}catch(Exception){};
		
		Response.Output.Write((new purviewManage()).LIST_YXZYBJ_rpt(vID,vWD,vS));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:<br>"+ex.Message);
	}
}
</script>