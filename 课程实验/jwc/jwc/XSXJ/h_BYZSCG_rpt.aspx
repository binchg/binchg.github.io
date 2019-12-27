<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
	BLL.XSXJ.XSXJ_XJYD xsxj=new BLL.XSXJ.XSXJ_XJYD();
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
			string XH=Request["txt_xm"];
			if(XH=="")
			{
				Response.Redirect("../_help/Sorry.aspx?str=请输入学号查询!");
			}
			else
			{
				string html=xsxj .HtmlHear();
				//html+=xsxj.Java_zgxx();
				string htmla=xsxj.drawMain_bysqk(XH);
				if( htmla!="")
				{
					html+=htmla;
					Response.Write(html);
				}
				else
				{
					Response.Redirect("Sorry.aspx?str=没有相关信息!");
				}
			}
		}
</script>