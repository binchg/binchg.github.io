<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	try{
		Response.Output.Write((new BLL_SetDoor()).Control_rpt("KSSW").ToString());
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language=javascript src=Private/pri_ShowOrDisplay.js></script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>