<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string SN="",vTitle="提交课程考试群组";
	string kcdm="",pc="",ksqz="",ksdm="";
	string[]ThePer=new string[]{"25%","20%","40%","7%","8%"};
	string[]TheAlign=new string[]{"","right","","right","right"};
	string[]TheHeadStr=new string[]{"考试群组","考试课程→批次数","课程","学分","批次"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ SN=Request.QueryString["fun"].ToString().Trim();}catch(Exception){};
	try{ kcdm=Request.QueryString["kc"].ToString().Trim();}catch(Exception){};
	try{ pc=Request.QueryString["pc"].ToString().Trim();}catch(Exception){};
	try{ ksqz=Request.QueryString["ksqz"].ToString().Trim();}catch(Exception){};
	try{ ksdm=Request.QueryString["ksdm"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkksqz_rpt(SN,kcdm,pc,ksqz,ksdm,ThePer,TheAlign,TheHeadStr).ToString());
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.QZDM);
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.QZDM);
	}
}

function SubmitUserID(KCID,PC,KSDM,QZDM){
//parent.document.all.sn.value=2;
parent.document.all.selup.disabled=false;
parent.document.all.kcdmup.value=KCID;
parent.document.all.pcup.value=PC;
parent.document.all.ksdm.value=KSDM;
parent.document.all.ksqz.value=QZDM;
//parent.main3.document.location.href='Tea_kcjl_add_rpt.asp?kcdm=' + KCID + '&kspc=' + PC + '&kscs=' + KSDM + '&jsdm=' + JSDM;

}
</script>
