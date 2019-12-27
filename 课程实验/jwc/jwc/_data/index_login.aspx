<%@ Page language="c#" Codebehind="index_login.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._data.index_login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>
			<asp:Literal ID="titleStr" Runat="server" Text=""/>
		</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_Style/Styles_Home.css" type="text/css" rel="stylesheet">
		<asp:Literal ID="JScripStr" Runat="server" Text=""/>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftMargin="0" topMargin="0">
		<TABLE height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td align="center" colSpan="2" height="30%"></td>
			</tr>
			<tr>
				<td vAlign="middle" align="center">
					<asp:Panel ID="divThePanel" Runat="server">
						<table height="80" cellSpacing="0" cellPadding="0" width="175" border="0">
							<form id="Logon" onsubmit="return ChkValue();" action="index_login.aspx" method="post"
								runat="server">
								<input id="pcInfo" type="hidden" name="pcInfo">
								<input id="typeName" type="hidden" name="typeName">
								<TBODY>
									<tr>
										<td align="center" width="50" height="26">…Ì ∑›</td>
										<td vAlign="top" height="26">
											<select style="WIDTH: 136px" onchange="SelType(this)" name="Sel_Type">
											<asp:Literal ID="opType" Runat="server" Text=""/>
											</select>
										</td>
									</tr>
									<tr>
										<td id="UID" align="center" width="50" height="26">—ß ∫≈</td>
										<td vAlign="top" height="26"><input class="tx1" id="UserID" onmouseover="this.select()" style="WIDTH: 134px; HEIGHT: 20px"
												type="text" maxLength="16" name="UserID" autocomplete="off"  runat="server">
										</td>
									</tr>
									<tr>
										<td noWrap align="center" width="50" height="26">√‹ ¬Î</td>
										<td vAlign="top" width="120" height="26" ><input class="tx1" id="PassWord" onmouseover="this.select()" style="WIDTH:134px;HEIGHT:20px"
												onclick="this.value=''" type="password" maxLength="16" name="PassWord" >
										</td>
									</tr>
									<tr>
										<td vAlign="bottom" width="50" height="26"><A id="visKeyB" onmouseover="window.status='';return true" style="VISIBILITY: hidden"
												onclick="showLay('disKeyB')" href="javascript:void(0)">»Ìº¸≈Ã</A> <input style="VISIBILITY: hidden; WIDTH: 5px; HEIGHT: 5px" type="text" name="sbtState"><br>
										</td>
										<td vAlign="bottom" align="left" width="168" height="26">&nbsp;&nbsp;
										<input class="but20" style="CURSOR: hand;" type="submit" value="µ«¬º">
										<input class="but20" style="CURSOR:hand;" type="reset" value="÷ÿ÷√">
											<!--input class="bt3" style="WIDTH: 65px; CURSOR: hand" onclick="openWinLog('../sys/forget.aspx',250,140)"
												type="button" value="Õ¸º«√‹¬Î" target="_blank"--></td>
							</form>
			</tr>
		</TABLE>
		</asp:Panel></TD></TR>
		<tr>
			<td vAlign="middle" align="center" colSpan="2" height="50">
				<div align="center"><asp:Label id="divLogNote" runat="server" ForeColor="red"/></div>
			</td>
		</tr>
		<tr>
			<td align="center" colSpan="2" height="30%"></td>
		</tr>
		</TBODY></TABLE>
	</body>
</HTML>
