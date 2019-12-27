<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
string vHTML="";
private void Page_Load(object sender,System.EventArgs e)
{
   string vID="",vS="";
   try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
   try{ vS=Request.QueryString["s"].ToString().Trim();}catch(Exception){};
   try{
		vHTML=(new BLL_kssw())._LIST_YXJS(vID,vS).ToString();
   }catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
   }
}
</script>
<script language="javascript">
var aktiv=window.setTimeout("Farbe()",100);
function Farbe(){try{
parent.theYXJS.innerHTML="<%=vHTML%>";
}catch(e){document.location.href='about:blank'}}  
</script>  