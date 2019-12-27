<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	//Define-Data
	string vNJ="",vZYStr="",vTitle="专业环节周数与必修课学时分布";
	string [] ThePer=new string[]{"26%","6%","6%","6%","6%","6%","6%","6%","6%","6%","10%","10%"};
	string [] TheAlign=new string[]{"center","right","right","right","right","right","right","right","right","right","right","right"};
	string [] TheHeadStr=new string[]{"学年学期","入学<br>教育","军<br>训","劳<br>动","技能<br>训练","实<br>习","课程<br>设计","毕业<br>设计","毕业<br>教育","其<br>它","实践环<br>节周数","必修课<br>学时"};
	//object-class
	private_JXJH pJ=new private_JXJH(this);
	//Draw-page-Html-head
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Request-Data
	try{ vNJ=Request.Form["sel_NJ"].ToString().Trim();}catch(Exception){};
	try{ vZYStr=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	//Draw-Rpt
	try{
		Response.Output.Write(pJ.view_zsxsfb(vNJ,vZYStr,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	//Draw-page-Html-Bottom
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
