<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="";
	try{ vID=Request["id"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj()).setsxjd(vID).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>