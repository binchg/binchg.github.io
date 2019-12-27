<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.KSSW"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string  vID="",vWD="",vP="",vNJ="";
	try{vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{vWD=Request.QueryString["wd"].ToString().Trim();}catch(Exception){};
	try{vP=Request.QueryString["vP"].ToString().Trim();}catch(Exception){};
	try{vNJ=Request.QueryString["vT"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_kssw())._LIST_ZYBJ(vID,vWD,vP,vNJ).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>
