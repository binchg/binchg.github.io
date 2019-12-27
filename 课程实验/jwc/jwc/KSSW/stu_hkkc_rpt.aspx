<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vKSDM="",vXNXQ="",USER_ID="",vTitle="²é¿´»º¿¼¿Î³Ì";
	string[] ThePer=new string[]{"40%","40%","20%"};
	string[] TheAlign=new string[]{"","","center"};
	string[] TheHeadStr=new string[]{"»º¿¼¿¼ÊÔÂÖ´Î","»º¿¼¿Î³Ì","×´Ì¬"};
	string vHTML="";
	BLL_kssw pSub=new BLL_kssw(this);
	
	vXNXQ=BLL_kssw.CUR_XNXQ;
	vKSDM=BLL_kssw.CUR_KSDM;
	USER_ID=pSub.USER_ID;
	
	string vStr=pSub.GetStuInfo(vXNXQ,USER_ID);
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	Response.Output.Write(pSub.Stu_NEWDrawHead(vStr,ThePer,TheHeadStr));
	try{vHTML=pSub._Stu_hkkc_rpt(USER_ID,vKSDM,ThePer,TheAlign);
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
<FONT face="ËÎÌå"></FONT>
