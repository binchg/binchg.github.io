<%@ Page language="c#" Codebehind="index.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.NEWS.index" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>½ÌÎñ¶¯Ì¬</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<SCRIPT LANGUAGE="javascript">
			function popWinJWDT(theID){
				if ((theID.href)!="")
				{var pop,w=1,h=1; 
				var theURL='./'+theID.href;
				pop=window.open(theURL,"winDWLDown","fullscreen=yes,resizable=yes,menubar=no,toolbar=no,location=no,scrollbars=no,status=no")
 				pop.moveTo(0,0);
				}
			}
		</SCRIPT>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
		<table width="100%" height="100%" cellspacing="0" cellpadding="0" align="center" border="0">
		<tr>
			<td bgcolor="#CDF2E3" width="20%" height="100%"><br/></td>
			<td width="50%" align="center" height="100%">
			<table width="580" height="100%" cellspacing="0" cellpadding="0" align="center" border=0>
				<tr><td height="5"></td></tr>
				<tr><td height="10" align="center" >
					<table width="99%" >
						<tr><td width="95%" height="5" align="center"><font style="color:red" /><b><big><%=TheTitle%></big></b></td>
							</tr>
						<tr><td width="100%" height="1" valign="top" align="center"><hr/></td></tr>
					</table>
				</td></tr>
				<asp:Literal ID="TheDownFile" Runat=server></asp:Literal>
				<tr><td  valign="top" align="center" >
					<table width="98%" align="center" height="100%" border="0" cellspacing="0" cellpadding="0" >
						<tr> 
						<td valign="top" align="left" width="100%" >
						<div readonly="true" style="width:570px;overflow-y:visible;border:0px;BACKGROUND-COLOR:transparent;">
							<%=TheContent%>
						</div></td>
						</tr> 			
						
						<tr><td height="10%" align="right">
							<table height="100%"><tr><td height="100%" style="font-size:16px;"><%=TheFBDW%></td><td width="50px"></td></tr></table>
							</td>
						</tr>
					</table>
				</td>
				</tr>
				<tr><td height="5"><br/></td></tr>
			</table></td>
			<td bgcolor="#CDF2E3" width="20%" height="100%"><br/></td>
		</tr>
		</table>
	</body>
</HTML>
