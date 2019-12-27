<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
string vHTML="";
private void Page_Load(object sender,System.EventArgs e)
{

	BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);

	string vID="",vWD="",vS="",USER_OPTYX="";
	USER_OPTYX=pSub.USER_OPTYX;
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){}
	try{ vWD=Request.QueryString["wd"].ToString().Trim();}catch(Exception){}
	try{ vS=Request.QueryString["s"].ToString().Trim();}catch(Exception){}
	
	try{
		vHTML=(new private_JXJH()).LIST_SETBG_NJZY(USER_OPTYX,vID,vWD,vS);
	}catch(Exception ex)
	{Response.Output.Write(ex.Message.ToString());}	
}
</script>
<script language="javascript">
var aktiv=window.setTimeout("Farbe()",100);
function Farbe(){
try{parent.theSETBG_NJZY.innerHTML="<%=vHTML%>";	
}catch(e){document.location.href='about:blank'}}  
</script>

   