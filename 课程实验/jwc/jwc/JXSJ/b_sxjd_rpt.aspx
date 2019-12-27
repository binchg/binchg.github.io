<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="提交实习基地",save="",del="",vDM="",vMC="",vDZ="",vLXR="",vTel="",vYB="",vTax="",vJLSJ="",vYX="",vJDLB="",vLXBM="",vDZYX="";
	string[] ThePer=new string[]{"4%","16%","10%","7%","7%","7%","7%","7%","12%","7%","7%","11%"};
	string[] TheAlign=new string[]{"center","left","left","left","right","right","center","center","LEFT","left","left","left"};
	string[] TheHeadStr=new string[]{"序号","名称","地址","联系人","电话","邮编","传真","建立日期","所属院(系)/部","基地类别","联系部门","电子邮箱"};
	//Request-Data
	try{ save=Request["save"].ToString().Trim();}catch(Exception){};
	try{ del=Request["del"].ToString().Trim();}catch(Exception){};
	
	try{ vDM=Request.Form["vdm"].ToString().Trim();}catch(Exception){};
	try{ vMC=Request.Form["vmc"].ToString().Trim();}catch(Exception){};
	try{ vDZ=Request.Form["vdz"].ToString().Trim();}catch(Exception){};
	try{ vLXR=Request.Form["vlxr"].ToString().Trim();}catch(Exception){};
	try{ vTel=Request.Form["vtel"].ToString().Trim();}catch(Exception){};
	try{ vYB=Request.Form["vyb"].ToString().Trim();}catch(Exception){};
	try{ vTax=Request.Form["vtax"].ToString().Trim();}catch(Exception){};
	try{ vJLSJ=Request.Form["vjlsj"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["vyx"].ToString().Trim();}catch(Exception){};
	try{ vJDLB=Request.Form["vjdlb"].ToString().Trim();}catch(Exception){};
	try{ vLXBM=Request.Form["vlxbm"].ToString().Trim();}catch(Exception){};
	try{ vDZYX=Request.Form["vdzyx"].ToString().Trim();}catch(Exception){};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"Styles_Rpt"));
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._sxjd_rpt(save,del,vDM,vMC,vDZ,vLXR,vTel,vYB,vTax,vJLSJ,vYX,vJDLB,vLXBM,vDZYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language='javascript'>
function SelectJD(vK,theID){
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
  parent.frmSXJD.location.href='setsxjd.aspx?id='+theID.value;
  parent.document.all.form1.del.disabled=false;
 }
</script>