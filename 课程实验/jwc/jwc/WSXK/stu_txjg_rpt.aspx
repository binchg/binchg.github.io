<%@ Import NameSpace="BLL.WSXK"%>
<%@ Page language="c#" Codebehind="stu_txjg_rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.stu_txjg_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<HTML>
	<HEAD>
		<title>อหัก</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Rpt.css" type=text/css rel=stylesheet >
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
			function openWin(theID,vT)
			{	
				var theURL,w,h,Tform;
				if(vT=='kc'){w=480,h=300;
				eval("Tform='width="+w+",height="+h+"'");
					theURL = '../JXJH/INFO_KC.aspx?id='+theID.value;
				}
				else if(vT=='Tea'){w=450,h=380;
				eval("Tform='width="+w+",height="+h+"'");
					theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.value;
				}
				else if(vT=='xkmc'){w=650,h=380;
				eval("Tform='width="+w+",height="+h+"'");
					theURL = '../WSXK/j_zxb_bjrs.aspx?id='+theID.value;
				}
				pop=window.open(theURL,'winKPT',Tform);	
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form action="stu_txjg_rpt.aspx?func=1" method="post" name="form1" >
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0" align="center">
				<tr>
					<td align="left" width="100%" height="95%" valign="top">
						<asp:Panel ID="pageRpt" Runat="server"></asp:Panel></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>