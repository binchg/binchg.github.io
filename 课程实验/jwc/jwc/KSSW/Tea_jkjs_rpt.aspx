<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";
	string vTitle="监考安排表";
	string[] vStr=new string[]{"",""};
	string[] vKSStr=new string[]{"",""};

	string[] ThePer=new string[]{"4%","25%","4%","25%","20%","5%","5%","12%"};
	string[] TheAlign=new string[]{"center","","center","","","center","center",""};
	string[] TheHeadStr=new string[]{"序号","课程","批次","考试时间","考场","监考类别","行政班级"};
	string [] TheHeadStr2=new string[]{"主监考","辅监考"};
	BLL_kssw pSub=new BLL_kssw(this);
	
	USER_ID=pSub.USER_ID;
	
	vStr=pSub.GetTeaInfogh(USER_ID);
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Tea_NEWDrawHeadJKAP(vStr[0],ThePer,TheHeadStr,TheHeadStr2));
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
		try{
		vHTML=pSub._Tea_jkap_rpt(vXNXQ,vKSDM,USER_ID,vStr[1],ThePer,TheAlign);
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
