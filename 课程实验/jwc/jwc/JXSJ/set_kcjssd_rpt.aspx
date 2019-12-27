<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="KingosoftFrame"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	KingosoftFrame.BasePage myPage=new BasePage();
	myPage.InitPage(true);
	string vCDDW="",vFlag="",vXNXQ="";
	string [] ThePer=new string[]{"5%","30%","5%","5%","15%","20%","20%"};
	string [] TheAlign=new string[]{"center","left","right","right","left","left","left"};
	string [] TheHeadStr=new string[]{"序号","环节","学分","周数","指导教师","院(系)/部/处室","系(教研室)/研究所(室)<br>/实验室/科室"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","Styles_Rpt"));	
	try{ vCDDW=Request["sel_cddw"].ToString().Trim();}catch(Exception){};
	if(vCDDW==""){ 
		vCDDW=(new BLL.JXJH.private_JXJH()).SetValue("CDDW_ID",myPage.CUR_UserInfo.USER_OptDW);		//获得角色对应的承担单位或院系部
	}else{
		vCDDW="_"+Request["sel_cddw"].ToString().Trim()+"_";
		//Response.Write(vCDDW);
	}	
	try{ vFlag=Request["flag"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request["vxnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).Set_KCKS_Rpt(vFlag,vXNXQ,vCDDW,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="javascript">
function op(vK,vKCMC,vKCID,vYQDRS,vDDRS,vCDDW,vJSID,vUSERKCID)
{
	if((chkC.value=='')&&(chkI.value=='')){
		chkC.value=eval(vK+".style.backgroundColor");
		chkC1.value=eval(vK+".style.color");
		chkI.value=vK;
		eval(vK+".style.backgroundColor='#89bfa7'");
		eval(vK+".style.color='white'");
	}else{
	if(chkI.value!=vK){
		eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
		eval(chkI.value+".style.color='"+chkC1.value+"'");
		chkI.value=vK;
		chkC.value=eval(vK+".style.backgroundColor");
		eval(vK+".style.backgroundColor='#89bfa7'");
		eval(vK+".style.color='white'");		  
	}
}
   parent.document.all.theKC.innerHTML='<td id=theKC colspan=2>环节:['+vUSERKCID+']'+vKCMC+'</td>'   //课程代码和名称
   parent.document.all.theDQDRS.value=vDDRS;         //待定教师人数
   parent.document.all.theYQDRS.value=vYQDRS;        //已确定教师人数
   parent.document.all.kcdm.value=vKCID;
   parent.document.all.kccddw.value=vCDDW;
   parent.document.all.jsid.value=vJSID;
   parent.document.all.sel_ssbm.value=vCDDW;
   parent.document.all.yqdjsrs.value=vYQDRS;  
   parent.Form1.method='post';
   parent.Form1.action='set_jsxx.aspx';
   parent.Form1.submit();
}
</script>
