<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";
	string vTitle="查看考试安排";
	string[] vKSStr=new string[]{"",""};
	string[] ThePer=new string[]{"5%","25%","8%","8%","8%","26%","12%","8%"};
	string[] TheAlign=new string[]{"center","","right","","","","","right"};
	string[] TheHeadStr=new string[]{"序号","课程","学分","类别","考核<br>方式","考试<br>时间","考试<br>地点","座位号"};
	BLL_kssw pSub=new BLL_kssw(this);
	
	USER_ID=pSub.USER_ID;
	
	string vStr=pSub.GetStuInfo(vXNXQ,USER_ID);
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Stu_NEWDrawHead(vStr,ThePer,TheHeadStr));
	if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
	{
		try{vXNXQ=Request.Form["sel_xnxq"].ToString();}catch(Exception){}
		try{vKS=Request.Form["sel_lc"].ToString();}catch(Exception){}
		if (vKS!=""&&(vKS.IndexOf(",")>-1))
		{
			vKSStr=vKS.Split(',');
			vKSDM=vKSStr[0];
			vKSMC=vKSStr[1];
		}
		try{vHTML=pSub._Stu_ksap_rpt(USER_ID,vKSDM,ThePer,TheAlign);
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
	
	
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
