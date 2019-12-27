<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="不同年级同一专业理论课程的培养方案差异",vYX="",vNJ1="",vNJ2="",vZY="",vRpt="",vKCLB="",vXDLB="";
	//object-class
	private_JXJH pJ=new private_JXJH(this);
	//Draw-page-head-Html
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_Rpt"));
	//Request-Data
	try{ vYX=Request.Form["Sel_XY"].ToString().Trim();}catch(Exception){}
	try{ vNJ1=Request.Form["Sel_nj1"].ToString().Trim();}catch(Exception){}
	try{ vNJ2=Request.Form["Sel_nj2"].ToString().Trim();}catch(Exception){}
	try{ vZY=Request.Form["Sel_ZY"].ToString().Trim();}catch(Exception){}
	try{ vRpt=Request.Form["radCx"].ToString().Trim();}catch(Exception){}
	try{ vKCLB=Request.Form["radgs"].ToString().Trim();}catch(Exception){}
	try{ vXDLB=Request.Form["radfx"].ToString().Trim();}catch(Exception){}
	//Draw-Rpt
	try{
		Response.Output.Write(pJ.view_jhcy_rpt(vYX,vNJ1,vNJ2,vZY,vRpt,vKCLB,vXDLB));
	}catch(Exception ex)
	{Response.Output.Write(ex.Message.ToString());}
	//Draw-page-bottom-Html
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
