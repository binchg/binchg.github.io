<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
string vHTML="";
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="",vS="";
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{ vS=Request.QueryString["s"].ToString().Trim();}catch(Exception){};
	
	try{
		vHTML=(new ind_subPrivate_JXSJ())._List_yxzy_rpt(vID,vS).ToString();
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
}
</script>
<script language="javascript">
window.setTimeout("Farbe()",100);
function Farbe(){
try{parent.theZY.innerHTML="<%=vHTML%>";	
}catch(e){document.location.href='about:blank'}}  
</script>  