<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>

<script language="C#" runat="server">
string vHTML="";
private void Page_Load(object sender,System.EventArgs e)
{
	string vID="";
	//USER_OPTYXÈ¨ÏÞ yx
	string USER_OPTYX="%";
	//cddw
	string USER_OPTDW="%";
	
	try{vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{
		vHTML=(new ind_subPrivate_JXSJ()).LIST_XNXQKCSJ(vID,USER_OPTYX,USER_OPTDW).ToString();
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>
<script language="javascript">
window.setTimeout("Farbe()",100);
function Farbe(){
try{parent.theKCSJ.innerHTML="<%=vHTML%>";	
}catch(e){document.location.href='about:blank'}}  
</script>  