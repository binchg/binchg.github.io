<%@ Page %>
<%@ Import namespace="System" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<script language="C#" runat="server">
		public SqlDataReader myReader;
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy yxb=new BLL.JXZY.jxzy(this);
		  	yxb.strHead("zytjb");
			string html=yxb.HtmlHear();
		    html+=yxb.DrawZY_total();	   
		    Response.Write(html);
		}
</script>