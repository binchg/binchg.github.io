<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XSFX");
			string flag=Request["flag"];
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else_fxxs();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vNJ1=Request["sel_nj1"].Trim().Substring(0,4);
				string vNJ2=Request["sel_nj2"].Trim().Substring(0,4);
				string vFXZY=Request["sel_fxzy"].Trim();
				string vRpt=Request["radCx"];
				if(vRpt=="0")
				{
					xsxj.strHead("XSFXA");
					string html=xsxj.HtmlHear();
					html+=xsxj.Draw_fxxs(vNJ1,vFXZY);
					Response.Write(html);

				}
				else if(vRpt=="1")
				{
					xsxj.strHead("XSFXB");
					string html=xsxj.HtmlHear();
					html+=xsxj.Draw_fxxs2(vNJ2,vFXZY);
					Response.Write(html);
				}
				
			}
		}
</script>