<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page Language="C#"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vSZBM="",vCDDW="",vKCID="",vJSID="",vXNXQ="";
	string []ThePer=new string[]{"15%","25%","15%","25%","20%"};
	string []TheAlign=new string[]{"center","left","center","left","left"};
	string []TheHeadStr=new string[]{"选择","姓名","性别","职称","学历"};
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
	try{ vSZBM=Request["szbm"].ToString().Trim();}catch(Exception){};
	try{ vCDDW=Request["kccddw"].ToString().Trim();}catch(Exception){};
	try{ vKCID=Request["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vJSID=Request["jsid"].ToString().Trim();}catch(Exception){};
	try{ vXNXQ=Request["xnxq"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_jxsj(this)).Set_JSXX_Rpt(vSZBM,vCDDW,vKCID,vJSID,vXNXQ,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ec){
		Response.Output.Write(ec.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="JavaScript">
function selon(theID,num)
{
 if((parent.document.all.theYQDRS.value=='')||(parent.document.all.theYQDRS.value=='0'))
	{	rs=0;}
 else{rs=parseInt(parent.document.all.yqdjsrs.value);if(rs<0){rs=0;}}
 if(theID.checked==true){rs=rs+1;}
 else{rs=rs-1;}
 if(eval("document.all.chkKC"+num+".checked==true")){eval("document.all.radKC"+num+".value=theID.value");}
  parent.document.all.theYQDRS.value=rs; 
  parent.document.all.yqdjsrs.value=rs; 
}

</script>
