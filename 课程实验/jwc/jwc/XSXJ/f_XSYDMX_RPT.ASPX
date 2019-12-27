<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language="C#" runat="server">
BLL.XSXJ.XSXJ_XJYD xsxj=new BLL.XSXJ.XSXJ_XJYD();
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XJYDMX");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else_down();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vNJ=Request["sel_nj"];
				string vXNXQ=Request["sel_xnxq"];
				string vLB=Request["lb"];
				string vYX=Request["Sel_YX"];
				int i=vLB.IndexOf(",");
				string code="";
				try
				{
				code=vLB.Substring(0,i);
				}
				catch(Exception ev)
				{
					code="";
				}
				string html=xsxj .HtmlHear();
				html+=xsxj.Draw_xjydxx(vXNXQ,vNJ,code,vYX);
				Response.Write(html);
			}
		}
</script>
