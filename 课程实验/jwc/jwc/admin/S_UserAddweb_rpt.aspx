<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vYX="",vXM="",vSTR="",but="";
	string[] ThePer=new string[]{"10%","40%","50%"};
	string[] TheAlign=new string[]{"center","",""};
	string[] TheHeadStr=new string[]{"选定","工号","姓名"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML("","styles_Rpt"));
	
		//addSub
	try{ vSTR=Request["str"].ToString().Trim();}catch(Exception){};
	try{ but=Request["button"].ToString().Trim();}catch(Exception){};
	try{ vYX=Request.Form["sel_yx"].ToString().Trim();}catch(Exception){};
	try{ vXM=Request.Form["txt_xm"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new purviewManage(this)).s_userAddWeb_right_rpt(but,vSTR,vYX,vXM,ThePer,TheAlign,TheHeadStr));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message.ToString());
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<FONT face="宋体"></FONT>
<script language="JavaScript">
function ChkALL(theObj){
var i,iR;
try{iR=window.TheTable.rows.length-2;}catch(err){iR=0;}
if(iR<1) return false;

if(iR>1000) window.status="正在进行全选处理……请稍等片刻";
if(theObj.title=='全选'){
theObj.title='撤销全选';
theObj.src='../images/button/rc/ChkAll_2.gif';
for(i=1;i<=iR;i++) if(!eval("document.all.Chk"+i+".disabled")) eval("document.all.Chk"+i+".checked=true"); 
}else{
theObj.title='全选';
theObj.src='../images/button/rc/ChkAll_1.gif';
for (i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=false");  
}
window.status=""
}
</script>
