<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="DAL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
 string vID="";
 try{ vID=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
 private_JXJH pJ=new private_JXJH(this);
 if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST")
 {
	string vFlag="",vTNJ="",vTKC="",vTZY="",vXNXQ="",vXN="",vXQ="";
	string vTCDDW="",vTKCLB1="",vTKCLB2="",vTKHFS="",vTJSXS="",vTSYXS="";
	string vTSJXS="",vTQTXS="",vTZXS="",Vmodtent="";
	try{ vFlag=Request.Form["radState"].ToString().Trim();}catch(Exception){}
	try{ vTNJ=Request.Form["nj"].ToString().Trim();}catch(Exception){}
	try{ vTKC=Request.Form["kcdm"].ToString().Trim();}catch(Exception){}
	try{ vTZY=Request.Form["zy"].ToString().Trim();}catch(Exception){}
	
	try{ vXNXQ=Request.Form["xnxq"].ToString().Trim();}catch(Exception){}
	
	try{ vTCDDW=Request.Form["sel_cddw"].ToString().Trim();}catch(Exception){}
	try{ vTKCLB1=Request.Form["kclb1"].ToString().Trim();}catch(Exception){}
	try{ vTKCLB2=Request.Form["kclb2"].ToString().Trim();}catch(Exception){}

	try{ vTKHFS=Request.Form["khfs"].ToString().Trim();}catch(Exception){}
	try{ vTJSXS=Request.Form["jsxs"].ToString().Trim();}catch(Exception){}
	try{ vTSYXS=Request.Form["syxs"].ToString().Trim();}catch(Exception){}
	try{ vTSJXS=Request.Form["sjxs"].ToString().Trim();}catch(Exception){}
	try{ vTQTXS=Request.Form["qtxs"].ToString().Trim();}catch(Exception){}
	try{ vTZXS=Request.Form["zzxs"].ToString().Trim();}catch(Exception){}
	try{ Vmodtent=Request.Form["Vmodtent"].ToString().Trim();}catch(Exception){}
	if(vXNXQ.Length>=4) vXN=vXNXQ.Substring(0,4);
	if(vXNXQ.Length>=5) vXQ=vXNXQ.Substring(4,1);
	
	string USER_dwid="";
	if(vFlag=="1")
	{
		try{
			(new CourseTache()).PROCW_JH_KKBG_KC_ADD("1",USER_dwid,Vmodtent,vTNJ,vTZY,vXN,vXQ,vTKC,vTKCLB1,vTKCLB2,vTKHFS,vTJSXS,vTSYXS,vTSJXS,vTQTXS,vTZXS,vTCDDW);
		}catch(Exception ex)
		{ Response.Output.Write(ex.Message.ToString());}
	}else
	{
		try{
			(new CourseTache()).PROCW_JH_KKBG_KC_ADD("0",USER_dwid,Vmodtent,vTNJ,vTZY,vXN,vXQ,vTKC,vTKCLB1,vTKCLB2,vTKHFS,vTJSXS,vTSYXS,vTSJXS,vTQTXS,vTZXS,vTCDDW);
		}catch(Exception ex)
		{ Response.Output.Write(ex.Message.ToString());}
	}
	Response.Output.Write(pJ.ScriptBolck("window.close()"));
 }
 Response.Output.Write(pJ.page_Head_HTML("课程变更操作","styles_Qry"));
 Response.Output.Write(pJ.page_KC_Html(vID));
 Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<script language="JavaScript">
function ChkValue(theForm){
 if(document.all.radState.state=='0'){
 if (theForm.sel_cddw.value == "") 
    {if(theForm.rbglx.value=="0"){
      alert('承担单位不能为空！')
      theForm.sel_cddw.focus();
      return false }}
   }
 if (confirm('你确信要继续吗?')) {
    //window.setInterval("Farbe()",10);
    return true;   
 }
  else {return false;}  
}
function Farbe(){window.close();}

function SelBe(theID){
var s=theID.value;//alert(s);
document.all.radState.value=s;
if(s=='0'){DisBG.style.visibility='';}
else{DisBG.style.visibility='hidden';}
}

function closewindow(){
   window.close();
   //opener.formform1.submit;

}
</script>

