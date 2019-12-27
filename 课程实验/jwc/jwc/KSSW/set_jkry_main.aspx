<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vFLAG="",flag="",vXNXQ="",vKSLC="",vCDDW="",vKCID="",vTitle="提交课程→考场→监考人员";
	string[]ThePer=new string[]{"12%","4%","7%","7%","7%","7%","7%","7%","7%","7%","7%","7%","7%"};
	string[]TheAlign=new string[]{"left","right","center","center","center","center","center","center","center","center","center","center","center"};
	string[]TheHeadStr=new string[]{"考场","考试人数","主监考","辅监考一","辅监考二","辅监考三","辅监考四","辅监考五","辅监考六","辅监考七","辅监考八","辅监考九","辅监考十"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vFLAG=Request.QueryString["p"].ToString().Trim();}catch(Exception){};
	try{ flag=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKSLC=Request.QueryString["kslc"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request.QueryString["sel_cddw"].ToString().Trim();}catch(Exception){};
	try{ vKCID=Request.QueryString["sel_kc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setJkryMain(vFLAG,flag,vXNXQ,vKSLC,vCDDW,vKCID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language=javascript>
function seljs(vK,vKSKC,vJSDM,vPC,vNum,vKsrq,vKsc,theID)
{
  var theURL,jsid;
  try{	
	 if((chkC.value=='')&&(ID.value=='')){             //第一次双击输入框时初始化.
	   chkC.value=eval(vK+".style.backgroundColor");    //记录当前输入框的颜色
	   chkC1.value=eval(vK+".style.color");             //记录当前输入框字体颜色
	   ID.value=vK;                                
	   eval(vK+".style.backgroundColor='darkblue';");   //当前输入框的颜色变成深蓝
	   eval(vK+".style.color='white';");                //录当前输入框字体颜色变成白色
	 }else{                                             
	     if(ID.value!=vK){                             //是否双击同一输入框
		     eval(ID.value+".style.backgroundColor='"+chkC.value+"'");  //
			 eval(ID.value+".style.color='"+chkC1.value+"'"); 
			 ID.value=vK;
			 chkC1.value=eval(vK+".style.color");
			 chkC.value=eval(vK+".style.backgroundColor");
			 eval(vK+".style.backgroundColor='darkblue'");
			 eval(vK+".style.color='white'");
		  }
	 }
	 jsid=parent.document.all.jsid.value;
	 if(jsid!=''){parent.document.all.arrage.disabled=false;}
	 else{parent.document.all.arrage.disabled=true;}
	 parent.document.all.cancel.disabled=false;
	 parent.document.all.kskc.value=vKSKC;
	 parent.document.all.jsdm.value=vJSDM;
	 parent.document.all.pc.value=vPC;
	 parent.document.all.num.value=vNum;
	 parent.document.all.ksrq.value=vKsrq;
	 parent.document.all.ksc.value=vKsc;
	 parent.document.all.yapjs.value=theID;
   }catch(e){}
}
</script>