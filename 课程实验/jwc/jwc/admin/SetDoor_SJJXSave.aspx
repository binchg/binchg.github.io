<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vPost="";
	string[] TheHeadStr=new string[]{"SJ_DW_HJ-JS","SJ_DW_HJ-ZC","SJ_YX_XXJDXX","SJ_YX_BJ-SXAP","SJ_DW_KCSJ-TM","SJ_DW_KCSJAP","SJ_YX_ZY-BYSJTM","SJ_YX_BJ-BYSJAP","SJ_YX_TBZJ","SJ_YX_TBZJFZ","SJ_YX_TBXSFZ","SJ_YX_TBAP","SJ_JXRW","SJ_JXAP"};
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