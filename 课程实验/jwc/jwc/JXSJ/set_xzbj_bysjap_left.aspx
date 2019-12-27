<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vXNXQ="",vKCDM="",vZYDM="",vNJ="",vXSSTR="",vKTBH="",vDDJS="",vTIMEZC="",vSelzx="",vSelfx="";
	string[] ThePer=new string[]{"13%","35%","39%","13%"};
	string[] TheAlign=new string[]{"center","center","left","center"};
	string[] TheHeadStr=new string[]{"选定","学号","姓名","性别"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_rpt"));
	
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vZYDM=Request["zydm"].ToString().Trim();}catch(Exception){};
	try{ vNJ=Request["nj"].ToString().Trim();}catch(Exception){};
	try{ vSelzx=Request["selzx"].ToString().Trim();}catch(Exception){};
	try{ vSelfx=Request["selfx"].ToString().Trim();}catch(Exception){};
	
	try{ vXSSTR=Request["theval"].ToString().Trim();}catch(Exception){};
	try{ vKTBH=Request["sjtm"].ToString().Trim();}catch(Exception){};
	try{ vDDJS=Request["ddjs"].ToString().Trim();}catch(Exception){};
	try{ vTIMEZC=Request["timezc"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this))._xzbj_bysjap_left(vXNXQ,vKCDM,vZYDM,vNJ,vXSSTR,vKTBH,vDDJS,vTIMEZC,vSelzx,vSelfx,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
<script language="javascript">
	function sel_option(obj){
		var key;
		key=parseInt(document.all.theCount.innerHTML);
		if(obj.checked==true){
			key+=1;
		}else{
			key-=1;
			if(key<0) key=0;
		}
		document.all.theCount.innerHTML=key;
	}	
</script>
