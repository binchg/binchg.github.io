<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";
	string vTitle="øº ‘∞≤≈≈±Ì";
	string[] vStr=new string[]{"",""};
	string[] vKSStr=new string[]{"",""};
	string[] ThePer=new string[]{"5%","45%","60%"};
	string[] TheAlign=new string[]{"center","",""};
	string[] TheHeadStr=new string[]{"–Ú∫≈","—≤øº<br> ±º‰","—≤øº<br>∑∂Œß"};
	BLL_kssw pSub=new BLL_kssw(this);
	
	USER_ID=pSub.USER_ID;
	
	vStr=pSub.GetTeaInfogh(USER_ID);
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Tea_NEWDrawHead(vStr[0],ThePer,TheHeadStr));
	if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){}
		try{vKS=Request.Form["sel_lc"].ToString();}catch(Exception){}
		try{
		if (vKS!="")
		{
			vKSStr=vKS.Split(',');
			vKSDM=vKSStr[0];
			vKSMC=vKSStr[1];
		}
		}catch(Exception){}
		try{vHTML=pSub._Tea_xkap_rpt(vKSDM,USER_ID,ThePer,TheAlign);
		}catch(Exception){}
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
