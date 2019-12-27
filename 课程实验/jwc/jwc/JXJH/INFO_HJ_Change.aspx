<%@Import NameSpace="BLL.JXJH"%>
<%@Import NameSpace="DAL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
string vZWMC="",vKC="",vCDDW="",vKCDM="",vNJ="",vXNXQ="",vZY="",vMODTENT="",vZS="",vHJLB="";
string vID="",vXN="",vXQ="",vTKC="",vFlag="",vTNJ="",vTXNXQ="",vTXN="",vTXQ="",vTZY="",vTCDDW="",vTZS="",Vmodtent="",vZXF="0";
//Request-Data
try{ vID=Request["id"].ToString().Trim();}catch(Exception){};
try{ vTKC=Request["kcdm"].ToString().Trim();}catch(Exception){};

if(vID.Length>=7) vKC=vID.Substring(0,6);
if(vID.Length>=11) vNJ=vID.Substring(6,4);
if(vID.Length>=16) vXNXQ=vID.Substring(10,5);
if(vXNXQ.Length>=4) vXN=vXNXQ.Substring(0,4);
if(vXNXQ.Length>=5) vXQ=vXNXQ.Substring(4);
if(vID.Length>=20) vZY=vID.Substring(15,4);
if(vID.Length>=1) vMODTENT=vID.Substring(vID.Length-1);
private_JXJH pJ=new private_JXJH(this);


try{
	string [] strArr=(new private_JXJH()).LIST_HJ_CHA("1",vNJ,vXNXQ,vZY,"",vKC);
	if(strArr.Length==0)
		Response.Output.Write("<center><h5 style='color:blue'>没有相关数据！</h5></center>");
	else{
		vKC=strArr[0];
		vZWMC=strArr[1];
		vCDDW=strArr[2];
		vZS=strArr[3];
		vKCDM=strArr[4];
	}
}catch(Exception ex){
	Response.Output.Write(ex.Message.ToString());
}
	
if(Request.ServerVariables["REQUEST_METHOD"].ToString().Trim()=="POST")
	{
		vFlag=Request.Form["radState"].ToString().Trim();
		vTKC=Request.Form["kcdm"].ToString().Trim();
		vTNJ=Request.Form["nj"].ToString().Trim();
		vTXNXQ=Request.Form["xnxq"].ToString().Trim();
		vTZY=Request.Form["zy"].ToString().Trim();
		vTCDDW=Request.Form["sel_cddw"].ToString().Trim();
		vTZS=Request.Form["zs"].ToString().Trim();
		Vmodtent=Request.Form["MODTENT"].ToString().Trim();
		if(vTXNXQ.Length>=4) vTXN=vTXNXQ.Substring(0,4);
		if(vTXNXQ.Length>=5) vTXQ=vTXNXQ.Substring(4);
		
		string USER_dwid="";
		if(vFlag=="1")//不开
		{
			try{
				(new CourseTache()).PROCW_JH_KKBG_HJ_ADD("1",USER_dwid,"''",vTNJ,vTZY,vTXN,vTXQ,vTKC,"","","");
			}catch(Exception ex){
				Response.Output.Write(ex.Message.ToString().Trim());
			}
		}else{
			try{
				(new CourseTache()).PROCW_JH_KKBG_HJ_ADD("0",USER_dwid,Vmodtent,vTNJ,vTZY,vTXN,vTXQ,vTKC,vHJLB,vTZS,vTCDDW);
			}catch(Exception ex){
				Response.Output.Write(ex.Message.ToString().Trim());
			}
		}
		Response.Output.Write(pJ.ScriptBolck("window.close()"));
 }
Response.Output.Write(pJ.page_Head_HTML("环节变更操作","styles_Qry"));
Response.Output.Write(pJ.page_HJ_Html(vZWMC,vKC,vCDDW,vZS,vKCDM,vNJ,vXNXQ,vZY,vMODTENT));
Response.Output.Write(pJ.page_Bottom_HTML());
}
</script>
<script language="C#" runat="server">

</script>

<script language="JavaScript">
function ChkValue(theForm){
 if (theForm.sel_cddw.value == "") 
    {if(theForm.rbglx.value=='0'){
       alert('承担单位不能为空！')
      theForm.sel_cddw.focus();
      return false }}
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
</script>    