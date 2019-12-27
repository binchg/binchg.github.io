<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<%
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vXNXQ="",vKC="",vJS="",USER_ID="",vSKDDStr="",s="";
string vPJLC="",vZJ_FLAG="",vLB="",vKCLB="";
string[] vPV=new string[8]{"","","","","","","",""};
try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vKC=Request.QueryString["kcdm"].ToString();}catch(Exception){vKC="";}
try{vJS=Request.QueryString["jsdm"].ToString();}catch(Exception){vJS="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vZJ_FLAG=Request.QueryString["zj_flag"].ToString();}catch(Exception){vZJ_FLAG="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
vPV=pSub.GetKC_BJ(vXNXQ,vJS,vKC,vKCLB);
vSKDDStr=pSub.WRT_theTKJLCS(vXNXQ,vJS,vKC,USER_ID,vLB,vPJLC);
%>
<html>
<head>
<title>查看听课记录</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>
<script language=javascript>
function selchk()
{
if (ChkValue()){
main.Form1.submit();}
}

function ChkValue()
{
  var r; 
 if (main.Form1.thesksj.value == "") 
    { alert('上课时间不能为空！');
      main.Form1.thesksj.focus();
      return false; }
 if (Number(main.Form1.ztrs.value) != main.Form1.ztrs.value) 
    { alert('学生早退人数应输入数字！');
      main.Form1.ztrs.focus();
     return false; 
	 }
 if (Number(main.Form1.cdrs.value) != main.Form1.cdrs.value) 
    { alert('学生迟到人数应输入数字！');
      main.Form1.cdrs.focus();
      return false ;}
return true;
 }
 </script>


<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<div align=center>
  <table width="99%" border=0 cellspacing="0" cellpadding="0" height="100%">
    <tr ><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看听课记录</b><br><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form" method="post" action="Tea_TKJL_view_rpt.aspx" target="main" >              
<tr  align="center"><td align="center"> 
<table width="100%" align="center">
<tr><td valign="bottom" align="left" >上课时间地点&nbsp;<select name=sel_sksj id=sel_sksj style="width:270px"><%=vSKDDStr%></select></td>
<td align="right">
<input type="submit" name="btn_search" value="检索" class=button >&nbsp;&nbsp;<input type="button" name="btn_search" value="保存" class=button  onclick='selchk()'>
<input type="hidden" name="kcdm" value="<%=vKC%>"><input type=hidden name="xnxq" value="<%=vXNXQ%>">
<input type="hidden" name="jsdm" value="<%=vJS%>"><input type="hidden" name="id" value=<%=USER_ID%>>
</td></tr>
</table>
</td></tr>
</form>

<tr ><td height=25px nowrap align=center>
<table width=100% BORDER=0 align=left CELLPADDING=0 CELLSPACING=0 bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
<tr align=center valign=middle >
 <td width="100%" height="20" colspan="4" align=left nowrap class=buttom><%=vPV[6]%></td>
</tr></table>
</td></tr> 

<tr><td valign="top" align="center" height="100%" width=100% class="T">
<iframe name=main src="Tea_TKJL_view_rpt.aspx" width=100% height=100% frameborder=0></iframe>
</td></tr> 
</table>
</div>
</body>
</html>
