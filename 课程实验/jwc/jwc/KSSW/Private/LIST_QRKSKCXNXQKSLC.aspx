<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="",vWD="",vP="";
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{ vWD=Request.QueryString["wd"].ToString().Trim();}catch(Exception){};
	try{ vP=Request.QueryString["vP"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_kssw())._LIST_QRKSKCXNXQKSLC(vID,vWD,vP).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>