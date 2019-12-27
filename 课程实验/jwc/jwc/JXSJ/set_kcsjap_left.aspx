<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
   string vXNXQ="",vKCDM="",vBJDM="",vXSSTR="",vZC="",vSJCD="",vKTBH="",vDDJS="",vDDJS1="",vTIMEZC="";
   string[] ThePer=new string[]{"13%","35%","39%","13%"};
   string[] TheAlign=new string[]{"center","center","left","center"};
   string[] TheHeadStr=new string[]{"选定","学号","姓名","性别"};
   
   Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
   
   //Request-Data
   try{	vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
   try{	vKCDM=Request["kcdm"].ToString().Trim();}catch(Exception){};
   try{	vBJDM=Request["bjdm"].ToString().Trim();}catch(Exception){};
   
   try{	vXSSTR=Request["theval"].ToString().Trim();}catch(Exception){};
   try{	vZC=Request.Form["zc"].ToString().Trim();}catch(Exception){};
   try{	vSJCD=Request.Form["js"].ToString().Trim();}catch(Exception){};
   try{	vKTBH=Request.Form["sjtm"].ToString().Trim();}catch(Exception){};
   try{	vDDJS=Request.Form["ddjs"].ToString().Trim();}catch(Exception){};
   try{	vDDJS1=Request.Form["ddjs1"].ToString().Trim();}catch(Exception){};
   try{	vTIMEZC=Request.Form["timezc"].ToString().Trim();}catch(Exception){};
   
   try{
		Response.Output.Write((new BLL_jxsj(this)).set_kcsjap_left_rpt(vXNXQ,vKCDM,vBJDM,vXSSTR,vZC,vSJCD,vKTBH,vDDJS,vDDJS1,vTIMEZC,ThePer,TheAlign,TheHeadStr).ToString());
   }catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
   }
   
   Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

