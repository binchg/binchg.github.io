<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="",vS="";
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{ vS=Request.QueryString["s"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_kssw())._LIST_CDDWBKKC(vID,vS).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>