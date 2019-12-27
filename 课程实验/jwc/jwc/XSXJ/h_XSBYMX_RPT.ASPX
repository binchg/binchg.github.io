<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language="C#" runat="server">
BLL.XSXJ.XSXJ_XJYD xsxj=new BLL.XSXJ.XSXJ_XJYD();

		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XSBYMX");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vNJ=Request["Sel_nj"];
				string vYX=Request["sel_xy"];
				string vZY=Request["sel_zy"];
				string html=xsxj.HtmlHear();
				//html+=xsxj.Java_zgxx();
				html+=xsxj.Draw_bysmc(vNJ,vYX,vZY);
				Response.Write(html);
			}
		}

</script>

