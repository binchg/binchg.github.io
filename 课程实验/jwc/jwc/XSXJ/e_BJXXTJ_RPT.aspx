<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System"%>
<script language="C#" runat="server">
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("bjxx");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string nj=Request["Sel_xsnj"];
				string vY=Request["sel_xy"];
				string vX=Request["sel_zy"];
				string xnxq=Request["sel_xnxq"];
				string html=xsxj .HtmlHear();
				//html+=xsxj.Java_zgxx();
				html+=xsxj.Draw_bjxx(nj,xnxq,vY,vX);
				Response.Write(html);
			}
		}
		</script>
