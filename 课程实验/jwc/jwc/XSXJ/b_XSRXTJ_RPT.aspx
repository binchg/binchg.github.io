<%@ Page %>
<%@ Import NameSpace="System"%>
<%@ Import NameSpace="System.Data"%>
<%@ Import NameSpace="System.Data.SqlClient"%>
<script language="C#" runat="server">
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
			xsxj.strHead("XSRXQK");
			//string THE_APPPUBLIC=Application["TheAppPublic"].ToString();
			//Response.Write (THE_APPPUBLIC);
			string flag=Request["flag"];
			//Response.Write(flag);
			if(flag=="firstload")
			{
				string htmla=xsxj.HtmlHear();
				htmla+=xsxj.Body_else();
				Response.Write(htmla);
			}
			else if(flag=="sec")
			{
				string vNJ=Request["Sel_XSNJ"];
				string vYX=Request["Sel_YX"];
				string vCC=Request["Sel_PYCC"];
				string vSF="";
				string vXNXQ=Request["sel_xnxq"];
				string vXN=vXNXQ.Substring(0,4);
				string vXQ=vXNXQ.Substring(vXNXQ.Length-1,1);
				string html=xsxj .HtmlHear();
				//html+=xsxj.Java_zgxx();
				html+=xsxj.Draw_xsxj(vNJ,vCC,vSF,vYX,vXN,vXQ);
				Response.Write(html);
			}
		}

</script>

