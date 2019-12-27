<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	try{
		Response.Output.Write((new purviewManage()).B_SetArea_Pic().ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}

	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="javascript">
function InsertFace(inum)
{
	var sTmp;
	sTmp=inum + '.gif';//alert(sTmp);
	parent.document.all.AreaIcon.value=sTmp;
	parent.document.all.AreaIcon.focus();
	parent.document.all.imgCheck.onclick();
	return;
}
</script>