<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTM_ID="",vZY_ID="",vTM="",vBZ="",vNRYQ="",save="";
	string[] ThePer=new string[]{"5%","25%","30%","40%"};
	string[] TheAlign=new string[]{"center","left","left","left"};
	string[] TheHeadStr=new string[]{"序号","题目","内容与提要","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	try{ vTM_ID=Request.Form["tm_id"].ToString().Trim();}catch(Exception){};
	try{ vZY_ID=Request.Form["sel_ZY"].ToString().Trim();}catch(Exception){};
	try{ vTM=Request.Form["tm"].ToString().Trim();}catch(Exception){};
	try{ vBZ=Request.Form["bz"].ToString().Trim();}catch(Exception){};
	try{ vNRYQ=Request.Form["nryq"].ToString().Trim();}catch(Exception){};
	
	try{ save=Request.Form["save"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._set_bjsj_rpt(save,vZY_ID,vTM_ID,vTM,vBZ,vNRYQ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language='javascript'>
function SelectTM(vK,theID){
var theURL;
if((chkC.value=='')&&(chkI.value=='')){
   chkC.value=eval(vK+".style.backgroundColor");
   chkC1.value=eval(vK+".style.color");
   chkI.value=vK;
   eval(vK+".style.backgroundColor='darkblue'");
   eval(vK+".style.color='white'");
  
}else{
   if(chkI.value!=vK){
       eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
	   eval(chkI.value+".style.color='"+chkC1.value+"'");
       chkI.value=vK;
       chkC.value=eval(vK+".style.backgroundColor");
       eval(vK+".style.backgroundColor='darkblue'");
	   eval(vK+".style.color='white'");
   }
}

parent.document.all.del.disabled=false;
parent.document.all.savesub.disabled=false;
parent.document.all.add.disabled=false;
parent.frmSXJD.location.href='setbjsj.aspx?tm_id='+theID.value+'&zy_id='+theID.zyid;
 }
</script>