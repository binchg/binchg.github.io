<%@ Page language="c#" Codebehind="Tea_KCCJLR_add.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSCJ.Tea_KCCJLR_add" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>分课程按上课班级录入成绩</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<base target="frmRpt">
		<script language="vbscript">
			Sub SubmitDataOnclick()
				rs=cint(frmRpt.document.all("tabRows").value)
				allcj=""
				opener.window.status="正在检查成绩录入情况……请稍后！"
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
							opener.window.status=""
							frmRpt.document.all("CHKPSCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKQZCJ"&ii).value="" and frmRpt.document.all("chkQZYL"&ii).value="0" then
							msgbox "成绩没有提交完整!",64,"系统提示"
							opener.window.status=""
							frmRpt.document.all("CHKQZCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKQMCJ"&ii).value="" and frmRpt.document.all("chkQMYL"&ii).value="0" then
							msgbox "成绩没有提交完整!",64,"系统提示"
							opener.window.status=""
							frmRpt.document.all("CHKQMCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKJNCJ"&ii).value="" and frmRpt.document.all("chkJNYL"&ii).value="0" then
							msgbox "成绩没有提交完整!",64,"系统提示"
							opener.window.status=""
							frmRpt.document.all("CHKJNCJ"&ii).focus()
							exit sub
						end if
						if frmRpt.document.all("CHKZHCJ"&ii).value="" and frmRpt.document.all("chkZHYL"&ii).value="0" then
							msgbox "成绩没有提交完整!",64,"系统提示"
							opener.window.status=""
							frmRpt.document.all("CHKZHCJ"&ii).focus()
						end if
					end if
					'if allcj<>"" then exit for
				next
			   
				opener.window.status=""
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
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>分课程按上课班级录入成绩</b></td>
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
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td colspan="4">
										<table border="0" width="100%" align="center" cellpadding="0" cellspacing="0">
										<tr><td>
										行政班级&nbsp;<select name=sel_xzbj style="width:220" ><%=GetN.Sel_XSBJ(vXNXQ,USER_ID,vSKBJ,vSchoolcode)%></select>
										学号&nbsp;<input type=text name=txt_xh style="width:130" maxlength="20">
										</td>
										<td align=right height=30>
										<input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true'>
										<input type=button value=保存 disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>
										<input type=button value=返回  name=close onclick='window.close()' class=button>
										</td></tr></table>
										<input type=hidden name=hid_user value='<%=USER_ID%>'>
										<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
										<input type=hidden name=sel_kc value='<%=vKCDM%>'>
										<input type=hidden name=sel_skbj value='<%=vSKBJ%>'>
										<input type=hidden name=kccjlr_p value='3'>
									</td>
								</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="90%">
					<iframe name="frmRpt" src="KCCJ_ADD_rpt.aspx" width="100%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</TR></TABLE>
	</body>
</HTML>
<script language=javascript>
	document.all.Submit01.onclick();
	form1.submit();
</script>
