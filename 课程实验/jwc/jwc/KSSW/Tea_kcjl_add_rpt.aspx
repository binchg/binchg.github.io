<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	BLL_kssw pSub=new BLL_kssw(this);
   string vKCDM="",vKSPC="",vKSDM="",vJSDM="",vTitle="提交考场记录";
   string xn="",xq="",ksdm="",pc="",kc="",jsdm="",ykrs="",skrs="",sjn01="",zzjjxs="",sjall="",sjn01jz="";
   string sjn015jz="",kcjl="",wbxs="",qkxs="",bz="",user_id="",kcdm="",vGX="0",actionFunction="";
   Response.Output.Write((new ind_subPublic()).page_Head_HTML(vTitle,"styles_rpt"));
   Response.Output.Write("<link rel=\"stylesheet\" href=\"./a.css\" type=\"text/css\">\n");
   
   //Rpt
	try{ vKCDM=Request.QueryString["kcdm"].ToString().Trim();}catch(Exception){};
	try{ vKSPC=Request.QueryString["kspc"].ToString().Trim();}catch(Exception){};
	try{ vKSDM=Request.QueryString["kscs"].ToString().Trim();}catch(Exception){};
	try{ vJSDM=Request.QueryString["jsdm"].ToString().Trim();}catch(Exception){};
   //saveform
	try{ xn=Request.Form["xn"].ToString().Trim();}catch(Exception){};
	try{ xq=Request.Form["xq"].ToString().Trim();}catch(Exception){};
	try{ ksdm=Request.Form["ksdm"].ToString().Trim();}catch(Exception){};
	try{ pc=Request.Form["pc"].ToString().Trim();}catch(Exception){};
	try{ kcdm=Request.Form["kcdm"].ToString().Trim();}catch(Exception){};
	
	try{ jsdm=Request.Form["jsdm"].ToString().Trim();}catch(Exception){};
	try{ ykrs=Request.Form["ykrs"].ToString().Trim();}catch(Exception){};
	try{ skrs=Request.Form["skrs"].ToString().Trim();}catch(Exception){};
	try{ sjn01=Request.Form["sjn01"].ToString().Trim();}catch(Exception){};
	try{ zzjjxs=Request.Form["zzjjxs"].ToString().Trim();}catch(Exception){};
	
	try{ sjall=Request.Form["sjall"].ToString().Trim();}catch(Exception){};
	try{ sjn01jz=Request.Form["sjn01jz"].ToString().Trim();}catch(Exception){};
	try{ sjn015jz=Request.Form["sjn015jz"].ToString().Trim();}catch(Exception){};
	try{ kcjl=Request.Form["kcjl"].ToString().Trim();}catch(Exception){};
	try{ wbxs=Request.Form["wbxs"].ToString().Trim();}catch(Exception){};
	
	try{ qkxs=Request.Form["qkxs"].ToString().Trim();}catch(Exception){};
	try{ bz=Request.Form["bz"].ToString().Trim();}catch(Exception){};
	try{ user_id=Request.Form["user_id"].ToString().Trim();}catch(Exception){};
	
	try{ vGX=Request.Form["GX"].ToString().Trim();}catch(Exception){};
	
	try{actionFunction=Request.ServerVariables["REQUEST_METHOD"].ToString().Trim();}catch(Exception){};
	try{
		Response.Output.Write((new BLL_kssw(this))._tea_kc_add_rpt(actionFunction,pSub.USER_ID,vGX,vKCDM,vKSPC,vKSDM,vJSDM,xn,xq,ksdm,pc,kcdm,jsdm,
		ykrs,skrs,sjn01,zzjjxs,sjall,sjn01jz,sjn015jz,kcjl,wbxs,qkxs,bz,user_id).ToString());
	}catch(Exception ex){}
   
   Response.Output.Write((new ind_subPublic()).page_Bottom_HTML());
}
</script>

<script language="JavaScript">
function ChkValue(theForm)
{
 var reg = /^(\d{1,4})\-(\d{1,2})\-(\d{1,2})$/;
 var r; 
 if (theForm.SKRS.value == ""  ||theForm.SKRS.value == 'nothing') 
    { alert('实考人数不能为空！')
      return false }
 if (theForm.SJNO1JZ.value == "" || theForm.SJNO1JZ.value == 'nothing') 
    { alert('考试1/2交卷人数不能为空！');
      return false }
 if (theForm.SJNO15JZ.value == "" || theForm.SJNO15JZ.value == 'nothing') 
    { alert('考试2/3交卷人数不能为空！');
      return false }	  
 if (theForm.SJALL.value == "" || theForm.SJNO1.value == "" || theForm.SJNO1.value == 'nothing' || theForm.SJALL.value == 'nothing') 
    { alert('全部交卷时间和第一个交卷的时间不能为空！');
      theForm.sksj.focus();
      return false }
 else
    {if(DateMsg.value!=""){alert(DateMsg.value);return false;}}

 if (theForm.SKRS.value != theForm.SKRS.value) 
    { alert('实考人数应输入数字！');
      theForm.SKRS.focus();
      return false }
 if (theForm.SJNO1JZ.value != theForm.SJNO1JZ.value) 
    { alert('考试1/2时间交卷人数应输入数字！');
      theForm.SJNO1JZ.focus();
      return false }
 if (theForm.SJNO15JZ.value != theForm.SJNO15JZ.value) 
    { alert('考试2/3交卷人数应输入数字！');
      theForm.SJNO15JZ.focus();
      return false }
 }
 </script>