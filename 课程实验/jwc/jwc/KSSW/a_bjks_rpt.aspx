<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vXNXQ="",vKS="",vTitle="行政班级考试安排",vZY="";
	string[] ThePer=new string[]{"12%","4%","14%","4%","15%","3%","3%","4%","10%","4%","9%","18%"};
	string[] TheAlign=new string[]{"","right","","right","","right","center","right","","right","",""};
	string[] TheHeadStr=new string[]{"行政班级","人数","考试时间","考试人数","课程","学分","批次","考试<br>人数","考场","考试人数","主监考","辅监考"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	if (Request.ServerVariables["REQUEST_METHOD"]=="POST")
	{
		//try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	
		try{ vYX=Request.Form["sel_xy"].ToString().Trim();}catch(Exception){};
		try{ vZY=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
		try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
		
		try{Response.Output.Write((new BLL_kssw(this))._bjks_rpt(vYX,vXNXQ,vKS,ThePer,TheAlign,TheHeadStr,vZY).ToString());
		}catch(Exception ex){}
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>