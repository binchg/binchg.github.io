<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTM_ID="",vZY_ID="";
	
	try{ vTM_ID=Request.QueryString["tm_id"].ToString().Trim();}catch(Exception){};
	try{ vZY_ID=Request.QueryString["zy_id"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new ind_subPrivate_JXSJ()).set_bjsj_rpt(vZY_ID,vTM_ID).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>