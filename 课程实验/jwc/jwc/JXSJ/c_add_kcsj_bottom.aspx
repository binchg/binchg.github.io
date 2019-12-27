<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Page language="C#"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vTitle="由承担单位提交课程设计→课程设计题目",vID="",vKTBH="",vKCID="";
	string[] ThePer=new string[]{"5%","25%","25%","45%"};
	string[] TheAlign=new string[]{"center","left","left","left"};
	string[] TheHeadStr=new string[]{"序号","题目","内容与要求","备注"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_Rpt"));
	Response.Output.Write("<iframe name=frmSXJD src='' style='width:0px;height=0px'></iframe>\n");
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{ vKTBH=Request["ktbh"].ToString().Trim();}catch(Exception){};
	try{ vKCID=Request["kcid"].ToString().Trim();}catch(Exception){};
	
	try{
	    Response.Output.Write((new BLL_jxsj(this))._add_kcsj_bottom_rpt(vID,vKTBH,vKCID,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language='javascript'>
function SelectTM(vK,theID){
	var theURL;
	if((chkA.value=='')&&(chkB.value=='')){
	chkA.value=eval(vK+".style.backgroundColor");
	chkA1.value=eval(vK+".style.color");
	chkB.value=vK;
	eval(vK+".style.backgroundColor='darkblue'");
	eval(vK+".style.color='white'");
	parent.document.all.form1.add.disabled=false;
		parent.document.all.form1.save.disabled=false;
		parent.document.all.form1.del.disabled=false;
	}else{
	if(chkB.value!=vK){
		eval(chkB.value+".style.backgroundColor='"+chkA.value+"'");
		eval(chkB.value+".style.color='"+chkA1.value+"'");
		chkB.value=vK;
		chkA.value=eval(vK+".style.backgroundColor");
		eval(vK+".style.backgroundColor='darkblue'");
		eval(vK+".style.color='white'");
		parent.document.all.form1.add.disabled=false;
		parent.document.all.form1.save.disabled=false;
		parent.document.all.form1.del.disabled=false;
	}
	}
	parent.topfrm.location.href="c_add_kcsj_top.aspx?ktbh="+theID.value+"&kcid="+theID.kcid;
}
</script>