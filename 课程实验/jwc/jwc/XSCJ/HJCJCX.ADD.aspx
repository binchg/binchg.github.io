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
//vXNXQ="20031";
string vstr="";
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_HJ_CX-RRL");
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
vstr="分承担单位按环节录入重修成绩④";

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<title>分承担单位按环节录入重修成绩</title>
<base target=frmRpt>
</head>

<script language=vbscript>

Sub SubmitDataonclick()
    rs=cint(frmRpt.document.all("tabRows").value)
    allcj=""
    for ii= 1 to rs
	if frmRpt.document.all("chkZHYL"&ii).value="0" then allcj=allcj&frmRpt.document.all("CHKZHCJ"&ii).value
	if allcj<>"" then exit for
    next

    if allcj="" then
	msgbox "没有成绩可以提交!",64,"取消提交："
	exit sub
    end if
    document.all.SubmitData.disabled=true 
    If MsgBox("提交后的成绩将不能被修改！"&vbCrLf&vbCrLf&"你确信提交当前成绩吗？",vbYesNo+vbQuestion+vbDefaultButton2,"警告")=vbYes Then
	frmRpt.form1.submit
    End If
End Sub</script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b><%=vstr%></b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="HJCJCX.ADD_rpt.aspx">
 <tr><td>
  <table width="660" border=0 align="center" cellpadding="0" cellspacing="0"  >
    <tr><td colspan=4>
      <table border=0 width="660" align="center" cellpadding="0" cellspacing="0">
	<% 
		 Response.Output.Write(" <td height=25  id=bjkc colspan=4>");
	 	 Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRCDDWHJCX",vXNXQ,USER_ID));
	     Response.Output.Write ("</td>");
	     Response.Output.Write ("<td align=right><input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true'>&nbsp;");
	     Response.Output.Write ("<input type=button value=保存 disabled name=SubmitData onclick=SubmitDataonclick() class=button>");
	     Response.Output.Write ("</td></tr></table>");

	%>
  	</td></tr>
    	<tr><td height="26" >
	<table border=0 width="100%" align="center" cellpadding="0" cellspacing="0"><tr>
	<td height="26" align=left >
		<%=vXNXQstr%>
		<input type=hidden name=hid_user value='<%=USER_ID%>'>
		<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
	</td>
        <td height="26" align=right>
	
        </td></tr>
		</table>
</td></tr>
</table>
</td></tr>



</form>

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="HJCJCX.ADD_rpt.aspx" width=100% height=98% frameborder=1></iframe>
</td></tr> 
</table>
<iframe name=sxbj src="" width=0 height=0 frameborder=0></iframe>
</body>
</html>
