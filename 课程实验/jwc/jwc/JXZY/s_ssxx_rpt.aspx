<%@ Page %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<script language="C#" runat="server">
		public SqlConnection conn;
		private string[] ThePer;
		private string[] TheAlign;
		private string[] TheHeadStr;
		public SqlDataReader myReader;
		public SqlCommand comm;
		public string oldValue;
		public string xqOValue;
		public string lfOValue;
		public string vTitle;
		public DateTime dt=DateTime.Now;
		private void Page_Load(object sender, System.EventArgs e)
		{   
			BLL.JXZY.jxzy yxb=new BLL.JXZY.jxzy(this);
			yxb.strHead_ssjg("4");
			string flag=Page.Request["flag"].Trim();
			if(flag!="firstload")
			{
				int i=1;
				string vRpt=Page.Request["zylb"];
				yxb.strHead_ssjg(vRpt);
			   	string xq=Page.Request["sel_xq"];
				string lf=Request["sel_jxl"];
				string jslx=Page.Request["jslx"];
				string html=yxb.HtmlHear();
				html+=yxb.Draw_ssjg(vRpt,lf,jslx,xq);
				Response.Write(html);	
			}
			else
			{
				string htmla=yxb.HtmlHear();
				htmla+=yxb.Body_else();
				Response.Write(htmla);
			}
		  
		}
</script>
