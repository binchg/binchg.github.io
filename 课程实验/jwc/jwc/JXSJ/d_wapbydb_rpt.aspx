<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vZY="",vXNXQ="",vNJ="",vTitle="未安排毕业论文答辩";
	string[] ThePer=new string[]{"5%","20%","25%","10%","40%"};	
	string[] TheAlign=new string[]{"center","center","left","center","left"};
	string[] TheHeadStr=new string[]{"序号","学号","姓名","性别","行政班级"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._wapbydb_rpt(vYX,vZY,vNJ,vXNXQ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>