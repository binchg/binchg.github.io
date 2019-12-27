<%@ Page language="c#" Codebehind="Tea_DGKCCJLR_add.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSCJ.Tea_DGKCCJLR_add" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
	<HEAD>
		<title>分课程按上课班级录入多个成绩</title>
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
				If MsgBox("提交后的成绩将不能被修改！"&vbCrLf&vbCrLf&"你确信提交当前成绩吗？",vbYesNo+vbQuestion+vbDefaultButton2,"系统提示")=vbYes Then
				frmRpt.form1.submit
				End If
			End Sub
		</script>
		<script language=javascript>
			function ChkValue()           //
			{
				var psbl,sybl,zkbl,mkbl,sjbl,tlbl,jsbl,llbl;
				try{
 					if((document.all.CJBXXS.value=='')||(document.all.CJBXXS.value=='Nothing')){alert('成绩表现形式不能为空！');return false;}
 					psbl=parseInt(document.all.chkPSBFB.value);
 					sybl=parseInt(document.all.chkSYBFB.value);
 					zkbl=parseInt(document.all.chkZKBFB.value);
 					mkbl=parseInt(document.all.chkMKBFB.value);
 					sjbl=parseInt(document.all.chkSJBFB.value);
 					tlbl=parseInt(document.all.chkTLBFB.value);
 					jsbl=parseInt(document.all.chkJSBFB.value);
 					llbl=parseInt(document.all.chkLLBFB.value);
					if(psbl+sybl+zkbl+mkbl+sjbl+tlbl+jsbl+llbl!=100){alert('非法成绩比例！');return false;}
				}
				catch(e){return false;}
			}
			
			function OnSel(theID)
			{
			if(isNaN(theID.value)){
				theID.value=0;
				theID.focus;}
			else{
				if(theID.value<0){alert('成绩比例必须大于0!');theID.value=0;theID.focus;}
				if(theID.value==""){theID.value=0;theID.focus;}
				
				}
			}
		</script>
		<style>
			input.BL{text-align:right;border-style:solid; border-width:1;width:25px;}
		</style>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" scroll=no>
		<table width="99%" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>分课程按上课班级录入多个成绩</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="DG_KCCJ_ADD_rpt.aspx" onSubmit="return ChkValue()" target="frmRpt">
				<tr>
					<td>
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td height="26" colspan="2" >
									<table border="0" width="100%" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td width=210px align=left>
												行政班级&nbsp;<select name=sel_xzbj style="width:150" ><%=GetN.Sel_XSBJ(vXNXQ,USER_ID,vSKBJ)%></select>
											</td>
											<td align=right >成绩比例：
												平时&nbsp;<input name="chkPSBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)" class="BL" >%
												中考&nbsp;<input name="chkZKBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												末考&nbsp;<input name="chkMKBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												实验&nbsp;<input name="chkSYBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												上机&nbsp;<input name="chkSJBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												听力&nbsp;<input name="chkTLBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												技术&nbsp;<input name="chkJSBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
												理论&nbsp;<input name="chkLLBFB" type="text" value=0 maxlength="3"  onBlur="OnSel(this)"  class="BL" >%
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="26"  align=left >
									成绩表现形式&nbsp;<select name=CJBXXS style="width:125" ><%=GetN.GetCJBXXS()%></select>
								</td>
								<td height="26" align=right >
									<input name=Submit01 type=submit value=检索 class=button onclick='document.all.SubmitData.disabled=true'>
									<input type=button value=保存 disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>
									<input type=button value=返回  name=close onclick='window.close()' class=button>
									<input type=hidden name=hid_user value='<%=USER_ID%>'>
									<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
									<input type=hidden name=sel_kc value='<%=vKCDM%>'>
									<input type=hidden name=sel_skbj value='<%=vSKBJ%>'>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td valign="top" align="center" height="90%">
					<iframe name="frmRpt" src="DG_KCCJ_ADD_rpt.aspx" width="100%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</TR></TABLE>
	</body>
</HTML>
