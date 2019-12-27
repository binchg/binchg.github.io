<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vFlag="",vYX="",vNJ="",vZY="",vXNXQ="",vKCDM="",vXSSTR="",vSX="";
	try{	vFlag=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{	vNJ=Request.QueryString["nj"].ToString().Trim();}catch(Exception){};
	try{	vYX=Request.QueryString["yx"].ToString().Trim();}catch(Exception){};
	try{	vZY=Request.QueryString["zy"].ToString().Trim();}catch(Exception){};
	try{	vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{	vKCDM=Request.QueryString["kcid"].ToString().Trim();}catch(Exception){};
	try{	vXSSTR=Request.QueryString["theval"].ToString().Trim();}catch(Exception){};
	try{	vSX=Request.QueryString["sx"].ToString().Trim();}catch(Exception){};
		 
	try{
		Response.Output.Write((new BLL_jxsj(this))._xzbj_bjsjap_jlk(vFlag,vYX,vNJ,vZY,vXNXQ,vKCDM,vXSSTR,vSX).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>
<FONT face="ËÎÌו"></FONT>
