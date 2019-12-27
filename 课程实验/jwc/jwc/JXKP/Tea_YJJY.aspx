<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vLB="",vXNXQ="",vKCLX="",vKCDM="",vJSDM="",USER_ID="",s="",vKCLB="";
string vSubmit="",vCount="",vHTML="",vITEM_DM="",vYJ="",vFlag="";
string vXN="",vXQ="",vPJLC="",vZJ_FLAG="";

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
	try{vKCLB=Request.Form["txtkclb"].ToString();}catch(Exception){vKCLB="";}
	try{vLB=Request.Form["txtlb"].ToString();}catch(Exception){vLB="";}
	try{USER_ID=Request.Form["txtid"].ToString();}catch(Exception){USER_ID="";}
	try{vCount=Request.Form["txt_count"].ToString();}catch(Exception){vCount="";}
	try{s=Request.Form["txts"].ToString();}catch(Exception){s="";}
	try{vPJLC=Request.Form["txtpjlc"].ToString();}catch(Exception){vPJLC="";}
	try{vZJ_FLAG=Request.Form["txtZJ"].ToString();}catch(Exception){vZJ_FLAG="";}
	for(i=1;i<=int.Parse(vCount);i++)
	{
		try{vITEM_DM=Request.Form["sel_dm"+i].ToString();}catch(Exception){vITEM_DM="";}
		try{vYJ=Request.Form["sel_yj"+i].ToString();}catch(Exception){vYJ="";}
		vYJ=PubObj.RequestSafeValue(vYJ);
		pSub.SaveValueWSKPJSP_WJ(vXN,vXQ,USER_ID,vJSDM,vKCDM,vITEM_DM,vYJ,vLB,vZJ_FLAG,vPJLC);
	}
	vHTML="<a  href=javascript:void(0) onclick=MM_openBrWindow(\"Tea_YJJY.aspx?xnxq="+vXN+vXQ+"&s="+s+"&id="+USER_ID+"&kcdm="+vKCDM+"&jsdm="+vJSDM+"&kclx="+vKCLX+"&lb="+vLB+"&kclb="+vKCLB+"&zj_flag="+vZJ_FLAG+"&pjlc="+vPJLC+"\",\"winKPT\",\"width=550,height=490,scrollbars=yes\") title=查看评分>查看</a>";
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
vXN=PubObj.Left(vXNXQ,4);
vXQ=PubObj.Right(vXNXQ,1);
if(vKCLX=="")
{
	Response.Redirect ("../_help/Sorry.aspx?str=该课程/环节尚未设置类别！");
}
Response.Output.Write (PubObj.HtmlHear("提交问卷调查表","","Tea_YJJY.aspx"));

%>

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" >
 <tr><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交问卷调查表</b><br><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr><td > 
<input name="txtjs" type="hidden" value="<%=vJSDM%>">
<input name="txtkc" type="hidden" value="<%=vKCDM%>">
<input name="txtid" type="hidden" value="<%=USER_ID%>">
<input type="hidden" name="txts" value=<%=s%>>
<input name="txtxn" type="hidden" value="<%=vXN%>">
<input name="txtxq" type="hidden" value="<%=vXQ%>">
<input name="txtlb" type="hidden" value="<%=vLB%>">
<input name="txtkclx" type="hidden" value="<%=vKCLX%>">
<input name="txtkclb" type="hidden" value="<%=vKCLB%>">
<input name="txtpjlc" type=hidden value="<%=vPJLC%>">
<input name="txtZJ" type="hidden" value="<%=vZJ_FLAG%>">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0"><tr>
<%
try{R=pSub.GetTableWSKPJSP_WJ_PJ(vXNXQ,vKCLX,USER_ID,vJSDM,vKCDM,vLB,vKCLB,vPJLC);
}catch(Exception){}
if(R==0)
{
	Response.Redirect ("../_help/Sorry.aspx?str=该类课程/环节尚未设置问卷题目！");
}
else
{
	try{Response.Output.Write (pSub.DrawRptMainWSKPJSP_WJ_PJ(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB));
	}catch(Exception){}
}
Response.Output.Write (PubObj.HtmlTrail());
%>

<script language="JavaScript" type="text/JavaScript">
function go(){
	c=form1.txt_count.value;
	yjsum='';
	for (i=1;i<=c;i++){
		yjsum=yjsum+document.all('sel_yj'+i).value;
	}
	if(yjsum.replace(' ','')==''){
		alert('须录入意见与建议！');
		return;
	}
	
	form1.action='Tea_YJJY.aspx?index='+form1.txts.value;
	if(form1.txtyl.value==1){
		if (confirm('是否修改意见与建议？')){form1.submit();}
		else{return;}
	}
	form1.submit();
}
</script>


