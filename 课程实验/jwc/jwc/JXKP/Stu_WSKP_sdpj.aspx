<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page CodeBehind="Stu_WSKP_sdpj.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="KingosoftFrame.JXKP.Stu_WSKP_sdpj" %>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vLB="",vXNXQ="",vKCLX="",vKCDM="",vJSDM="",USER_ID="",s="",vKCLB="";
string vSubmit="",vCount="",vHTML="",vPJDJ="",vYJ="",vPJLC="",vZJ_FLAG="";
string vXN="",vXQ="",vNJ="";

try{vSubmit=Request.Form["Submit"].ToString();}catch(Exception){vSubmit="";}
//******************************************保存*************************************************
if (Request.ServerVariables["REQUEST_METHOD"] == "POST" )
{
	int i=1;
	try{vXN=Request.Form["txtxn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["txtxq"].ToString();}catch(Exception){vXQ="";}
	try{vJSDM=Request.Form["txtjs"].ToString();}catch(Exception){vJSDM="";}
	try{vKCDM=Request.Form["txtkc"].ToString();}catch(Exception){vKCDM="";}
	try{vKCLX=Request.Form["txtkclx"].ToString();}catch(Exception){vKCLX="";}
	try{vLB=Request.Form["txtlb"].ToString();}catch(Exception){vLB="";}
	try{USER_ID=Request.Form["txtid"].ToString();}catch(Exception){USER_ID="";}
	try{vCount=Request.Form["txt_count"].ToString();}catch(Exception){vCount="";}
	try{vKCLB=Request.Form["txtkclb"].ToString();}catch(Exception){vKCLB="";}
	try{s=Request.Form["txts"].ToString();}catch(Exception){s="";}
	try{vPJLC=Request.Form["txtpjlc"].ToString();}catch(Exception){vPJLC="";}
	try{vZJ_FLAG=Request.Form["txtZJ"].ToString();}catch(Exception){vZJ_FLAG="";}
	try{vNJ=Request.Form["txtNJ"].ToString();}catch(Exception){vNJ="";}
	try{vYJ=Request.Form["sel_yj"].ToString();}catch(Exception){vYJ="";}
	vYJ=PubObj.RequestSafeValue(vYJ);
	try{vPJDJ=Request.Form["txtsel_dm"].ToString();}catch(Exception){vPJDJ="";}	
	pSub.SaveValueWSKPXSP_SD(vXN+vXQ,USER_ID,vJSDM,vKCDM,vPJDJ,vYJ,vZJ_FLAG,vPJLC);		

	vHTML="<a  href=javascript:void(0) onclick=MM_openBrWindow(\"Stu_WSKP_sdpj.aspx?xnxq="+vXN+vXQ+"&s="+s+"&id="+USER_ID+"&kcdm="+vKCDM+"&jsdm="+vJSDM+"&kclx="+vKCLX+"&lb="+vLB+"&kclb="+vKCLB+"&pjlc="+vPJLC+"\",\"winKPT\",\"width=550,height=490,scrollbars=yes\") title=查看评分>查看</a>";
	Response.Output.Write ("<script language=javascript>opener.document.all.wj"+s+".innerHTML='"+vHTML+"';top.close();</script>");
	Response.End();
} 
//******************************************end***************************************************

try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLX=Request.QueryString["kclx"].ToString();}catch(Exception){vKCLX="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
try{vKCDM=Request.QueryString["kcdm"].ToString();}catch(Exception){vKCDM="";}
try{vJSDM=Request.QueryString["jsdm"].ToString();}catch(Exception){vJSDM="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vZJ_FLAG=Request.QueryString["zj_flag"].ToString();}catch(Exception){vZJ_FLAG="";}
try{vNJ=Request.QueryString["nj"].ToString();}catch(Exception){vNJ="";}
vXN=PubObj.Left(vXNXQ,4);
vXQ=PubObj.Right(vXNXQ,1);
if(vKCLX=="")
{
	Response.Redirect ("../_help/Sorry.aspx?str=该课程/环节尚未设置类别！");
}
Response.Output.Write (PubObj.HtmlHear("提交师德评价表","","Stu_WSKP_sdpj.aspx"));
%>

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" >
 <tr><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交师德评价表</b><br><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td > 
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0"><tr>
<input name="txtjs" type="hidden" value="<%=vJSDM%>">
<input name="txtkc" type="hidden" value="<%=vKCDM%>">
<input name="txtid" type="hidden" value="<%=USER_ID%>">
<input name="txtxn" type="hidden" value="<%=vXN%>">
<input name="txtxq" type="hidden" value="<%=vXQ%>">
<input name="txtkclx" type="hidden" value="<%=vKCLX%>">
<input name="txtlb" type="hidden" value="<%=vLB%>">
<input type="hidden" name="txts" value=<%=s%>>
<input name="txtZJ" type="hidden" value=<%=vZJ_FLAG%>>
<input name="txtkclb" type="hidden" value="<%=vKCLB%>">
<input name="txtpjlc" type=hidden value=<%=vPJLC%>>
<input name="txtNJ" type="hidden" value=<%=vNJ%>>
<input name="txtsel_dm" type=hidden >
<%
R=pSub.GetTableWSKPXSP_SD_PJ(vXNXQ);
if(R==0)
{
	Response.Redirect ("../_help/Sorry.aspx?str=该类课程/环节尚未设置师德评价题目！");
}
else
{
	try{Response.Output.Write (pSub.DrawRptMainWSKPXSP_SD_PJ(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB,vNJ,vPJLC));
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>

<script language="JavaScript" type="text/JavaScript">
function go(){	
	if(document.all.sel_yj.value.replace(' ','')==''){
		alert('须录入意见与建议！');
		return;
	}
	if(document.all.txtsel_dm.value=="")
	{
		alert('须录入评价等级！');
		return;
	}	
	form1.action='Stu_WSKP_sdpj.aspx?index='+form1.txts.value;
	if(form1.txtyl.value==1){
		if (confirm('是否修改意见与建议？')){form1.submit();}
		else{return;}
	}
	form1.submit();	
}
function Change(obj,n)
{
	//alert(obj.id);
	var num=parseInt(n);
	var cur=obj.value; //当前值 		
	for(i=0;i<num;i++)//控制只能选择其中的一个checkbox值
	{ 
	    var dm='sel_dm'+i.toString();
		if(dm!=obj.id)
		{
			document.all(dm).checked=false;
		}				
	}
	obj.checked=true;
	document.all.txtsel_dm.value=obj.value;	//被选中的评教等级的值
	//alert(document.all.txtsel_dm.value);
}
</script>



