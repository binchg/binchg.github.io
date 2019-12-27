<%@ Page Language="C#"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vNJ="",vCDDW="";
	string[] TheAlign=new string[]{"left","left","right"};
	string[] TheHeadStr=new string[]{"环节","环节类别","周次"};
	string[] ThePer=new string[]{"65%","20%","15%"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	try{ vNJ=Request.QueryString["nj"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.QueryString["cddw"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).Set_HJ_XZBJZC_Left_Rpt(vNJ,vCDDW,TheAlign,ThePer,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
<script language='javascript'>
function SelectHJ(vK,theID){
var theURL
if((chkC.value=='')&&(chkI.value=='')){
   chkC.value=eval(vK+".style.backgroundColor");
   chkC1.value=eval(vK+".style.color");
   chkI.value=vK;
   eval(vK+".style.backgroundColor='#89bfa7'");
   eval(vK+".style.color='white'");
   parent.document.all.form1.kcdm.value=theID.value;
  
}else{
   if(chkI.value!=vK){
       eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
	   eval(chkI.value+".style.color='"+chkC1.value+"'");
       chkI.value=vK;
       chkC.value=eval(vK+".style.backgroundColor");
       eval(vK+".style.backgroundColor='#89bfa7'");
	   eval(vK+".style.color='white'");

	   parent.document.all.form1.kcdm.value=theID.value;
	  
   }
}

 //alert(theID.value);
 theURL='set_hj_xzbjzc_right.aspx?kcdm='+theID.value+'&flag='+parent.document.all.form1.sel_flag.value+'&nj='+parent.document.all.form1.sel_nj.value;
// alert(theURL);
 parent.rightfrm.location.href=theURL;
 }
</script>
