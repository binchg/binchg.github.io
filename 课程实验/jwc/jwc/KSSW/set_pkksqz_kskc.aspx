<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vCDDW="",vKC="",vTitle="提交课程考试群组";
	string[]ThePer=new string[]{"70%","15%","15%"};
	string[]TheAlign=new string[]{"","center","right"};
	string[]TheHeadStr=new string[]{"课程","学分","批次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));

	try{ vCDDW=Request["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkkcsqz_kskc(vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM);
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM);
	}
}

function SubmitUserID(KCID,PC,KSDM){
//parent.document.all.sn.value=1;
parent.document.all.seldown.disabled=false;
parent.document.all.kcdmdown.value=KCID;
parent.document.all.pcdown.value=PC;
parent.document.all.ksdm.value=KSDM;
//parent.main3.document.location.href='Tea_kcjl_add_rpt.asp?kcdm=' + KCID + '&kspc=' + PC + '&kscs=' + KSDM + '&jsdm=' + JSDM;

}
</script>
