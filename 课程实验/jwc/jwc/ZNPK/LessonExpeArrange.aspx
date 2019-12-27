<%@ Import NameSpace="BLL.ZNPK"%>
<%@ Page language="c#" Codebehind="LessonExpeArrange.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.LessonExpeArrange" %>
<HTML>
	<HEAD>
		<title>课程实验安排表</title>
		<meta name="vs_snapToGrid" content="False">
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				var vKCID;
				try{
					vKCID=document.all.Sel_KC.value;
					if((vKCID=="")||(vKCID=="Nothing")){
						alert('需选定课程！');
						return false;
					}else{
						form.method='post';
						form.action='LessonExpeArrange_rpt.aspx';
						form.target='frmRpt';
						form.submit();
						return true;
					}
				}catch(e){}
			}
			
			function ShowListValue(theID,vP)
			{
				var vXNXQ,theURL;
				try{
					vXNXQ=document.all.Sel_XNXQ.value;
					if(vXNXQ!="")
					{
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&kc="+theID.value;
						window.vfrmRpt.location.href=theURL;
					}
				}
				catch(e){}
			}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0"
		marginheight="0">
		<form name="form" method="post" action="LessonExpeArrange_rpt.aspx" onsubmit="return ChkValue()">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>课程实验安排表</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="28">
						<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="34%">学年学期&nbsp;<select name='Sel_XNXQ' style='WIDTH:165px'><%=(new Base().SetValue("XNXQ-SYAP"))%></select></td>
								<td width="52%"><%=(new Base().SetValue("XNXQKC"))%></td>
								<td width="14%" align="right"><input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center">
						<div id="theHead" align="center" style="WIDTH:99%"></div>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0">
						</iframe><iframe name="frmRpt" src="LessonExpeArrange_rpt.aspx" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
