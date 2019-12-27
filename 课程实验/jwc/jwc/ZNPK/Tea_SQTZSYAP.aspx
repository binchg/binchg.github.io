<%@ Page language="c#" Codebehind="Tea_SQTZSYAP.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_SQTZSYAP" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>申请调整教学安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href='../_style/Styles_Qry.css' type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				var bz;
				bz=document.all.memo1.value;
				if(bz=="")
				{
					alert("须填写调课要求及调课原因！");
					return false;
				}
				else
				{
					return true;
				}
			}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" method="post" action="Tea_SQTZSYAP.aspx" onsubmit="return ChkValue()">
			<TABLE WIDTH="574" BORDER="0" align="center" CELLPADDING="0" CELLSPACING="0" bordercolorlight="#75a7ae"
				bordercolordark="#ffffff">
				<tr>
					<td valign="top" align="center">
						<table width="567" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>申请调整教学安排</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center"><%=vHTML%></td>
				</tr>
				<tr>
					<td align="right" width="100%" colspan="2" style="HEIGHT:28px">
						<input name="submit" type="submit" value="提交" class="button"> <input name="return" type="button" value="关闭" class="button" onclick='window.close();'>&nbsp;</td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
