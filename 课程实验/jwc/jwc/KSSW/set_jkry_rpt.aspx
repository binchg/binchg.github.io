<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vFLAG="",vVAL1="",vVAL2="",vTitle="提交课程→考场→监考人员";
	string[]ThePer=new string[]{"23%","30% ","13%","14%","7%","13%"};
	string[]TheAlign=new string[]{"left","left","center","left","center","left"};
	string[]TheHeadStr=new string[]{"院(系)/部/处室","系(教研室)/研究室/实验室/科室","工号","姓名","性别","职称"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vFLAG=Request.QueryString["flag"].ToString().Trim();}catch(Exception){};
	try{ vVAL1=Request.QueryString["theval1"].ToString().Trim();}catch(Exception){};
	try{ vVAL2=Request.QueryString["theval2"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._setJkry_rpt(vFLAG,vVAL1,vVAL2,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language=javascript>
function SelTea(vK,jsid,jsssdw,jsxm)
{
  try{
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
	  parent.document.all.jsid.value=jsid;
	  parent.document.all.jsssdw.value=jsssdw;
	  parent.document.all.jsxm.value=jsxm;
  }catch(e){}  
}
</script>