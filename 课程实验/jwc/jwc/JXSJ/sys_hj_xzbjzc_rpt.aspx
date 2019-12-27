<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vZY="",vXNXQ="",vNJ="",vBJ="",vTitle="未安排毕业论文答辩";
	string vRpt="";
	string[] ThePer;
	string[] TheAlign;
	string[] TheHeadStr;

	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));	
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
		try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
		try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
		try{ vBJ=Request.Form["sel_bj"].ToString().Trim();}catch(Exception){};
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vRpt=Request.Form["chk"].ToString().Trim();}catch(Exception){};
		
		if(vRpt=="")
		{
			 ThePer=new string[]{"5%","15%","15%","5%","20%","8%","5%","5%","8%","14%"};	
			 TheAlign=new string[]{"center","left","left","right","left","center","right","right","left","left"};
			 TheHeadStr=new string[]{"年级","专业","行政班级","人数","环节","环节类别","学分","周数","周次","承担单位"};
		}
		else
		{
			 ThePer=new string[]{"5%","20%","25%","15%","5%","5%","25%"};	
			 TheAlign=new string[]{"center","left","left","center","right","right","left"};
			 TheHeadStr=new string[]{"年级","行政班级","环节","环节类别","学分","周数","承担单位"};
		}
		
		try{
			Response.Output.Write((new BLL_jxsj(this))._bjsjcz_rpt(vXNXQ,vNJ,vZY,vBJ,vRpt,ThePer,TheAlign,TheHeadStr).ToString());
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>