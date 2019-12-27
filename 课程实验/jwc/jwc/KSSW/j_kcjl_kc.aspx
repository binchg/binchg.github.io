<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vKCDM="",vKSPC="",vKSDM="",vTitle="查看考场记录";
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vKSPC=Request.QueryString["kspc"].ToString().Trim();}catch(Exception){};
	try{ vKSDM=Request.QueryString["kscs"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._kcjl_kc_rpt(vKCDM,vKSPC,vKSDM).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
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
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.JSDM);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
	SubmitUserID(theID.value,theID.PC,theID.KSDM,theID.JSDM);
	}
}

function SubmitUserID(KCID,PC,KSDM,JSDM){
   parent.main3.document.location.href='j_kcjl_rpt.aspx?kcdm='+KCID+'&kspc='+PC+'&kscs='+KSDM+'&jsdm='+JSDM;

}
</script>
