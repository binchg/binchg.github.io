<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vCDDW="",vKC="",vTitle="提交课程需要的排考场次与不排考场次";
	string[] ThePer=new string[]{"62%","10%","10%","18%"};
	string[] TheAlign=new string[]{"","right","center","right"};
	string[] TheHeadStr=new string[]{"课程","学分","批次","考试人数"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKC=Request.Form["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setPkcc_kskc_rpt(vCDDW,vKC,ThePer,TheAlign,TheHeadStr).ToString());
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.SFAP,theID.ZC,theID.XQ,theID.KSC);
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.SFAP,theID.ZC,theID.XQ,theID.KSC);
	}
}

function SubmitUserID(KCID,PC,KSDM,SFAP,ZC,XQ,KSC){
parent.document.all.kcdm.value=KCID;
parent.document.all.pc.value=PC;
parent.document.all.ksdm.value=KSDM;
parent.document.all.zc.value=ZC;
parent.document.all.xq.value=XQ;
parent.document.all.ksc.value=KSC;

if (SFAP==2){
parent.document.all.sel_ksrq.value=ZC+XQ;
parent.document.all.sel_kscc.value=KSC;
parent.document.all.btn_cancel.disabled=false;
}
else
{
parent.document.all.sel_ksrq.value='';
parent.document.all.sel_kscc.value='';
parent.document.all.btn_sure.disabled=true;
parent.document.all.btn_cancel.disabled=true;
}

parent.main1.document.location.href='set_pkcc_kpkcc.aspx?kcdm=' + KCID + '&kspc=' + PC ;
parent.main2.document.location.href='set_pkcc_bkpkcc.aspx?kcdm=' + KCID + '&kspc=' + PC ;
}
</script>
