<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
 private void Page_Load(object sender,System.EventArgs e){
	string cddw="",kcstr="",selrad="";
	string vTitle="<b>课程/环节教学大纲</b>";
	private_JXJH pj=new private_JXJH(this);
	Response.Output.Write(pj.page_Head_HTML(vTitle,"styles_rpt"));
	if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()== "POST"){
		try{
				cddw=Request.Form["sel_cddw"].ToString().Trim();
		}catch(Exception){}
		try{
				kcstr=Request.Form["kc"].ToString().Trim();
		}catch(Exception){}
		try{
				selrad=Request.Form["selrad"].ToString().Trim();
			}catch(Exception){}
			
		
		try{
			Response.Output.Write(pj.KCHJ_JXDG(vTitle,cddw,kcstr,selrad).ToString());
		}catch(Exception ex){
			Response.Write(ex.Message.ToString());
		}
	}
	Response.Output.Write(pj.page_Bottom_HTML());
 }
</script>

