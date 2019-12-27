<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string flag="",vValue="",vValue1="";
	
	try{ flag=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{ vValue=Request.QueryString["val"].ToString().Trim();}catch(Exception){};
	try{ vValue1=Request.QueryString["val1"].ToString().Trim();}catch(Exception){};
	
	try{
	Response.Output.Write((new BLL_kssw(this))._setPkkc_zz_rpt(flag,vValue,vValue1).ToString());
	}catch(Exception ex){}
}
</script>