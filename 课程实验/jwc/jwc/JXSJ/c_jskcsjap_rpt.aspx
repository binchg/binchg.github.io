<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vYX="",vJS="",vTitle="指导教师课程设计安排";
	string[] ThePer=new string[]{"5%","15%","29%","5%","5%","20%","6%","10%","6%"};
	string[] TheAlign=new string[]{"center","","","center","right","","right","","right"};
	string[] TheHeadStr=new string[]{"序号","指导教师","环节","学分","周数","行政班级","人数","周次","分组<br>个数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.Form["sel_tea"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._jskcsjap_rpt(vXNXQ,vYX,vJS,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>