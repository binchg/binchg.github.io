<%@ Import NameSpace="BLL.JXJH"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vRpt="",vNJ="",vXNXQ="",vZYStr="",zfx_flag="1";
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	try{ vRpt=Request.Form["rKCHJ"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_NJ"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.Form["sel_xnxq"].ToString().Trim();}catch(Exception){};
	try{ vZYStr=Request.Form["sel_zy"].ToString().Trim();}catch(Exception){};
	try{ zfx_flag=Request.Form["zfx_flag"].ToString().Trim();}catch(Exception){};
	//Draw-Rpt
	try{
	 Response.Output.Write((new private_JXJH()).KKJH_NJZY_Rpt(vRpt,vNJ,vXNXQ,vZYStr,zfx_flag).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
