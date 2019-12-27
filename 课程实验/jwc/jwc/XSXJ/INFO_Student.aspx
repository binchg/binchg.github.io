<%@ Page %>
<%@ Import namespace="System" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient" %>
<script language="C#" runat="server">
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			string Html="";		
			string id=Request["id"];	
			Html+=xsxj.t();
			Html+=xsxj.Draw_zxxsmc(id);
			Html+=xsxj.w();
			Response.Write(Html);
		}
</script>
