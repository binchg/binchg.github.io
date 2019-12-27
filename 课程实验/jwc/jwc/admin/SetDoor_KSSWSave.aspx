<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vPost="";
	string[] TheHeadStr=new string[]{"KW_DW_KSKC","KW_XS_BKSQ","KW_XS_HKSQ","KW_DW_KC-KC-JK","KW_KSAP","KW_KC-JL","KW_FBKSTB"};
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