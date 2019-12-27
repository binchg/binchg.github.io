<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string[] ThePer=new string[]{"20%","80%"};
	string[] TheAlign=new string[]{"center",""};
	string[] TheHeadStr=new string[]{"序号","承担单位"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	try
	{
		Response.Output.Write((new purviewManage(this)).S_CDDWGroup1_Left(ThePer,TheAlign,TheHeadStr));
	}
	catch(Exception ex)
	{
		Response.Output.Write("发生如下异常:"+ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="JavaScript">
function SelectUser(theID){
var PivID,PivColor,vColor,PivFontColor
vColor='#89bfa7'

PivID=document.all.PSTemp.ValueID
PivColor=document.all.PSTemp.PivColor
PivFontColor=document.all.PSTemp.PivFontColor

if (PivColor=="Noting" ){
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.value);
}else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.value,theID.Grpid);
}
}

function SubmitUserID(theID,thegrp)
{
var SourceURL,ResultURL
thegrp=parent.document.all.sel_grp.value;
parent.document.all.hidUser.value=theID;
SourceURL="S_CDDWGroup1_Source.aspx?grp="+theID+"&g="+thegrp;
ResultURL="S_CDDWGroup1_Result.aspx?grp="+theID+"&g="+thegrp;
parent.frmRightSource.document.location.href=SourceURL;
parent.frmRightResult.document.location.href=ResultURL;
}

</script>