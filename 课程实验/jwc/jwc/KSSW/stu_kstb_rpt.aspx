<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="考试通报信息";
	string vXNXQ="",vKSDM="",vKSMC="",vKS="",USER_ID="",vHTML="";

	string[] vKSStr=new string[]{"",""};
	string[] ThePer=new string[]{"5%","25%","8%","8%","8%","26%","12%","8%"};
	string[] TheAlign=new string[]{"center","","right","","","","",""};
	string[] TheHeadStr=new string[]{"序号","课程","学分","类别","考核<br>方式","考试<br>时间","考试<br>地点","通报<br>类型"};

	BLL_kssw pSub=new BLL_kssw(this);
	USER_ID=pSub.USER_ID;
	
	string vStr=pSub.GetStuInfo("",USER_ID);
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	//Response.Output.Write(pSub.Stu_NEWDrawHead(vStr,ThePer,TheHeadStr));
	
	
	try{vHTML=pSub._Stu_kstb_rpt(USER_ID,ThePer,TheAlign,TheHeadStr);
	}catch(Exception){}
	if(vHTML=="")
	{
		Response.Redirect ("../_help/Sorry.aspx?str=NO_DATA");
	}
	else
	{
		Response.Output.Write(vHTML);
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>