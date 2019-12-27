<%@ Page %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<style>
TD{font-family: "宋体"; font-size: 12px;border-color_:#008080;height:30;
border-left:medium none; border-right_: 1px solid; 
border-top:medium none; border-bottom_:1px solid; 
padding-left:3px;padding-right:3px;
}
</style>
<script language="C#" runat="server">
	private void Page_Load(object sender, System.EventArgs e)
	{
		BLL.JXZY.jxzy glbmxx=new BLL.JXZY.jxzy(this);
		string USER_ID=glbmxx.USER_ID;
		string Html="";
		Html+=glbmxx.HtmlHear_front("教师信息");
		//Response.Write(id);		
		//Html+=glbmxx.HtmlBody_front("教师信息","r_wpjs_rpt.aspx");//DrawZ_wpjs_xx
		Html+=glbmxx.DrawZ_wpjs_xx(USER_ID);
		Html+=glbmxx.HtmlTrail_front();
		Response.Write(Html);
	}
</script>
