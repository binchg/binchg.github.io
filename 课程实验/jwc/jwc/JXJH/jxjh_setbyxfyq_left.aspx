<%@Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string [] ThePer=new string[]{"8%","15%","40%","47%"};
	string [] TheAlign=new string[]{"center","center","",""};
	string [] TheHeadStr=new string[]{"序号","专业<br>代码","专业名称","院(系)/部"};
	
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML("","styles_Rpt"));
	string vNJ="",vYX="",fx_flag="";
	try{
		vNJ=Request["sel_nj"].ToString().Trim();
		vYX=Request["sel_yx"].ToString().Trim();
		fx_flag=Request["radgs"].ToString().Trim();
	}catch(Exception){}
	try{
		Response.Output.Write(pJ.Set_Byxf_Rpt_left(vYX,vNJ,fx_flag,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<script language="javascript">
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
	
    SubmitUserID(theID.NJ,theID.value,theID.fx_flag);
    rightReset()
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.NJ,theID.value,theID.fx_flag);
    rightReset()
	}
}

function SubmitUserID(NJ,ZY,FX){
	parent.main.location.href='jxjh_setbyxfyq_rpt.aspx?zy='+ZY+'&nj='+NJ+'&fx='+FX;
}

function rightReset(){
try{
PivID=parent.frameright.document.all.PSTemp.ValueID
PivColor=parent.frameright.document.all.PSTemp.PivColor
PivFontColor=parent.frameright.document.all.PSTemp.PivFontColor
}catch(e){return false}
try{
eval("parent.frameright."+PivID+".style.backgroundColor='"+PivColor+"';");
eval("parent.frameright."+PivID+".style.color='"+PivFontColor+"';");
}catch(e){return false}
}
</script> 