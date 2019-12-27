<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
BLL.XSXJ.XSXJ_XQZC xsxj=new BLL.XSXJ.XSXJ_XQZC();

		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA PubObj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XQBD");
			string flag=Request["flag"];
			if (flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vYX=Request["sel_yx"];
				string CUR_XNXQ=Request["sel_xnxq"];
				string html=xsxj.HtmlHear();
				html+=xsxj.Draw_xqbdqk(vYX,CUR_XNXQ);
				Response.Write(html);				
			}
		}
</script>