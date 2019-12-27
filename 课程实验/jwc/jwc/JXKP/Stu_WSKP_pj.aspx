<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Page %>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vLB="",vXNXQ="",vKCLX="",vKCLB="",vKCDM="",vJSDM="",USER_ID="",s="",vSKBJ="",vSKFS="";
string vPJLC="",vZJ_FLAG="",vDJDMstr="";
string vScoreAll="",vItemStr="";
string vXN="",vXQ="";
string schoolcode=(new BLL.include.ind_subPublic()).GetSchoolCode();


//*****************************************保存******************************************
try{vScoreAll=Request.Form["score"].ToString();}catch(Exception){vScoreAll="";}

if (vScoreAll!="")
{
	string vHTML="";
	bool sf_M;
	try{vKCDM=Request.QueryString["kc"].ToString();}catch(Exception){vKCDM="";}
	try{vJSDM=Request.QueryString["js"].ToString();}catch(Exception){vJSDM="";}
	try{vXN=Request.QueryString["xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.QueryString["xq"].ToString();}catch(Exception){vXQ="";}
	try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
	try{vKCLX=Request.QueryString["kclx"].ToString();}catch(Exception){vKCLX="";}
	try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
	try{vItemStr=Request.Form["item"].ToString();}catch(Exception){vItemStr="";}
	try{vPJLC=Request.Form["txtPJLC"].ToString();}catch(Exception){vPJLC="";}
	try{vZJ_FLAG=Request.Form["txtZJ"].ToString();}catch(Exception){vZJ_FLAG="";}
	try{vDJDMstr=Request.Form["djdm"].ToString();}catch(Exception){vDJDMstr="";}
	try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
	try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}	
	try{vSKBJ=Request.Form["txtSKBJ"].ToString();}catch(Exception){vSKBJ="";}
	try{vSKFS=Request.Form["txtSKFS"].ToString();}catch(Exception){vSKFS="";}
	
	if(schoolcode=="10760")		//新疆医科大学需求
		sf_M=pSub.SaveValueWSKPXSP(vXN,vXQ,vJSDM,vKCDM,USER_ID,vScoreAll,vItemStr,vDJDMstr,vZJ_FLAG,vPJLC,vSKBJ,vSKFS);
	else
		sf_M=pSub.SaveValueWSKPXSP(vXN,vXQ,vJSDM,vKCDM,USER_ID,vScoreAll,vItemStr,vDJDMstr,vZJ_FLAG,vPJLC);
	vHTML=vHTML+"<a  href=javascript:void(0) onclick=MM_openBrWindow(\"KPJG.aspx?xn="+vXN+"&xq="+vXQ+"&xh="+USER_ID+"&kcdm="+vKCDM+"&jsdm="+vJSDM+"&lb="+vLB+"&kclb="+vKCLB+"&zj_flag="+vZJ_FLAG+"&pjlc="+vPJLC+"&kclx="+vKCLX+"\",\"winKPT\",\"width=450,height=490,scrollbars=yes\"); title=查看评分>查看</a>";
	Response.Output.Write ("<script language=javascript>opener.document.all.pj"+s+".innerHTML='"+vHTML+"';top.close();</script>");
	Response.End();
	
}
//*****************************************end******************************************

try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLX=Request.QueryString["kclx"].ToString();}catch(Exception){vKCLX="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
try{vKCDM=Request.QueryString["kcdm"].ToString();}catch(Exception){vKCDM="";}
try{vJSDM=Request.QueryString["jsdm"].ToString();}catch(Exception){vJSDM="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vZJ_FLAG=Request.QueryString["zj_flag"].ToString();}catch(Exception){vZJ_FLAG="";}
try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
try{vSKBJ=Request.QueryString["skbj"].ToString();}catch(Exception){vSKBJ="";}
try{vSKFS=Request.QueryString["skfs"].ToString();}catch(Exception){vSKFS="";}
vXN=PubObj.Left(vXNXQ,4);
vXQ=PubObj.Right(vXNXQ,1);

if(vKCLX=="")
{
	Response.Redirect ("../_help/Sorry.aspx?str=该课程/环节尚未设置类别！");
}
Response.Output.Write (PubObj.HtmlHear("提交教学评价表"));
%>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" height="50px" >
<tr><td valign="top" align="center">   
	  <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center"  height="26">
        	<tr><td valign="bottom" align="center"><b>提交教学评价表</b><br>
			<script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
      </table>
</td></tr>
<tr><td width="100%"> 
<form name=form1 action=Stu_WSKP_pj.aspx method=post>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
<%

R=pSub.GetTableWSKPXSP_PJ(vXNXQ,vKCLX,vLB,vKCLB);
if(R==0)
{
	Response.Redirect ("../_help/Sorry.aspx?str=该类课程/环节尚未设置评价指标！");
}
else
{
	if(schoolcode=="12735")						//铁道警官高等专科学校
	{
		try{Response.Output.Write (pSub.DrawRptMainWSKPXSP_PJ_12735(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB));
		}catch(Exception){}
	}
	else if(schoolcode=="10760")				//新疆医科大学
	{	
		try{Response.Output.Write (pSub.DrawRptMainWSKPXSP_PJ_10760(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB));
		}catch(Exception){}
	}
	else
	{
		try{Response.Output.Write (pSub.DrawRptMainWSKPXSP_PJ(vXNXQ,vLB,vKCDM,vJSDM,vKCLX,USER_ID,s,vKCLB));
		}catch(Exception){}
	}
}

%>
	<input name="txtjs" type="hidden" size="1" value="<%=vJSDM%>">
	<input name="txtkc" type="hidden" size="1" value="<%=vKCDM%>">
	<input name="txtuser" type="hidden" size="1" value="<%=USER_ID%>">
	<input name="txtxn" type="hidden" size="1" value="<%=vXN%>">
	<input name="txtxq" type="hidden" size="1" value="<%=vXQ%>">
	<input name="txtkclx" type="hidden" size="1" value="<%=vKCLX%>">
	<input name="txtlb" type="hidden" size="1" value="<%=vLB%>">
	<input name="score" type="hidden" size="1" value="">
	<input name="item" type="hidden" size="1" value="">
	<input name="djdm" type="hidden" size="1" value="">
	<!--input name="cj" type="hidden" size="1" value=""-->
  	<input type="hidden" name="txts" value=<%=s%>>
  	<input name="txtkclb" type="hidden" size="1" value="<%=vKCLB%>">
  	<input name="txtPJLC" type="hidden" value="<%=vPJLC%>">
  	<input name="txtZJ" type="hidden" value="<%=vZJ_FLAG%>">
  	<input id="txtSKBJ" name="txtSKBJ" type="hidden" value="<%=vSKBJ%>">
  	<input id="txtSKFS" name="txtSKFS" type="hidden" value="<%=vSKFS%>">
  	</form>	
<%
Response.Output.Write (PubObj.HtmlTrail());
%>
<script language="JavaScript" type="text/JavaScript"> 
function go(){
	var m_c,m_score,m_item,m_djdm,m_scoreall,m_itemreall,m_djdmreall;
	var m_js,m_kc,m_b,m_user;
	var m_kclx,m_pjry,m_s;
	var m_lb;
	m_b=true;
	m_scoreall="";
	m_itemreall="";
	m_djdmreall="";
	m_c=form1.txt_count.value;
	//alert(m_c);
	m_js=form1.txtjs.value;
	m_kc=form1.txtkc.value;
	m_xn=form1.txtxn.value;
	m_xq=form1.txtxq.value;
	m_kclx=form1.txtkclx.value;
	m_pjry=form1.txtlb.value;
	m_user=form1.txtuser.value;
	m_s=form1.txts.value;
	m_lb=form1.txtlb.value;
	m_kclb=form1.txtkclb.value;
	if(m_js==""){
		alert("需选定教师！");
	}
	else{
		for(k=0;k<m_c;k++){
			m_score=eval("document.all.sel_score"+k+".value");
			m_item=eval("document.all.sel_score"+k+".item");
			m_djdm=eval("document.all.sel_score"+k+".djdm");
			
			if(m_score=="")
			{
				m_b=false;
			}
			else
			{
				m_scoreall=m_scoreall + m_score+"|";
				m_itemreall=m_itemreall+m_item+"|";
				m_djdmreall=m_djdmreall+m_djdm+"|";
			}
		}
	}
	if(m_b==true){
		//alert("请打分时,尽量不要选择同一选项！");
		if (confirm('请确认评价结果,是否要提交?'))
		{
			document.all.score.value=m_scoreall;
			document.all.item.value=m_itemreall;
			document.all.djdm.value=m_djdmreall;
			form1.action='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&kclb='+m_kclb;
			document.all.Submit.disabled=true;
			form1.submit();
			//document.location.href='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&score=' +m_scoreall+'&item='+m_itemreall;
		}
	}
	else
	{
		//alert("请打分时,尽量不要选择同一选项！");
		alert("需给每一项打分！");
	}	
}

function go_12735(){		//铁道警官高等专科学校需求、新疆医科大学需求
	var m_c,m_score,m_item,m_djdm,m_scoreall,m_itemreall,m_djdmreall,m_score_text,m_score_textall;
	var m_js,m_kc,m_b,m_user;
	var m_kclx,m_pjry,m_s;
	var m_lb;
	m_b=true;
	m_scoreall="";
	m_itemreall="";
	m_djdmreall="";
	m_c=form1.txt_count.value;
	//alert(m_c);
	m_js=form1.txtjs.value;
	m_kc=form1.txtkc.value;
	m_xn=form1.txtxn.value;
	m_xq=form1.txtxq.value;
	m_kclx=form1.txtkclx.value;
	m_pjry=form1.txtlb.value;
	m_user=form1.txtuser.value;
	m_s=form1.txts.value;
	m_lb=form1.txtlb.value;
	m_kclb=form1.txtkclb.value;
	//alert(document.body.innerHTML);
	if(m_js==""){
		alert("需选定教师！");
	}
	else{
		for(k=0;k<m_c;k++){
			try{m_score=eval("document.all.sel_score"+k+".value");}catch(Exception){m_score="";}			
			try{m_score_text=eval("document.all.sel_scorecj"+k+".value");}catch(Exception){m_score_text="";}
			m_item=eval("document.all.sel_score"+k+".item");
			m_djdm=eval("document.all.sel_score"+k+".djdm");
			
			if(m_score=="" && m_score_text=="")
			{
				m_b=false;
			}
			else
			{
				m_scoreall=m_scoreall+ m_score+m_score_text+"|";
				m_itemreall=m_itemreall+m_item+"|";
				m_djdmreall=m_djdmreall+m_djdm+"|";
				//alert(m_scoreall);
				//alert(m_itemreall);
				//alert(m_djdmreall);
			}
		}
	}
	if(m_b==true){
		//alert("请打分时,尽量不要选择同一选项！");
		if (confirm('请确认评价结果,是否要提交?'))
		{
			document.all.score.value=m_scoreall;
			document.all.item.value=m_itemreall;
			document.all.djdm.value=m_djdmreall;
			form1.action='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&kclb='+m_kclb;
			document.all.Submit.disabled=true;
			form1.submit();
			//document.location.href='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&score=' +m_scoreall+'&item='+m_itemreall;
		}
	}
	else
	{
		//alert("请打分时,尽量不要选择同一选项！");
		alert("需给每一项打分！");
	}	
}

function go_10643(){		//重庆三峡需求
	var m_c,m_score,m_item,m_djdm,m_scoreall,m_itemreall,m_djdmreall,m_score_text;
	var m_js,m_kc,m_b,m_user;
	var m_kclx,m_pjry,m_s;
	var m_lb;
	m_b=true;
	m_scoreall="";
	m_itemreall="";
	m_djdmreall="";
	m_c=form1.txt_count.value;
	m_js=form1.txtjs.value;
	m_kc=form1.txtkc.value;
	m_xn=form1.txtxn.value;
	m_xq=form1.txtxq.value;
	m_kclx=form1.txtkclx.value;
	m_pjry=form1.txtlb.value;
	m_user=form1.txtuser.value;
	m_s=form1.txts.value;
	m_lb=form1.txtlb.value;
	m_kclb=form1.txtkclb.value;
	if(m_js==""){
		alert("需选定教师！");
	}
	else{
		for(k=0;k<m_c;k++){
			m_score=eval("document.all.sel_score"+k+".value");			
			m_item=eval("document.all.sel_score"+k+".item");
			m_djdm=eval("document.all.sel_score"+k+".djdm");
			if(m_score=="")
			{
				m_b=false;				
			}
			else
			{
				m_scoreall=m_scoreall + m_score+"|";
				m_itemreall=m_itemreall+m_item+"|";
				m_djdmreall=m_djdmreall+m_djdm+"|";
			}
		}
	}
	if(m_b==true){
		alert("请打分时,尽量不要选择同一选项！");
		if (confirm('请确认评价结果,是否要提交?'))
		{
			document.all.score.value=m_scoreall;
			document.all.item.value=m_itemreall;
			document.all.djdm.value=m_djdmreall;
			form1.action='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&kclb='+m_kclb;
			document.all.Submit.disabled=true;
			form1.submit();
			//document.location.href='Stu_WSKP_pj.aspx?s='+ m_s +'&id=' + m_user + '&pjry=' + m_pjry + '&xn=' + m_xn + '&xq=' + m_xq +'&js=' + m_js +'&kclx=' + m_kclx + '&kc=' +m_kc +'&lb='+m_lb+'&score=' +m_scoreall+'&item='+m_itemreall;
		}
	}
	else
	{	
		alert("请打分时,尽量不要选择同一选项！");
		alert("需给每一项打分！");
	}	

}

function selchk(theID,m){
var i,j,s,objCJ;
eval("objCJ=document.all.chkCJ"+m);
s='';
j=objCJ.length;
for(i=0;i<=j;i++){
	if(objCJ(i).checked){
	if(s=='') {s=objCJ(i).value;}
	else {s+='$'+objCJ(i).value;}
	}
}
eval("document.all.sel_score"+m+".value=s")
}

function selrad(theID,m){
eval("document.all.sel_score"+m+".value=theID.value")
}

function Blur_me(upper,lower,i)
{
	var fs=document.all("sel_scorecj"+i).value;
	var reg=/^(\d{1,9})\.(\d{1})$/;	
	var r=fs.match(reg);
	if(fs>upper || fs<lower)
	{
		alert("输入的分数不正确，范围："+upper+"-"+lower+"之间!");
		document.all("sel_scorecj"+i).value="";				
		document.all("sel_scorecj"+i).focus();
	} 
	if(r==null)
	{		
		alert("格式不正确，小数点后只能有一位小数!");
		document.all("sel_scorecj"+i).value="";	
		document.all("sel_scorecj"+i).focus();
	}
}

</script>