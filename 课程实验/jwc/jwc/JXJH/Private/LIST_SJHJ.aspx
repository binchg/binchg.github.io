<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
string vHTML="";
private void Page_Load(object sender,System.EventArgs e)
{
 string vID="";
 try{ vID=Request["id"].ToString().Trim();} catch(Exception){}
 private_JXJH pJ=new private_JXJH(this);
 try{
	vHTML=pJ.List_SJHJ(vID).ToString();
 }catch(Exception ex){
	Response.Output.Write(ex.Message.ToString());
 }
}
</script>
<script language="javascript">
var aktiv=window.setTimeout("Farbe()",100);
function Farbe(){
try{parent.theHJ.innerHTML="<%=vHTML%>";	
}catch(e){document.location.href='about:blank'}}  
</script>  