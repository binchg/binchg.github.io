<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vPost="";
	string[] TheHeadStr=new string[]{"PK_DW_KC-RKJS","PK_JS_JXJC","PK_DW_JSJXRW","PK_JXRW","PK_JXAP","PK_JS_TKSQ"};
	BLL_SetDoor pSub=new BLL_SetDoor();
	try{ vPost=Request.QueryString["thePOST"].ToString().Trim();}catch(Exception){};
	if(vPost!="")
	{
		try
		{
			Response.Output.Write(pSub.SaveDoor(vPost,TheHeadStr));
		}
		catch(Exception ex)
		{
			Response.Output.Write(pSub.Alert("Êý¾Ý´æ´¢Ê§°Ü£¡"));
		}
	}
}
</script>