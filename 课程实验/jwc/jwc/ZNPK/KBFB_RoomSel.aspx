<%@ Page language="c#" Codebehind="KBFB_RoomSel.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.KBFB_RoomSel" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>教室课表</title>
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
					vRoom=document.all.Sel_ROOM.value;
					if((vRoom=="")||(vRoom=="Nothing")){
						alert('需选定教室！');
						return false;}
					else{
						form.method='post';
						form.action='KBFB_RoomSel_rpt.aspx';
						form.target='frmRpt';
						form.submit();
						return true;
					}
				}catch(e){}
			}
			
			function ShowListValue(theID,vP)
			{
				var theURL;
				try{
					if(theID.value!="")
					{
						theURL="./Private/List_"+vP+".aspx?id="+theID.value;
						window.vfrmRpt.location.href=theURL;
					}
					
				}
				catch(e){}
			}
			
			function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
		</script>
	</HEAD>
	<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form" method="post" action="KBFB_RoomSel_rpt.aspx" onsubmit="return ChkValue()">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>教室课表</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="56px" >
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="35%"  height="28px" >学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td width="65%"  height="28px" ><%=(new Base().SetValue("ROOM"))%></td>
						</tr>
						<tr>
							<td width="10%" align="right" colspan="2"   height="28px"  >
								<input name="Submit01" type="submit" value="检索" class="button" onclick="return ChkValue()">
								<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' >
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="97%">
					<iframe name="vfrmRpt" src="" style="display:none;" width=0 height=0 frameborder="0">
					<iframe name="frmRpt" src="KBFB_RoomSel_rpt.aspx" width="99%" height="98%" frameborder="1">
					</iframe>
				</td>
			</tr></table>
			</form>
	</body>
</HTML>