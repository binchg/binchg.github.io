<%@ Page language="c#" Codebehind="LabFreeJC.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.LabFreeJC" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<HTML>
	<HEAD>
		<title>分实验(分)室查看空闲周次/节次</title>
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
				var vRoom;
				try{
					vRoom=document.all.Sel_SYS.value;
					if((vRoom=="")||(vRoom=="Nothing")){
						alert('需选定实验(分)室！');
						return false;}
					else{
						form.method='post';
						form.action='LabFreeJC_rpt.aspx';
						form.target='frmRpt';
						form.submit();
						return true;
					}
				}catch(e){}
			}
			
			function ShowListValue(theID,vP)
			{
				var vYX,theURL;
				try{
					vYX=document.all.Sel_YX.value;
					if(vYX!=""&&vYX!="Nothing")
					{
						theURL="./Private/List_"+vP+".aspx?yx="+vYX;
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
		<form name="form" method="post" action="LabFreeJC_rpt.aspx" onsubmit="return ChkValue()">
			<table width="662" align=center border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td valign="top" align="center">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td valign="bottom" align="center"><b>分实验(分)室查看空闲周次/节次</b></td>
							</tr>
							<tr>
								<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="56">
						<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
							<tr>
								<td width="34%" height="28px">学年学期&nbsp;<select name='Sel_XNXQ' style='WIDTH:165px'><%=(new Base().SetValue("XNXQ-SYAP"))%></select></td>
								<td width="66%" height="28px"><%=(new BLL.ZNPK.Base().SetValue("YX_Lab",USER_OPTYX))%></td>
							</tr>
							<tr><td align=left height="28px">
									<input type="checkbox"  name="chkval" onClick='if(this.checked==true){this.value="1";}else{this.value="0";}'>&nbsp;周次&nbsp;<input name="zc" type="text" value="01-18" size="5" maxlength="5" onBlur="if(!this.value.match(/^\d\d-\d\d$/)){alert('输入的格式不正确!\n请重新输入!');this.value='01-18';}">
								</td>
								<td align=right height="28px">
								<input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()">
								</td>
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
						</iframe><iframe name="frmRpt" src="LabFreeJC_rpt.aspx" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
