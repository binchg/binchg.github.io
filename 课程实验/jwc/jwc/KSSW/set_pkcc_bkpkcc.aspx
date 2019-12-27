<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vKCDM="",vPC="",SN="",vTitle="提交课程需要的排考场次与不排考场次";
	string kcdm="",pc="",zcxq="",ksdm="",ksc="";
	string[] ThePer=new string[]{"65%","35%"};
	string[] TheAlign=new string[]{"center","center"};
	string[] TheHeadStr=new string[]{"日期","场次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vKCDM=Request["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vPC=Request["kspc"].ToString().Trim();}catch(Exception){};
	try{ SN=Request.QueryString["fun"].ToString().Trim();}catch(Exception){};
	
	try{ kcdm=Request.QueryString["kc"].ToString().Trim();}catch(Exception){};
	try{ pc=Request.QueryString["pc"].ToString().Trim();}catch(Exception){};
	try{ zcxq=Request.QueryString["zcxq"].ToString().Trim();}catch(Exception){};
	try{ ksdm=Request.QueryString["ksdm"].ToString().Trim();}catch(Exception){};
	try{ ksc=Request.QueryString["ksc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkcc_bkpkcc_rpt(vKCDM,vPC,SN,kcdm,pc,zcxq,ksdm,ksc,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="JavaScript">
function SelectUser(theID){
var PivID,PivColor,vColor,PivFontColor
vColor='darkblue'

PivID=document.all.PSTemp.ValueID
PivColor=document.all.PSTemp.PivColor
PivFontColor=document.all.PSTemp.PivFontColor

if (PivColor=="Noting" ){
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    //theID.style.color=black;
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.ZC,theID.XQ,theID.KSC);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    //theID.style.color=vColor1;
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.ZC,theID.XQ,theID.KSC);
	}
}

function SubmitUserID(KCID,PC,KSDM,ZC,XQ,KSC){
parent.document.all.selup.disabled=false;
parent.document.all.kcdmup.value=KCID;
parent.document.all.pcup.value=PC;
parent.document.all.zcup.value=ZC;
parent.document.all.xqup.value=XQ;
parent.document.all.kscup.value=KSC;
parent.document.all.ksdm.value=KSDM;
//parent.main3.document.location.href='Tea_kcjl_add_rpt.asp?kcdm=' + KCID + '&kspc=' + PC + '&kscs=' + KSDM + '&jsdm=' + JSDM;

}
</script>
