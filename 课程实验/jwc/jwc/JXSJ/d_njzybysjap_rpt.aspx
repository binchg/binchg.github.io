<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vZY="",vNJ="",vTitle="毕业设计安排[按年级/专业]",vZFX="";
	string[] ThePer=new string[]{"5%","5%","5%","15%","10%","10%","5%","20%","25%"};
	string[] TheAlign=new string[]{"center","center","right","","center","","center","",""};
	string[] TheHeadStr=new string[]{"序号","组次","人数","指导教师","学号","姓名","性别","行政班级","毕业设计题目"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vZFX=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._njzybysjap_rpt(vXNXQ,vZY,vNJ,vZFX,ThePer,TheAlign,TheHeadStr).ToString().Trim());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
