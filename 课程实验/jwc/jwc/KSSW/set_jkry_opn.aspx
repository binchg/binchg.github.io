<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vFlag="",vYX="",vCS="",vXNXQ="",vKSLC="",vKSKC="",vJSDM="",vPC="",vJSID="",vJSSSWDW="",vNUM="";
	string vKSRQ="",vKSC="",vJSXM="",vP="",vZJK_Flag="",vYAPJS="";
	//show 
	try{vFlag=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{vYX=Request.QueryString["yx"].ToString().Trim();}catch(Exception){};
	try{vCS=Request.QueryString["cs"].ToString().Trim();}catch(Exception){};
	
	
	try{vXNXQ=Request.Form["xnxq"].ToString().Trim();}catch(Exception){};
	try{vKSLC=Request.Form["kslc"].ToString().Trim();}catch(Exception){};
	try{vKSKC=Request.Form["kskc"].ToString().Trim();}catch(Exception){};
	try{vJSDM=Request.Form["jsdm"].ToString().Trim();}catch(Exception){};
	try{vPC=Request.Form["pc"].ToString().Trim();}catch(Exception){};
	
	try{vJSID=Request.Form["jsid"].ToString().Trim();}catch(Exception){};
	try{vJSSSWDW=Request.Form["jsssdw"].ToString().Trim();}catch(Exception){};
	try{vNUM=Request.Form["num"].ToString().Trim();}catch(Exception){};
	try{vKSRQ=Request.Form["ksrq"].ToString().Trim();}catch(Exception){};
	try{vKSC=Request.Form["ksc"].ToString().Trim();}catch(Exception){};
	
	try{vJSXM=Request.Form["jsxm"].ToString().Trim();}catch(Exception){};
	try{vP=Request.Form["flag"].ToString().Trim();}catch(Exception){};
	try{vZJK_Flag=Request.Form["zjk_flag"].ToString().Trim();}catch(Exception){};
	
	try{vYAPJS=Request.Form["yapjs"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setJkry_opn_rpt(vFlag,vYX,vCS,vXNXQ,vKSLC,vKSKC,vJSDM,vPC,vJSID,vJSSSWDW,vNUM,vKSRQ,vKSC,vJSXM,vP,vZJK_Flag,vYAPJS).ToString());
	}catch(Exception ex){}
}
</script>