<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vZY="",vNJ="",vXNXQ="",vSFAP="0",vZFX="",vTitle="未安排毕业设计";
	string[] ThePer=new string[]{"5%","20%","20%","20%","15%","15%","5%"};
	string[] TheAlign=new string[]{"center","left","left","left","center","left","center"};
	string[] TheHeadStr=new string[]{"序号","院(系)/部","专业","行政班级","学号","姓名","性别"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZFX=Request.Form["radCx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._wapbysj_rpt(vYX,vZY,vNJ,vXNXQ,vZFX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>