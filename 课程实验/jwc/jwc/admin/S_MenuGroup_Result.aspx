<%@ Page Language="C#" %>
<%@Import NameSpace="BLL.admin"%>
<%@Import NameSpace="BLL.include"%>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vGrp="",vID="";

	Response.Output.Write((new ind_subPublic()).page_Head_HTML("菜单项→角色","styles_Rpt"));

	try{ vGrp=Request.QueryString["grp"].ToString().Trim();}catch(Exception){};
	try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new purviewManage(this)).MenuGroup_Result_rpt(vID,vGrp));
	}catch(Exception ex){
		Response.Output.Write("发生如下异常:"+ex.Message);
	}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="JavaScript">
function ChkALL(theObj){
var i,iR;
try{iR=window.TheTable.rows.length-1;}catch(err){iR=0;}
if(iR<1) return false;

if(iR>1000) window.status="正在进行全选处理……请稍等片刻";
if(theObj.title=='全选'){
theObj.title='撤销全选';
theObj.src='../images/button/rc/ChkAll_2.gif';
for(i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=true"); 
}else{
theObj.title='全选';
theObj.src='../images/button/rc/ChkAll_1.gif';
for (i=1;i<=iR;i++) eval("document.all.Chk"+i+".checked=false");  
}

window.status=""
}
</script>
