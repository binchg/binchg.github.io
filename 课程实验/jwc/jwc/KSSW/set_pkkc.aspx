<%@ Import NameSpace="BLL.KSSW"%>
<%@ Page Language="C#" %>
<%
BLL.KSSW.BLL_kssw pSub=new BLL_kssw(this);
%>
<html>
<head>
<title>提交需安排考试课程</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function selchk(){main.form.submit();}

function direct()
{
  var strurl,strurl,xnxq,kslc,cddw;
  	sel_xnxq=document.all.sel_xnxq.value;	
	sel_lc=document.all.sel_lc.value;
	sel_cddw=document.all.sel_cddw.value;
	sel_kc=document.all.sel_kc.value;
  strurl='set_pkkc_rpt.aspx?sel_xnxq='+sel_xnxq+'&sel_lc='+sel_lc+'&sel_cddw='+sel_cddw+'&sel_kc='+sel_kc;
  window.main.location.href=strurl;   
 }
function saveall()
{
  var num,i=1,j=1,k,tabnum,tabid,kcdm,temp1,temp2,temp3,temp4,temp,chkval='',s=false,kscs,xnxq,strurl;
  try{
      num=window.document.all.num.value;
	  while(i<=num){
	  	tabid='tab'+j;
	    tabnum=eval("main.document.all."+tabid+".all.tags('tr').length");
		kcdm=eval("main.document.all."+tabid+".value");
		for(k=1;k<=tabnum;k++){
			chkval='';
			if(eval("main.document.all.chk"+kcdm+k+".checked")){
			    
				temp1=eval("main.document.all.selpc"+kcdm+k+".value");
				temp2=eval("main.document.all.selqssj"+kcdm+k+".value");
				temp3=eval("main.document.all.seljssj"+kcdm+k+".value");
				temp4=eval("main.document.all.selkssj"+kcdm+k+".value");
				temp5=eval("main.document.all.sel"+kcdm+k+".value");
				temp6=eval("main.document.all.selbj"+kcdm+k+".value");
				temp7=eval("main.document.all.bk"+kcdm+k+".value");
				chkval=kcdm+'@'+temp1+'@'+temp2+'@'+temp3+'@'+temp4+'@'+temp5+'@'+temp6+'@'+temp7;
			}
			if(chkval!=''){
				eval("main.document.all.save"+i+".value='"+chkval+"'");
				s=true;
			}else{
				eval("main.document.all.save"+i+".value='';");
			}
			i=i+1;
		}
		j=j+1;	
	  }			
  }
  catch(e){}
  if(s==true){
  	  strurl='set_pkkc_rpt.aspx?val='+num+'&val1='+form1.xnxq.value+'&val2='+form1.kscs.value;
	  main.form1.action=strurl;
	  main.form1.method='post';
	  main.form1.submit();
	  direct();
  }
}

function chgrq(theID)
{
  var strurl;
  strurl='set_pkkc_zz.aspx?val='+theID+'&val1='+form1.sel_ksrq.options[form1.sel_ksrq.selectedIndex].value;
  window.frm.location.href=strurl;
}

function SearchFun()
{
  var strurl,xnxq,kslc,cddw;
  try{
  	sel_xnxq=document.all.sel_xnxq.value;	
	sel_lc=document.all.sel_lc.value;
	sel_cddw=document.all.sel_cddw.value;
	sel_kc=document.all.sel_kc.value;
	strurl='set_pkkc_rpt.aspx?sel_xnxq='+sel_xnxq+'&sel_lc='+sel_lc+'&sel_cddw='+sel_cddw+'&sel_kc='+sel_kc;	
	//alert(strurl);
	window.main.location.href=strurl;
	
  }catch(e){}
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交需安排考试课程</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="" target="frm" >              
<tr  align="center"><td> 
<table width="660" align="center"  border="0" cellpadding="0" cellspacing="0">
<tr>
<%
try{   ind_subPrivate_KSSW ind_sp=new ind_subPrivate_KSSW();
		BLL_kssw kssw=new BLL_kssw(this); 
%>
<td valign="bottom" align="left"><%=ind_sp.SetValue("xnxqkslc","")%></td>
<td align="right">
<input type="button" name="search" value="检索" class=button onClick="SearchFun()">
<input type="button" name="save" value="保存" class=button onClick="saveall()"  disabled>
</td>
</tr>
<tr><td valign="bottom" align="left" ><%=ind_sp.SetValue("cddwkskc",pSub.USER_OPTDW)%></td>
<td><input type=radio name="sel_chk" id="sel_chk1" checked >上课班级<input type=radio name="sel_chk">行政班级</td>
</tr>
</table>
</td></tr>

<tr nowrap><td width="99%">
<table border="0" cellpadding="0" cellspacing="0" width="662" align="center"><tr nowrap>
<td >批次&nbsp;<input type=text name="sel_pc" maxlength="2" style="width:20;" value=1 onBlur="if(isNaN(this.value)){this.value=1;this.focus();}else{if(this.value<=0){this.value=1;this.focus();}}"></td>
<td>起始日期&nbsp;<select name="sel_ksrq" style="width:175;" onChange=chgrq('<%=kssw.setPkkc_getKSDM()%>')><%=kssw.setPkkc_SelRQStr(kssw.setPkkc_getKSDM())%></select></td>
<td id="rq">结束日期&nbsp;<select name="sel_jsrq" style="width:175;"><%=kssw.setPkkc_SelRQStr(kssw.setPkkc_getKSDM())%></select></td>
<td>考试时间&nbsp;<select name="sel_kscc" style="width:100;"><%=kssw.setPkkc_SelCCStr(kssw.setPkkc_getKSDM())%></select></td>
</tr></table>

</td></tr>
<input type="hidden" name="num" >
<input type="hidden" name="xnxq" value="<%=kssw.setPkkc_getXN()+kssw.setPkkc_getXQ()%>" >
<input type="hidden" name="kscs" value="<%=kssw.setPkkc_getKSDM()%>" >
<%}catch(Exception ex){Response.Output.Write("发生如下异常:"+ex.Message.ToString());}%>
<tr><td valign="top" align="center" height="5%"><DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frm src="" style='display:none;width:0;height:0' frameborder=0></iframe>
<iframe name=main src="set_pkkc_rpt.aspx" width=99% height=100% frameborder=0></iframe>
</form>
</td></tr> 
</table>

</body>
</html>