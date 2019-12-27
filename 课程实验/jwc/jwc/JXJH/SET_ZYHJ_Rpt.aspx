<%@ Page Language="C#" %>
<%@ Import NameSpace="BLL.JXJH"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="理论课程信息";
	string [] ThePer=new string[]{"5%","10%","10%","45%","5%","5%","20%"};
	string [] TheAlign=new string[]{"center","center","center","","right","right","center"};
	string [] TheHeadStr=new string[]{"序号","选择","环节类别","环节","学分","周数","承担单位"};
	
	private_JXJH pJ=new private_JXJH(this);
	Response.Output.Write(pJ.page_Head_HTML(vTitle,"styles_rpt"));
	
	string vNJ="",vZYID="",vKC="";
	
	try{
		vNJ=Request["nj"].ToString().Trim();
		vZYID=Request["id"].ToString().Trim();
		vKC=Request["kc"].ToString().Trim();
		Response.Output.Write(pJ.ScriptBolck_status("正在查询数据...请稍等片刻"));
		Response.Output.Write(pJ.SetZYHJ_Rpt(vNJ,vZYID,vKC,ThePer,TheAlign,TheHeadStr));
	}catch(Exception){
		Response.Output.Write(pJ.DrawHead(ThePer,TheHeadStr));
	}
	
	
	Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
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
    SubmitUserID(theID.NJ,theID.ZY,theID.KC,theID.RowXH,theID.del,theID.zfx);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
    SubmitUserID(theID.NJ,theID.ZY,theID.KC,theID.RowXH,theID.del,theID.zfx);
	}
}

function SubmitUserID(NJ,ZY,KC,RowXH,del,zfx){
parent.document.all.RowXH.value=RowXH
parent.frmKC.location.href='../include/PublicSetVar.aspx?p=HJINFO&nj='+NJ+'&zy='+ZY+'&kc='+KC+"&flag="+zfx;
if (del=="1") {parent.document.all.delbtn.disabled=true}  else{parent.document.all.delbtn.disabled=false}
}
</script>
