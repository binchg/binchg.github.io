<%@ Page %>
<%@ Import NameSpace="CLL" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>

<%
BLL.XSCJ.BLL_CJLR GetN=new BLL_CJLR();
BLL.include.ind_subPublic GetV=new BLL.include.ind_subPublic();
string vstr="";
string P="";
string vXNXQ=GetN.GetXNXQ();
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
SelObj.DoorOnOff(this,"CJ_KC_RRL");
string USER_ID=SelObj.USER_ID;
string vXNXQstr="";
P=Request.QueryString["p"];
if (P=="1"){ vstr="分行政班级按课程录入成绩①";}
if (P=="2"){ vstr="分课程按行政班级录入成绩⑤";}
if (P=="3"){ vstr="分课程按上课班级录入成绩⑥";}
if(vXNXQ!="")vXNXQstr="学年学期："+GetV.GetValue("xnxq",vXNXQ);
%>

<HTML>
<HEAD>
<title>学生成绩—成绩录入</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<base target="frmRpt">
<script language="vbscript">
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
		if frmRpt.document.all("chkJNYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKJNCJ"&ii).value
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
			if frmRpt.document.all("CHKJNCJ"&ii).value="" and frmRpt.document.all("chkJNYL"&ii).value="0" then
				msgbox "成绩没有提交完整!",64,"系统提示"
				window.status=""
				frmRpt.document.all("CHKJNCJ"&ii).focus()
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
    document.all.SubmitData.disabled=true 
    If MsgBox("提交后的成绩将不能被修改！"&vbCrLf&vbCrLf&"你确信提交当前成绩吗？",vbYesNo+vbQuestion+vbDefaultButton2,"系统提示")=vbYes Then
	frmRpt.form1.submit		
    End If    
End Sub
			</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="100%" align=center border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b><%=vstr%></b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="KCCJ_ADD_rpt.aspx">
				<tr>
					<td>
						<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							<TBODY>
								<tr>
									<td colspan="4">
										<table border="0" width="660" align="center" cellpadding="0" cellspacing="0">
										<%   
										    try{
											Response.Output.Write ("<td height=25  id=bjkc colspan=4 >");
											if (P=="1") 
											Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRXZBJKC",vXNXQ,USER_ID));

											else if (P=="2") 
											Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRKCXZBJ",vXNXQ,USER_ID));

											else if (P=="3") 
											Response.Output.Write((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRKCSKBJ",vXNXQ,USER_ID));


											Response.Output.Write ("</td><td align=right><input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true'>&nbsp;");
											Response.Output.Write ("<input type=button value=保存 id=SubmitData disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>");
											Response.Output.Write ("</td></tr></table>");
											}catch(Exception){}
										%>
										<input type=hidden name=hid_user value='<%=USER_ID%>'>
										<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
										<input type=hidden name=kccjlr_p value='<%=P%>'>
									</td>
								</tr>
								<tr><td height="26"><%=vXNXQstr%></td></tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="KCCJ_ADD_rpt.aspx" width="100%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</TR></TBODY></TABLE>
	</body>
</HTML>
