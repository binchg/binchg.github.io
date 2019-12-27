<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
 string vCDDW="";
 Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
 try{ vCDDW=Request.QueryString["CDDW"].ToString().Trim();}catch(Exception){}; 
 
 try{
	Response.Output.Write((new BLL_jxsj(this))._add_kcsj_rpt(vCDDW).ToString());
 }catch(Exception ex){
	Response.Output.Write(ex.Message.ToString());
 };
 
 Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language='javascript'>
function SelectSJ(vK,theID){
var theURL;
if((chkC.value=='')&&(chkI.value=='')){
   chkC.value=eval(vK+".style.backgroundColor");
   chkC1.value=eval(vK+".style.color");
   chkI.value=vK;
   eval(vK+".style.backgroundColor='darkblue'");
   eval(vK+".style.color='white'");
   parent.document.all.vid.value=theID.value;
  }
  else{
   if(chkI.value!=vK){
       eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
	   eval(chkI.value+".style.color='"+chkC1.value+"'");
       chkI.value=vK;
       chkC.value=eval(vK+".style.backgroundColor");
       eval(vK+".style.backgroundColor='darkblue'");
	   eval(vK+".style.color='white'");
       parent.document.all.vid.value=theID.value;
	   }
}
 parent.topfrm.location.href='c_add_kcsj_top.aspx';
 parent.buttonfrm.location.href='c_add_kcsj_bottom.aspx?id='+theID.value;
 } 
</script>
