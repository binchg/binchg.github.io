<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vNJ="",vXNXQ="",vZYID="",vKCLB="",vPy_Type="2",vCDDW="",vKC="",vStr="",zx_flag="0",fx_flag="0";
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML("","styles_Rpt"));
	try{ vNJ=Request["get_nj"].ToString().Trim();}catch(Exception){}
	try{ vXNXQ=Request["get_xnxq"].ToString().Trim();}catch(Exception){}
	try{ vZYID=Request["get_zy"].ToString().Trim();}catch(Exception){}
	try{ vKCLB=Request["kc_type"].ToString().Trim();}catch(Exception){}
	try{ vPy_Type=Request["radType"].ToString().Trim();}catch(Exception){}
	try{ vCDDW=Request["sel_cddw"].ToString().Trim();}catch(Exception){}
	try{ vKC=Request["kc"].ToString().Trim();}catch(Exception){}
	try{ vStr=Request.Form["thePOST"].ToString().Trim();}catch(Exception){}
	try{ zx_flag=Request.Form["zx_flag"].ToString().Trim();}catch(Exception){}
	try{ fx_flag=Request.Form["fx_flag"].ToString().Trim();}catch(Exception){}
	string USER_dwid=vCDDW;
	try{
		Response.Output.Write(pJ.INFO_BGADD_RPT(USER_dwid,vNJ,vXNXQ,vZYID,vKCLB,vPy_Type,vCDDW,vKC,vStr,zx_flag,fx_flag));
	}catch(Exception ex)
	{
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>