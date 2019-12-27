<%@ Page language="c#" Codebehind="Home_JXAP.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.HOME.Home_JXAP" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>教学安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language=javascript>
			
			function chkLeftBox(){
				var str='';
				var chkbox=window.frmLRpt.document.all.tags('input');
				if(chkbox.length>0){
					for(var i=0;i<chkbox.length;i++){
						if(chkbox(i).type=='checkbox'&&chkbox(i).checked){
							if(str=='')
								str=chkbox(i).value;
							else
								str+='|'+chkbox(i).value;
						}
					}
					if(str!=''){
						document.all.flag.value="1";
						document.all.chkid.value=str;
						form1.submit();
					}
				}
			}
			
			function chkRightBox(){
				var str='';
				var chkbox=window.frmRRpt.document.all.tags('input');
				if(chkbox.length>0){
					for(var i=0;i<chkbox.length;i++){
						if(chkbox(i).type=='checkbox'&&chkbox(i).checked){
							if(str=='')
								str=chkbox(i).value;
							else
								str+='|'+chkbox(i).value;
						}
					}
					if(str!=''){
						document.all.flag.value="0";
						document.all.chkid.value=str;
						form1.submit();
					}
				}
			}
		</script>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="Home_JXAP.aspx" method="post" target="_self">
			<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26"  colspan=3 >
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>教学安排</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				
				<tr><td height=24px width=46% align=left>待发布的教学安排表</td>
					<td height=24px width=8%></td>
					<td height=24px width=46% align=left>已发布的教学安排表</td>
				</tr>
				
				<tr><td height=94% width=46% >
					<iframe name="frmLRpt" src="Home_JXAP_LeftRpt.aspx" width="100%" height="99%" frameborder="1"></iframe></td >
					<td height=94% width=8%  valign=middle align=center>
						<input type="button" value=">>" class=but20 onclick="chkLeftBox()" >
						<br><br>
						<input type="button" value="<<" class=but20 onclick="chkRightBox()" >
					</td>
					<td height=94% width=46% >
					<iframe name="frmRRpt" src="Home_JXAP_RightRpt.aspx" width="100%" height="99%" frameborder="1"></iframe></td >
				</tr>
				<input type="hidden" name="flag" value="">
				<input type="hidden" name="chkid" value="">
			</table>
		</form>
	</body>
</HTML>
