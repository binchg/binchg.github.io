<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vRpt="",vNJ="",vTitle="教学计划执行情况",vXNXQ="";
	string[] ThePer=new string[]{"10%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","3%","6%","6%","6%","6%","6%","6%"};
	string[] TheAlign=new string[]{"","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right","right"};
	string[] TheHeadStr1=new string[]{"专业","计划开设<br>课程门数","计划开设<br>课程学分","到本学期<br>计划开设<br>课程门数","到本学期<br>计划开设<br>课程学分","到本学期<br>实际开设<br>课程门数","到本学期<br>实际开设<br>课程学分","计划开设<br>环节门数","计划开设<br>环节学分","到本学期<br>计划开设<br>环节门数","到本学期<br>计划开设<br>环节学分","到本学期<br>实际开设<br>环节门数","到本学期<br>实际开设<br>环节学分"};
	string[] TheHeadStr2=new string[]{"必修","限选","任选","必修","限选","任选","必修","限选","任选","必修","限选","任选","必修","限选","任选","必修","限选","任选"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	try{ vRpt=Request.Form["radgs"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	if(vRpt.Trim()=="2"){
		TheHeadStr2=new string[]{"公共","专业<br>基础","专业","公共","专业<br>基础","专业","公共","专业<br>基础","专业","公共","专业<br>基础","专业","公共","专业<br>基础","专业","公共","专业<br>基础","专业"};
	}
	Response.Output.Write((new private_JXJH()).KKJH_JXJHZXQK(vNJ,TheHeadStr1,TheHeadStr2).ToString());
	if(Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{
			Response.Output.Write((new private_JXJH()).KKJH_JXJHZXQK(vRpt,vNJ,vXNXQ,ThePer,TheAlign,TheHeadStr1,TheHeadStr2).ToString());
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>



