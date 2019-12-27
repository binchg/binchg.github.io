<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string CUR_XNXQ="",vYX="";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML("开课变更情况统计表","styles_Rpt"));
	try{ CUR_XNXQ=Request["sel_xnxq"].ToString().Trim();}catch(Exception){}
	try{ vYX=Request["sel_yx"].ToString().Trim();}catch(Exception){}
	string[] ThePer=new string[]{"6%","16%","10%","20%","8%","8%","8%","8%","8%","8%"};
	string[] TheAlign=new string[]{"center","","center","","center","center","center","center","center","center"};
	string[] TheHeadStr1=new string[]{"序号","院(系)部","年级","专业","变更课程门数","变更环节个数"};
	string[] TheHeadStr2=new string[]{"增开","不开","修改","增开","不开","修改"};
	
	try{
		Response.Output.Write(pJ.XQBGTJ_Rpt(CUR_XNXQ,vYX,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>

