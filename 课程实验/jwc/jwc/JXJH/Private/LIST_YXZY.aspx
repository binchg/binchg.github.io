<%@ Page %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	try{
		string vID=Request.QueryString["id"].ToString().Trim();
		string vWD=Request.QueryString["wd"].ToString().Trim();
		string vS=Request.QueryString["s"].ToString().Trim();
		private_JXJH pj=new private_JXJH();
		Response.Output.Write(pj.ScriptBolck_InnerHTML("the_ZY",pj.LIST_YXZY(vID,vWD,vS).ToString()));
	}catch(Exception){}
}
</script>
<FONT face="ËÎÌו"></FONT>
