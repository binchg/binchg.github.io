<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vZY="",vNJ="",vFlag="",vXNXQ="",vKCDM="",vXSSTR="",vJS="",vSX="";
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	try{ vFlag=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.QueryString["yx"].ToString().Trim();}catch(Exception){};
	try{ vZY=Request.QueryString["zy"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.QueryString["nj"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcid"].ToString().Trim();}catch(Exception){};
	try{ vXSSTR=Request.QueryString["theval"].ToString().Trim();}catch(Exception){};
	try{ vJS=Request.QueryString["js"].ToString().Trim();}catch(Exception){};
	try{ vSX=Request.QueryString["sx"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).set_kcsjap_jlk(vFlag,vYX,vZY,vNJ,vXNXQ,vKCDM,vXSSTR,vJS,vSX).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>