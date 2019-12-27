<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.include.ind_subPublic GetV=new BLL.include.ind_subPublic();
BLL.JCGL.BLL_JCGL pSub=new BLL.JCGL.BLL_JCGL();
BLL.JCGL.BLL_subPrivate_JCGL SelObj=new BLL.JCGL.BLL_subPrivate_JCGL(this);
SelObj.DoorOnOff(this,"JC_XS_KC-JC");
string vXNXQ="";
vXNXQ=pSub.TimeAreaStuTJKCJC();
if (vXNXQ==""){Response.Redirect ("../_help/sorry.aspx?str=STOP_DOOR");} 
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function ChkValue(){
    var theURL,Num,radval,idval;
    idval="";
    Num=form1.count.value;
    for(j=1;j<=Num;j++){   
		if(eval("window.frmRpt.chk"+j+".checked")){idval='1'}else{idval='0'}
		idval1=eval("window.frmRpt.sel"+j+".value");
	  	if(j==1){radval=idval;radval1=idval1;}    
		else{radval=radval+";"+idval;radval1=radval1+";"+idval1;}
     	} 
    if(idval!=""){
     	if(confirm('是否保存记录？')){
    		theURL='Stu_TJ_KCJC_rpt.aspx?p=up&thePOST='+radval+'&theP0ST1='+radval1+'&xnxq='+form1.SelXN.value; 
			window.frmRpt.location.href=theURL;
    		return true;
    	}else{return false;}
   	}
}	
</script>
<title>提交课程→需要教材</title>
<base target=frmRpt>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center">
      <table width="660px" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交课程→需要教材</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

  <tr><td>
    <table width="660px" height="26px" border=0 align="center" cellpadding="0" cellspacing="0">
    <form name="form1" method="post" action="Stu_TJ_KCJC_rpt.asp" >
	  <tr   id=stylebutton > 
          <td width="35%" align="left">学年学期&nbsp;<select name="SelXN" style="width:165px"><option value=<%=vXNXQ%>><%=GetV.GetValue("XNXQ",vXNXQ)%></option></select></td>
          <td width="65%" align="right">
		  <input type="button" name="btn_search" value="提交" class=button disabled onClick="return ChkValue()" style="display:'';"></td>
     </tr>
	 <input type="hidden" name="count" value="">
    </form>
   </table>
</td></tr>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="Stu_TJ_KCJC_rpt.aspx?xnxq=<%=vXNXQ%>" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>