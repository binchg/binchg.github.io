<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
  string vP="",vJSSTR="",vXNXQ="",vKCID="",vKCCDDW="",vDDJSRS="",vJSRS="";
  try{ vP=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
  if(vP.ToUpper()=="UPD"){
		try{ vJSSTR=Request["idval"].ToString().Trim();}catch(Exception){};
		try{ vXNXQ=Request.Form["xnxq"].ToString().Trim();}catch(Exception){};
		try{ vKCID=Request.Form["kcdm"].ToString().Trim();}catch(Exception){};
		try{ vKCCDDW=Request.Form["kccddw"].ToString().Trim();}catch(Exception){};
		try{ vDDJSRS=Request.Form["DQDRS"].ToString().Trim();}catch(Exception){};
		try{ vJSRS=Request.Form["yqdjsrs"].ToString().Trim();}catch(Exception){};
		
		try{
			Response.Output.Write((new BLL_jxsj(this)).Set_KCJSSD_Save(vJSSTR,vXNXQ,vKCID,vJSRS,vKCCDDW).ToString());
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
  }
}
</script>