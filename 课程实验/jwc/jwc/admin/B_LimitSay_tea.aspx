<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="DAL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string sUid="",vPost="";
	string[] ThePer=new string[]{"5%","25%","25%","45%"};
	string[] TheAlign=new string[]{"center","center","",""};
	string[] TheHeadStr=new string[]{"序号","工号","姓名","部门"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	DataPurviewManage ct=new DataPurviewManage();

	try{sUid=Request.QueryString["txtID"].ToString().Trim();}catch{};

	try{ vPost=Request.QueryString["button"].ToString().Trim();}catch(Exception){};

	if(vPost!="")
	{
		if(vPost=="删除")
		{
			try{sUid=Request.QueryString["hidcode"].ToString().Trim();}catch(Exception){};	
		}
		
		try{
			Response.Output.Write(ct.B_LimitSay_tea_Data(vPost,sUid));
		}catch(Exception ex){
			Response.Output.Write(ex.Message.ToString());
		}
	}
	try{
		Response.Output.Write((new purviewManage()).B_LimitSay_tea_rpt(ct.B_LimitSay_tea_rpt_Data(""),ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='blue';}

document.body.onselectstart=new Function("return false;");
function SelectUser(theID){//alert(0);
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
	SubmitUserID(theID.value,theID.GroupCode,theID.GroupName,theID.Memo);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
	SubmitUserID(theID.value,theID.GroupCode,theID.GroupName,theID.Memo);
	}
}

function SubmitUserID(value,GroupCode,GroupName,Memo){
   parent.document.all.hidcode.value=value
   parent.document.all.Tck.value=2;//alert(GroupCode);
   parent.document.all.btnset.disabled=true;
   parent.document.all.btndel.disabled=false;
   
   //parent.document.all.txtJSID.value=value;
//parent.frmRpt.Fresh()();
}
</script>