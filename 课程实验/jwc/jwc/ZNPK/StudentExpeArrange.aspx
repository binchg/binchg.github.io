<%@ Import NameSpace="BLL.ZNPK"%>
<%@ Page language="c#" Codebehind="StudentExpeArrange.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.StudentExpeArrange" %>
<HTML>
	<HEAD>
		<title>学生实验安排表</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ChkValue()
			{
				var vXS;
				try{
					vXS=document.all.Sel_XS.value;
					if((vXS=="")||(vXS=="Nothing")){alert('需选定学生！');return false;}
					else{
						form.method='post';
						form.action='StudentExpeArrange_rpt.aspx';
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
					if((vXNXQ!="")||(theID.value!=""))
					{
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&xs="+theID.value;
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
		<form name="form" method="post" action="StudentExpeArrange_rpt.aspx" ID="Form">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>学生实验安排表</b></td>
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
								<td width="56%"><%=(new Base().SetValue("XS"))%></td>
								<td width="10%" align="right"><input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center" height="3%">
						<div id="theHead" align="center" style="WIDTH:99%"></div>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="97%">
						<iframe name="vfrmRpt" src="" style="DISPLAY:none" width="0" height="0" frameborder="0">
						</iframe><iframe name="frmRpt" src="StudentExpeArrange_rpt.aspx" width="99%" height="98%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
