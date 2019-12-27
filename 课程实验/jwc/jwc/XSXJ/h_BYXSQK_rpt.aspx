<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language="C#" runat="server">
BLL.XSXJ.XSXJ_XJYD xsxj=new BLL.XSXJ.XSXJ_XJYD();
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("BYXSQK");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else_BYSQK();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vNJ=Request["sel_nj"];
				string vYX=Request["Sel_YX"];
				string html=xsxj .HtmlHear();
				html+=xsxj.drawMain_bysqk(vYX,vNJ);
				Response.Write(html);
			}
		}
</script>
