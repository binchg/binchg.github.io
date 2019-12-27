<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Page %>
<script language="C#" runat="server">
		public SqlDataReader myReader;	
		BLL.include.ind_subPublic pub_param=new BLL.include.ind_subPublic(); 	
		private void Page_Load(object sender, System.EventArgs e)
		{
			string schoolcode=pub_param.GetSchoolCode();			
			BLL.JXZY.jxzy yxb=new BLL.JXZY.jxzy(this);
			string html="";
			if(schoolcode=="13395") //廊坊职业技术学院需求
			{
				yxb.strHead("JZGGC_13395");
				html=yxb.HtmlHear();
				html+=yxb.DrawZofjzggc_13395();	   
				Response.Write(html);
			}
			else
			{
		  		yxb.strHead("JZGGC");
				html=yxb.HtmlHear();
				html+=yxb.DrawZofjzggc();	   
				Response.Write(html);
		    }
		}
</script>
