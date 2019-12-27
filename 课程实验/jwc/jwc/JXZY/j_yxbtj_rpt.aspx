<%@ Page %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<script language="C#" runat="server">
		public SqlDataReader myReader;
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy yxb=new BLL.JXZY.jxzy(this);
		  	yxb.strHead("GLBMTJB");
			string html=yxb.HtmlHear();
		    html+=yxb.DrawZ_total();	   
		    Response.Write(html);
		}
</script>