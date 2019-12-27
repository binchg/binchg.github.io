<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="",vCDDW="",vKC="";
	string vTitle="查看考场记录";
	string[] vStr=new string[]{"",""};
	string[] vKSStr=new string[]{"",""};

	string[] ThePer=new string[]{"5%","40%","5%","25%","20%","5%"};
	string[] TheAlign=new string[]{"center","","center","","","center"};
	string[] TheHeadStr=new string[]{"序号","课程","批次","监考<br>时间","考场",""};
	BLL_kssw pSub=new BLL_kssw(this);
	

	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Tea_KCJL_DrawHead(vStr[0],ThePer,TheHeadStr));
	if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){}
		try{ vKS=Request.Form["sel_lc"].ToString().Trim();}catch(Exception){};
		try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
		try{ vKC=Request.Form["Sel_KC"].ToString().Trim();}catch(Exception){};

		if (vKS!="")
		{
			vKSStr=vKS.Split(',');
			vKSDM=vKSStr[0];
			vKSMC=vKSStr[1];
		}
		vHTML=pSub._Sys_KCJL_Query_rpt(vXNXQ,vKSDM,vCDDW,vKC,ThePer,TheAlign);
		if(vHTML=="")
		{
			Response.Redirect ("../_help/Sorry.aspx?str=NO_DATA");
		}
		else
		{
			Response.Output.Write(vHTML);
		}
	}
}
</script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>