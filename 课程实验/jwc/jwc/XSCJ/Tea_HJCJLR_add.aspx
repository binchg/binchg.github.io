<%@ Page language="c#" Codebehind="Tea_HJCJLR_add.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSCJ.Tea_HJCJLR_add" %>
<html>
  <head>
    <title>学生环节成绩录入</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<base target=frmRpt>
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
		End Sub
	</script>
  </head>
  
	<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="99%" border=0 cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr><td valign="top" align="center">
				<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>分环节按行政班级->组次录入成绩</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
				</td></tr>
				</table>   
			</td></tr>
			<form name="form1" method="post" action="HJCJ_ADD_rpt.aspx">
			<tr><td>
				<table width="100%" border=0 align="center" cellpadding="0" cellspacing="0"  >
					<tr><td colspan=4>
						<table border=0 width="100%" align="center" cellpadding="0" cellspacing="0">
						<td align=right height=30>
						<input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true' style="display:none">
						<input type=button value=保存 disabled name=SubmitData onclick=SubmitDataonclick() class=button>
						<input type=button value=返回  name=close onclick=window.close() class=button>
   						<input type=hidden name=hid_user value='<%=USER_ID%>'>
						<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
						<input type=hidden name=sel_kc value='<%=vKCDM%>'>
						<input type=hidden name=sel_xzbj value='<%=vBJDM%>'>
						<input type=hidden name=hid_zc value='<%=vZC%>'>
						<input type=hidden name=hjcjlr_p value='4'>
						</td></tr></table>
				</td></tr>
				</table>
			</td></tr>
			</form>

			<tr><td valign="top" align="center" height="100%">
				<iframe name=frmRpt src="HJCJ_ADD_rpt.aspx" width=100% height=99% frameborder=1></iframe>
			</td></tr> 
		</table>
	<iframe name=sxbj src="" width=0 height=0 frameborder=0></iframe>
	</body>
</html>
<script language=javascript>
	document.all.Submit01.onclick();
	form1.submit();
</script>
