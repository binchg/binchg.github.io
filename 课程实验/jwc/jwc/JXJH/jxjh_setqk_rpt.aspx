<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
 //Define-Data
 string vTitle="教学计划设置完成情况",vRpt="",vNJ="",zfx_flag="";
  //object-class
 private_JXJH pJ=new private_JXJH();
 
 //Draw-Page-Head-Html
 Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
 
 //Request-Data
 try{ vRpt=Request.Form["radgs"].ToString().Trim();}catch(Exception){}
 try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){}
 try{ zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){}
 //Draw-Rpt
 try{
	Response.Output.Write(pJ.view_setqk_rpt(vNJ,vRpt,zfx_flag).ToString());
}catch(Exception ex){
	Response.Output.Write(ex.Message.ToString());
} 
 
 //Draw-Page-Bottom-Html
 Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
