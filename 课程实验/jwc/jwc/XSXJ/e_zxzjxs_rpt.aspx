<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language=C# runat=server>
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("ZXZJXSMC");
			string flag=Request["flag"];
			if (flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vYX=Request["sel_xy"];
				string vZY=Request["sel_zy"];
				string vBJ=Request["sel_bj"];
				string CUR_XNXQ=Request["sel_pycc"];
				string vRpt=Request["radCx"];
				string html=xsxj.HtmlHear();
				html+=xsxj.DrawTable_zxzjxsmc(vYX,vZY,vBJ,CUR_XNXQ,vRpt);
				Response.Write(html);				
			}
		}
</script>