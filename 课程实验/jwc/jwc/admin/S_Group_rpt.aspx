<%@ Import NameSpace="BLL.admin"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Page %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{	
	try{
		purviewManage pM=new purviewManage(this);
		if(pM.chkPurview("adm000")){
			Response.Output.Write((new ind_subPublic()).page_Head_HTML("角色定义","styles_rpt"));
			
			string[]ThePer=new string[]{"5%","45%","50%"};
			string[]TheAlign=new string[]{"center","",""};
			string[]TheHeadStr=new string[]{"序号","角色名称","角色描述"};
			
			string vbut="",vGroup="",vMemo="",vCode="";
			try{ vbut=Request["button"].ToString().Trim();}catch(Exception){};
			try{ vGroup=Request.Form["txtName"].ToString().Trim();}catch(Exception){};
			try{ vMemo=Request.Form["txtMemo"].ToString().Trim();}catch(Exception){};
			try{ vCode=Request.Form["hidcode"].ToString().Trim();}catch(Exception){};
			if(vbut.Length>0){
				try{
					Response.Output.Write(pM.S_Group_rpt_update(vbut,vGroup,vMemo,vCode));
				}catch(Exception ex){
					Response.Output.Write(pM.Alert("数据存储失败！"));
				}
			}
			Response.Output.Write(pM.S_Group_rpt(ThePer,TheAlign,TheHeadStr));
			Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
		}else{
			string str="对不起！该功能仅授权给门户维护员,或页面已过期！";
			Response.Output.Write(pM.pageRedirect(str));
		}
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message);
	}
}
</script>
<FONT face="宋体"></FONT>
<script language="javascript">
<!--
document.body.onselectstart=new Function("return false;");
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='blue';}
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
	SubmitUserID(theID.value,theID.GroupCode,theID.GroupName,theID.Memo,theID.flag);
	}
else{
    eval(PivID+".style.backgroundColor='"+PivColor+"';");
    eval(PivID+".style.color='"+PivFontColor+"';");
    document.all.PSTemp.PivColor=theID.style.backgroundColor;
    document.all.PSTemp.PivFontColor=theID.style.color
    document.all.PSTemp.ValueID=theID.id;
    theID.style.backgroundColor=vColor;
    theID.style.color="white";
	SubmitUserID(theID.value,theID.GroupCode,theID.GroupName,theID.Memo,theID.flag);
	}
}

function SubmitUserID(value,GroupCode,GroupName,Memo,flag){
   parent.document.all.bntDel.disabled=(flag=='1'?true:false);   
   parent.document.all.btnSave.disabled=(flag=='1'?true:false);   
   parent.document.all.hidcode.value=value;
   parent.document.all.txtName.value=GroupName;
   parent.document.all.txtMemo.value=Memo;
}
//-->
</script>
