<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XSJCXXA");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string xnxq=Request["sel_xnxq"].Trim();
				string nj=Request["sel_nj"].Trim();
				string zy=Request["sel_zy"].Trim();
				string cf=Request["sel_cf"].Trim();
				string jl=Request["sel_jl"].Trim();
				string chkCxfs=Request["chkCxfs"].Trim();
				if (chkCxfs=="0")
				{
					xsxj.strHead("XSJCXXA");
					string html=xsxj.HtmlHear();
					html+=xsxj.drawTable_jcxx_jl(xnxq,nj,zy,jl);
					Response.Write(html);
					
				}
				else
				{
					xsxj.strHead("XSJCXXB");
					string html=xsxj.HtmlHear();
					html+=xsxj.drawTable_jcxx(xnxq,nj,zy,cf);
					Response.Write(html);
				}
			}
		}
</script>