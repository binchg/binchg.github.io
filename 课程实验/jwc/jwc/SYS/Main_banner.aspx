<%@ Import NameSpace="BLL.Sys"%>
<%@ Import NameSpace="CLL"%>
<%@ Page Language="C#" %>
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<bgsound src='' loop="infinite" id="bgmid" tag=''>
		<bgsound src='' loop="0" id="bgwav" tag=''>
		<script language="C#" runat="server">
			private void Page_Load(object sender,System.EventArgs e){
				KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
				try{
					myPage.InitPage(false);
					if(myPage.CUR_UserInfo.USER_id.Length==0)
					Response.Redirect("../default.aspx");
					onLineCountStr.Text=onlineActive.getOnlineActiveObj().getOnlineCount;
					try{DataStr.Text=this.Session["DataTime"].ToString();}catch(Exception){};
				}catch(Exception){Response.Redirect("./Logout.aspx");}
			}
		</script>
	</HEAD>
	<body topmargin="0" leftmargin="0" oncontextmenu="window.event.returnValue=false" onselectstart="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" >
		<div style="Z-INDEX: -1; LEFT: 0px; VISIBILITY: hidden; WIDTH: 100px; POSITION: absolute; TOP: 0px; HEIGHT: 7px">
		</div>
		<table width="100%" height="82" border="0" cellspacing="0" cellpadding="0">
			<!-- BANNER区 -->
			<tr>
				<td align="center" width="100%" valign="top" background="../images/banner.gif">
					<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="20%" align="center" valign="middle"><br>
							</td>
							<td width="60%" align="center" valign="middle"></td>
							<td width="20%" align="right" valign="middle">
								<table border="0" cellpadding="0" cellspacing="0" height="100%" width="200">
									<tr>
										<td align="right" valign="bottom"><br>
										</td>
									</tr>
									<tr>
										<td align="right" valign="bottom">
											<!--统计在线人数-->
											<span id="onTimeNum" style='FONT-SIZE:9pt;COLOR:white'>在线人数：
												<asp:Literal ID="onLineCountStr" Runat="server" Text=""></asp:Literal>&nbsp;</span>
										</td>
									</tr>
									<tr>
										<td align="right" valign_="bottom" nowrap>
											<span style='FONT-SIZE:9pt;COLOR:white'>
												<asp:Literal ID="DataStr" Runat="server" Text=""></asp:Literal>
											</span>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<script language="javascript">
			//服务端变量 
			var js_ServerTheCustomer='<%=sysBaseInfo.getSysBaseInfoObject().TTL_Bill%>';

			//客户端变量
			var js_ClientIP='';
			var js_ClientPCInfo='';

			//当前用户变量
			var js_UserID='';
			var js_UserName='';
			var js_UserRight='';
			var js_UserLVID='';
			var js_UserGroup='';
			var js_UserDepart='';
			var js_UserLogTime='';

			//当前系统变量
			var js_SysTREE_Multi=true;
			var js_SysMsg_POP_DELAY='5';
			var js_SysDEBUG_DOOR='1';
			var js_SysPageSize_Door='';
			var js_SysTREE_Single='';

			var js_Sys_vkxrq='<%=sysBaseInfo.getSysBaseInfoObject().TermBeginDate%>';
			
		
			window.setTimeout("StartLoadMenu()",300);
			function StartLoadMenu(){try{
			var ie6=window.navigator.userAgent.indexOf('MSIE 6');
			if(ie6>0)	window.top.frames.frmbody.location='../sys/menu.aspx';
			else window.top.frames.frmbody.location='../sys/menu_ie5.aspx';
			}catch(e){window.setTimeout("StartLoadMenu()",300);}}
		</script>
	</body>
</HTML>
