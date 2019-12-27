<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.JCGL" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.JCGL.BLL_subPrivate_JCGL SelObj=new BLL.JCGL.BLL_subPrivate_JCGL(this);
//SelObj.DoorOnOff(this,"JC_FBJCXX");
%>
<html>
<head>
<title>查看教材使用情况</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function Selcx(theID)
{
  var s=theID.value;
  if(s=='2')
  {	
    disxn.style.display='';
	disxnxq.style.display='none';
    disnd.style.display='none';
  }
 else if(s=='1')
  {	
    disxn.style.display='none';
    disxnxq.style.display='';
    disnd.style.display='none';
  }
 else 
  {   
    disxn.style.display='none';
    disxnxq.style.display='none';
    disnd.style.display='';
  } 
}
</script>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >

<tr><td valign="top" align="center" colspan=2 height="5%">
       <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
           <tr><td valign="bottom" align="center"><b>查看教材使用情况</b></td></tr>
	       <tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
	    </table>   
</td></tr>

<form name="form1" method="post" action="Sys_CKJCSYQK_rpt.aspx" target="main" >              
<tr><td valign="top" align="center" height="26">
     <table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
			<tr>     					
                <td width=35% valign="bottom" align="left"  name="disxn" id="disxn" style="height=25px;width=300px;display:none_"  >学年&nbsp;
					<select name="SelXN" style="width:120px;">
					<%=SelObj.SetValue("JCGL_XN","")%></select></td>
                <td width=35%  valign="bottom" align="left"  name="disxnxq" id="disxnxq" style="height=25px;width=400px;display:none"  >学年学期&nbsp;
					<select name="SelXNXQ" style="width:165px;">
					<%=SelObj.SetValue("JCGL_XNXQ","")%></select></td>
				<td width=35%  valign="bottom" align="left"  name="disnd" id="disnd"  style="height=25px;width=200px;display:none" >年度&nbsp;
					<select name="SelND" style="width:120px;">
					<%=SelObj.SetValue("JCGL_ND","")%></select></td>
				<td width=65%  valign="bottom" align="right">
					<input type="radio" value="2" id="xnxq" name="xnxq" onclick="Selcx(this)" checked>学年
					<input type="radio" value="1" id="xnxq" name="xnxq" onclick="Selcx(this)">学期
					<input type="radio" value="0" id="xnxq" name="xnxq" onclick="Selcx(this)">年度
					&nbsp;&nbsp;
					<input type="radio" value="2" id="ckjs" name="ckjs"  >分出版年度
					<input type="radio" value="1" id="ckjs" name="ckjs" checked >分获奖等级
					&nbsp;&nbsp;
					<input type="submit" name="btn_search" value="检索" class=button>
				</td>
			</tr>
			</table>     
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%">
<DIV id=theHead style='display: none_;width:99%;'></DIV></td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Sys_CKJCSYQK_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr> 
</table>
</body>
</html>