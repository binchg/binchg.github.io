<%@ Page %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="System" %>
<script language="C#" runat="server">
BLL.JXZY.jxzy_tea yxb=new BLL.JXZY.jxzy_tea();
	private void Page_Load(object sender, System.EventArgs e)
		{   
			yxb.strHead();
			string flag=Page.Request["flag"].Trim();
			if(flag=="sec")
			{
				int i=1;
				string vZC=Page.Request["sel_zc"];
				string vXL=Page.Request["sel_xl"];
				string vXW=Page.Request["sel_xw"];
				string vGW=Page.Request["sel_gw"];
				string vSFZG=Page.Request["sel_sfzg"];
				string vNL1=Page.Request["AgeF"];
				string vNL2=Page.Request["AgeT"];
				string vCDate=Page.Request["cdate"];
				//yxb.strHead_ssjg(vRpt);
			  	string html=yxb.HtmlHear();
			  	html+=yxb.Java_zgxx();
				html+=yxb.Draw_zgxx(vZC,vXL,vXW,vGW,vSFZG,vNL1,vNL2,vCDate);
				Response.Write(html);	
			}
			else if (flag=="firstload")
			{
				string htmla=yxb.HtmlHear();
				htmla+=yxb.Body_else();
				Response.Write(htmla);
			}
		  
		}
</script>