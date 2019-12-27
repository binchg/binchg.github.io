<%@ Import NameSpace="BLL.KSSW"%>
<%@ Import NameSpace="BLL.include"%>

<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	string vCS="",vPC="",vKCDM="",vJSDM="",vZL="",vGrpCode="",vGrpCodeYX="",vTitle="考生名册";
	
	string[] ThePer=new string[]{"10%","25%","30%","15%","20%"};
	string[] TheAlign=new string[]{"center","center","","center","right"};
	string[] TheHeadStr=new string[]{"","学号","姓名","性别","座位号"};
	
	Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
	try{ vCS=Request.QueryString["cs"].ToString().Trim();}catch(Exception){};
	try{ vPC=Request.QueryString["pc"].ToString().Trim();}catch(Exception){};
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vJSDM=Request.QueryString["jsdm"].ToString().Trim();}catch(Exception){};
	try{ vZL=Request.QueryString["zl"].ToString().Trim();}catch(Exception){};
	
	try{ vGrpCode=Request.QueryString["id"].ToString().Trim();}catch(Exception){};
	try{ vGrpCodeYX=Request.QueryString["vDM"].ToString().Trim();}catch(Exception){};
	
	try{
		Response.Output.Write((new BLL_kssw(this))._INFO_KSMC_Rpt(vCS,vPC,vKCDM,vJSDM,vZL,vGrpCode,vGrpCodeYX,ThePer,TheAlign,TheHeadStr).ToString());
	}catch(Exception ex){}
	
	Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>
<script language="JavaScript">
function getval(){
var i,R,str,vZL;
var n=0;//记录人数
str='';
try{R=document.all.count.value;vZL=document.all.ZL.value;}
catch(e){R=0;}

for(i=1;i<=R;i++)
  { 
   if(eval("document.all.Chk"+i+".checked")==true)
	   {if(str=='')
	       {str=eval("document.all.Chk"+i+".value");n++;}
		else
		   {if (vZL==3){alert("最早交卷学生只能选择一个！"); return false;}
			str=str+','+eval("document.all.Chk"+i+".value");n++;}
	   }  
  }
 //if (confirm('你已选定了'+str+'.\n单击返回按钮即可!')){	
 if (vZL==1){opener.document.all.wbxs.value=str;}
 if (vZL==2){
		opener.document.all.qkxs.value=str;
		opener.document.all.qkrs.value=n;
		opener.document.all.qkrs.onclick();
 }
 if (vZL==3){opener.document.all.zzjjxs.value=str;}
 window.close();return true; 
 //}
 //else
 //{return false;}
}

function rechk()
{
window.close();
}


</script>