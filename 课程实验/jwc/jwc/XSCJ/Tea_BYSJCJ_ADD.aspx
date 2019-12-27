<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="CLL" %>
<%
BLL.XSCJ.BLL_CJLR GetN=new BLL_CJLR();
BLL.include.ind_subPublic GetV=new BLL.include.ind_subPublic();
string vXNXQ=GetN.GetXNXQ();
string vstr="";

BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_HJ_RRL");
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
string vXNXQstr="";
if(vXNXQ!="")vXNXQstr="学年学期："+GetV.GetValue("xnxq",vXNXQ);
vstr="分毕业年届按专业录入毕业设计(论文)成绩⑧";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<title>分行政班级按学生录入毕业设计成绩</title>
<base target=frmRpt>
</head>

<script language=vbscript>
Sub chkselect(theID)
if theID.checked then
  document.all.chkPSCJ.checked=false
  document.all.chkPSCJ.disabled=true
  document.all.chkQZCJ.checked=false
  document.all.chkQZCJ.disabled=true
  document.all.chkQMCJ.checked=false
  document.all.chkQMCJ.disabled=true
else
  document.all.chkPSCJ.checked=true
  document.all.chkPSCJ.disabled=false
  document.all.chkQZCJ.checked=true
  document.all.chkQZCJ.disabled=false
  document.all.chkQMCJ.checked=true
  document.all.chkQMCJ.disabled=false
end if
end sub

Sub SubmitDataOnclick()
    rs=cint(frmRpt.document.all("tabRows").value)
    allcj=""
    window.status="正在检查成绩录入情况……请稍后！"
    for ii= 1 to rs
		percj=""
		percj=percj&frmRpt.document.all("chkQMTSQKID"&ii).value
		if frmRpt.document.all("chkPSYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKPSCJ"&ii).value
		if frmRpt.document.all("chkQZYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQZCJ"&ii).value
		if frmRpt.document.all("chkQMYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQMCJ"&ii).value
		if frmRpt.document.all("chkZHYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKZHCJ"&ii).value
		allcj=allcj&percj
		if percj<>"" and frmRpt.document.all("chkQMTSQKID"&ii).value="" then
			if frmRpt.document.all("CHKPSCJ"&ii).value="" and frmRpt.document.all("chkPSYL"&ii).value="0" then
				msgbox "成绩没有提交完整!",64,"系统提示"
				window.status=""
				frmRpt.document.all("CHKPSCJ"&ii).focus()
				exit sub
			end if
			if frmRpt.document.all("CHKQZCJ"&ii).value="" and frmRpt.document.all("chkQZYL"&ii).value="0" then
				msgbox "成绩没有提交完整!",64,"系统提示"
				window.status=""
				frmRpt.document.all("CHKQZCJ"&ii).focus()
				exit sub
			end if
			if frmRpt.document.all("CHKQMCJ"&ii).value="" and frmRpt.document.all("chkQMYL"&ii).value="0" then
				msgbox "成绩没有提交完整!",64,"系统提示"
				window.status=""
				frmRpt.document.all("CHKQMCJ"&ii).focus()
				exit sub
			end if
			if frmRpt.document.all("CHKZHCJ"&ii).value="" and frmRpt.document.all("chkZHYL"&ii).value="0" then
				msgbox "成绩没有提交完整!",64,"系统提示"
				window.status=""
				frmRpt.document.all("CHKZHCJ"&ii).focus()
				exit sub
			end if
		end if
		'if allcj<>"" then exit for
    next
   window.status=""
 
 
    if allcj="" then
	msgbox "没有成绩可以提交!",64,"系统提示"
	exit sub
    end if
    If MsgBox("提交后的成绩将不能被修改！"&vbCrLf&vbCrLf&"你确信提交当前成绩吗？",vbYesNo+vbQuestion+vbDefaultButton2,"系统提示")=vbYes Then
	frmRpt.form1.submit
    End If
End Sub
</Script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b><%=vstr%></b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="Tea_BYSJCJ_ADD_rpt.aspx">
 <tr><td>
  <table width="660" border=0 align="center" cellpadding="0" cellspacing="0"  >
    <tr><td colspan=4>
      <table border=0 width="660" align="center" cellpadding="0" cellspacing="0">
	<%   
		 Response.Output.Write ("<tr><td height=25  id=bynjzy colspan=4 style='display:_none'>");
		 Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRJSBYSJNJZYKC",vXNXQ,USER_ID));
		 Response.Output.Write ("</td><td height=25  id=bynjzyfx colspan=4 style='display:none'>");
		 Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRJSBYSJNJZYKCFX",vXNXQ,USER_ID));
	     Response.Output.Write ("</td></tr></table>");
	%>
  	</td></tr>
     <tr><td height="26" >
	<table border=0 width="100%" align="center" cellpadding="0" cellspacing="0"><tr>
	<td><%=vXNXQstr%></td>
	
	<td align=right>
		<input type=radio name=zfx_flag value=0 checked onclick='if(this.checked){bynjzy.style.display="";bynjzyfx.style.display="none";}'>主修
		<input type=radio name=zfx_flag value=1 onclick='if(this.checked){bynjzy.style.display="none";bynjzyfx.style.display="";}'>辅修
		<input type=hidden name=hid_user value='<%=USER_ID%>'>
		<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
	</td>
     <td height="26" align=right width=120>
			<input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true'>&nbsp
			<input type=button value=保存 disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>
        </td></tr>
	</table>
	</td></tr>
  </table>
</td></tr>
</form>
<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="Tea_BYSJCJ_ADD_rpt.aspx" width=100% height=98% frameborder=1></iframe>
</td></tr>
</table>
</body>
</html>