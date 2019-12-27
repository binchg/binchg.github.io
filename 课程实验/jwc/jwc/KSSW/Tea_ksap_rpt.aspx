<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";
	string vTitle="考试安排表";
	string[] vStr=new string[]{"",""};
	string[] vKSStr=new string[]{"",""};
	
	string[] ThePer=new string[]{"5%","20%","5%","25%","20%","9%","17%"};
	string[] TheAlign=new string[]{"center","left","center","left","left","center","left"};
	string[] TheHeadStr=new string[]{"序号","课程","批次","考试时间","考场","上课班号","行政班级"};
	BLL_kssw pSub=new BLL_kssw(this);
	
	USER_ID=pSub.USER_ID;
	vStr=pSub.GetTeaInfogh(USER_ID);
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Tea_NEWDrawHeadJSAP(vStr[0],ThePer,TheHeadStr));
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
		try{vHTML=pSub._Tea_ksap_rpt(vXNXQ,vKSDM,USER_ID,vStr[1],ThePer,TheAlign);
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
