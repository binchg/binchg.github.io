<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>青果软件</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_Style/Styles_Home.css" type="text/css" rel="stylesheet">
		<script language="javascript">
function window.onload()
{
var i,j,n;
var vSorry='',agt,tos,tie;
agt=window.navigator.userAgent;
	if(agt.indexOf('Windows NT 5.2')!=-1) tos='Windows 2003';
	else if(agt.indexOf('Windows NT 5.1')!=-1) tos='Windows XP';
	else if(agt.indexOf('Windows NT 5.0')!=-1) tos='Windows 2000';
	else if(agt.indexOf('Windows NT')!=-1) tos='Windows NT';
	else if(agt.indexOf('Windows 9')!=-1) tos='Windows 9x';
	else if(agt.indexOf('unix')!=-1) tos='类Unix操作系统'; //linux,SunOS,BSD
	else if(agt.indexOf('Mac')!=-1) tos='Mac';
	else tos='其它操作系统';
	
	i=agt.indexOf('compatible;')
	j=agt.indexOf('; Windows')
	if(i*j>=0) tie=agt.substring(i+12,j)
	if(agt.indexOf('MSIE')==-1) //非MSIE
	{
		if(agt.indexOf('Netscape')!=-1) tie='Netscape';
		else if(agt.indexOf('Opera')!=-1) tie='Opera';
		else tie='其它浏览器';
	}
	window.document.all.os_info.innerHTML="&nbsp;"+tos+"<br>";
	window.document.all.ie_info.innerHTML="&nbsp;"+tie+"<br>";
}
		</script>
		<script language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				UsrID.Text=myPage.CUR_UserInfo.USER_zh;
				UsrName.Text=myPage.CUR_UserInfo.USER_name;
				UsrLogDate.Text=myPage.CUR_UserInfo.USER_LogTime;
				usrIPAddr.Text=myPage.StrRmtIP;
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
		</script>
	</head>
	<body oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" text="#000000" leftMargin="0" topMargin="0"
		 onsource="window.event.returnValue=false">
		<table height="100%" cellSpacing="0" cellPadding="0" width="80%" align="center" border="0">
			<tr>
				<td width="100%" height="22">您已成功登录系统．．．</td>
			</tr>
			<tr>
				<td width="100%" height="120">
					<table height="100%" cellSpacing="0" borderColorDark="#ffffff" cellPadding="0" width="100%"
						align="center" borderColorLight="#89bfa7" border="1">
						<tr>
							<td align="center" width="20%" height="20">帐&nbsp;&nbsp;&nbsp;&nbsp;号<br>
							</td>
							<td align="left" width="80%" height="20">&nbsp;<asp:Literal ID="UsrID" Runat="server" Text=""></asp:Literal><br>
							</td>
						</tr>
						<tr>
							<td align="center" width="20%" height="20">用&nbsp;户&nbsp;名<br>
							</td>
							<td align="left" width="80%" height="20">&nbsp;<asp:Literal ID="UsrName" Runat="server" Text=""></asp:Literal><br>
							</td>
						</tr>
						<tr>
							<td align="center" width="20%" height="20">登录时间<br>
							</td>
							<td align="left" width="80%" height="20">&nbsp;<asp:Literal ID="UsrLogDate" Runat="server" Text=""></asp:Literal><br>
							</td>
						</tr>
						<tr>
							<td align="center" width="20%" height="20">登&nbsp;录&nbsp;IP<br>
							</td>
							<td align="left" width="80%" height="20">&nbsp;<asp:Literal ID="usrIPAddr" Runat="server" Text=""></asp:Literal><br>
							</td>
						</tr>
						<tr>
							<td align="center" width="20%" height="20">操作系统<br>
							</td>
							<td id="os_info" align="left" width="80%" height="20"><br>
							</td>
						</tr>
						<tr>
							<td align="center" width="20%" height="20">浏&nbsp;览&nbsp;器<br>
							</td>
							<td width="80%" align="left" height="20" id="ie_info"><br>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100%"><br>
				</td>
			</tr>
		</table>
	</body>
</html>
