<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	headHTML();
	try{
		string vID="";
		try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
		Response.Output.Write((new purviewManage(this)).S_UserQryInfo_rpt(vID));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:<br>"+ex.Message);
	}
	bottomHTML();
}
private void headHTML(){
	Response.Output.Write("<html>\n");
	Response.Output.Write("<head>\n");
	Response.Output.Write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">\n");
	Response.Output.Write("<link rel=\"stylesheet\" href=\"../_style/styles_qry.css\" type=\"text/css\">\n");
	Response.Output.Write("<script language='JavaScript' src='../pub/scr/ind_HTML_hr.js'>");
	Response.Output.Write("<");
	Response.Output.Write("/script>\n");
	Response.Output.Write("<title>管理人员权限</title>\n");
	Response.Output.Write("<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftMargin=2 topMargin=2 marginHidth=2 marginHeight=2>\n");
	
}
private void bottomHTML(){
	Response.Output.Write("</body>\n");
	Response.Output.Write("</html>\n");
}
</script>