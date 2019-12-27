<%@ Import NameSpace="BLL.Sys"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server'>
private void Page_Load(object sender,System.EventArgs e)
{
	try{
		Response.Output.Write((new FrameSysControl()).popNews_rpt().ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>