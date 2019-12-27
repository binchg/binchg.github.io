<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string but="",vID="",vMC="",vTitle="设置考试群组";
	string[]ThePer=new string[]{"20%","80%"};
	string[]TheAlign=new string[]{"center",""};
	string[]TheHeadStr=new string[]{"代码","名称"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ but=Request["button"].ToString().Trim();}catch(Exception){};
	try{ vID=Request.Form["txtID"].ToString().Trim();}catch(Exception){};
	try{ vMC=Request.Form["txtName"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setKsqz_rpt(but,vID,vMC,ThePer,TheAlign,TheHeadStr).ToString());
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
	SubmitUserID(theID.value,theID.QZMC,theID.CS);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
	SubmitUserID(theID.value,theID.QZMC,theID.CS);
	}
}

function SubmitUserID(value,QZMC,CS){
   parent.document.all.bntDel.disabled=false;   
   parent.document.all.hidcode.value=value;
   parent.document.all.txtID.value=value;
   parent.document.all.txtName.value=QZMC;
}
</script>