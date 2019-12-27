<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>

<script language="C#" runat="server">

private void Page_Load(object sender,System.EventArgs e)
{
	string vCDDW="",vNJ="",vKCDM="",R="",vBJDM="",vZC="",detailzc="",action="";
	string[] ThePer=new string[]{"30%","10%","10%","10%", "20%","10%","10%"};
	string[] TheAlign=new string[]{"left","left","right","right","left","right","right"};
    string[] TheHeadStr=new string[]{"环节","环节类别","学分","周数","行政班级","人数","周次"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","Styles_Rpt"));
	
	//Request-Data
	try{ action=Request.QueryString["action"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request.Form["sel_nj"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vBJDM=Request.QueryString["bjdm"].ToString().Trim();}catch(Exception){};
	try{ R=Request.QueryString["r"].ToString().Trim();}catch(Exception){};
	if(R!=""){
		vBJDM="";
		int k=int.Parse(R);
		for(int i=1;i<=k;i++){
			try{vBJDM+=Request.Form["bjdm"+i.ToString()].ToString().Trim()+"|";}catch(Exception){};
			try{vZC+=Request.Form["dzc"+i.ToString()].ToString().Trim()+"|";}catch(Exception){};
			try{detailzc+=Request.Form["detailzc"+i.ToString()].ToString().Trim()+"|";}catch(Exception){};
		}
	}
	
	try{
	  Response.Output.Write((new BLL_jxsj(this)).Set_HJ_XZBJZC_Rpt(action,vKCDM,vBJDM,vCDDW,vZC,vNJ,detailzc,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language='javascript'>
function SelectHJ(vK,theID){
var theURL;
if((chkC.value=='')&&(chkI.value=='')){
   chkC.value=eval(vK+".style.backgroundColor");
   chkC1.value=eval(vK+".style.color");
   chkI.value=vK;
   eval(vK+".style.backgroundColor='darkblue'");
   eval(vK+".style.color='white'");
   parent.document.all.form1.del.disabled=false;
   parent.document.all.form1.kcdm.value=theID.kcdm;
   parent.document.all.form1.bjdm.value=theID.bjdm;
  
}else{
   if(chkI.value!=vK){
       eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
	   eval(chkI.value+".style.color='"+chkC1.value+"'");
       chkI.value=vK;
       chkC.value=eval(vK+".style.backgroundColor");
       eval(vK+".style.backgroundColor='darkblue'");
	   eval(vK+".style.color='white'");
	   parent.document.all.form1.del.disabled=false;
	   parent.document.all.form1.kcdm.value=theID.kcdm;
	   parent.document.all.form1.bjdm.value=theID.bjdm;
	  
   }
}  
   theURL='set_hj_xzbjzc_right.aspx?kcdm='+theID.kcdm+'&bjdm='+theID.bjdm+'&flag='+parent.document.all.form1.sel_flag.value+'&nj='+parent.document.all.form1.sel_nj.value;

   parent.rightfrm.location.href=theURL;
 }
</script>
