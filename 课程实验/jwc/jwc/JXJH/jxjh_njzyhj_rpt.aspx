<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//Defined Data
	string vTitle="实践环节安排表",vNJ="",vZYStr="",zfx_flag="";
	string [] ThePer=new string[]{"5%","34%","10%","6%","6%","9%","30%"};
	string [] TheAlign=new string[]{"center","","","right","right","center",""};
	string [] TheHeadStr=new string[]{"序号","实践环节","环节类别","学分","周数","开设学期","内容与要求"};
	//class-object
	private_JXJH pJ=new private_JXJH(this);
	//Draw HTML Head
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Request-Data
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZYStr=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){};
	//Draw-Rpt
	try{
		Response.Output.Write(pJ.view_hj_Rpt(vNJ,vZYStr,zfx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	//Draw HTML Bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
