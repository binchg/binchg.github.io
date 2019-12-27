<%@ Page Language="c#" CodeBehind="default.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame._default" %>
<HTML>
	<HEAD>
		<Title>
			<asp:Literal ID="TitleStr" Runat="server" Text=""></asp:Literal>
		</Title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="./_Style/Styles_HomeDefault.css" type="text/css">
		<script language="javascript">
			var RGB_NONE='#cccccc'; 
			var RGB_LINK='#000000'; //#404275 31519C
			var RGB_OVER='#f27021'; 
			var RGB_CHECK='white';  //#11a90f
			var lastModID='<%=sLastID%>'; //m11
			var js_FrendlyTip='<%=sDebug%>';

			function openWinX(url,name,w,h){ 
				var pop=window.open(url,name,"width=" + w + ",height=" + h + ",toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no");
				pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
			}

			function MouseOver(spanId)
			{
				var objSpan = eval(spanId);
				if(objSpan.style.color==RGB_NONE){objSpan.style.cursor='';return false;}

				objSpan.style.cursor='hand';
				if(objSpan.style.color!=RGB_CHECK){objSpan.style.color=RGB_OVER;}
			}

			function MouseOut(spanId)
			{
				var objSpan = eval(spanId); 
				if(objSpan.style.color==RGB_NONE){return false;}
				if(objSpan.style.color!=RGB_CHECK){objSpan.style.color=RGB_LINK;}
			}

			function ToLink(Tcase)
			{
				var vHref; var t;
				var objSpan = eval(Tcase);
				var objLast= lastModID;
				var lastTag= lastModID.substring(1,2);
				var thisTag= Tcase.tag; 
				
				if(objSpan.style.color==RGB_NONE||objSpan.value.length<18) return false;
				window.top.frames["frmHomeShow"].location.href=objSpan.value;
				 
				eval(objLast+".style.color=RGB_LINK");
				if(lastTag!=thisTag) eval("bgM"+lastTag+".background='images/_m"+lastTag+"0.gif'");
				
				objSpan.style.color=RGB_CHECK;
				
				eval("bgM"+thisTag+".background='images/_"+objSpan.id+".gif'");
				
				lastModID=objSpan.id;		
			}

			function window.onload(){
				try{
					var ie5=window.navigator.userAgent.indexOf('MSIE 5');
					var ie6=window.navigator.userAgent.indexOf('MSIE 6');	
					if((ie5>0)||(ie6>0)) //self.open("mainfrm.asp","_self");
						return true;
					else alert('请使用IE5.0以上版本访问本系统!');
				}catch(e){
					self.location="./_help/blank.htm";
				}
			}
		</script>
	</HEAD>
	<body style="OVERFLOW:auto" onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		align="middle" valign="middle" bgColor="#f8fffe" text="#000000" leftmargin="0" topmargin="0"
		marginwidth="0" marginheight="0">
		<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<!-- BANNER区 -->
			<tr>
				<td align="center" valign="middle">
					<table width="100%" height="440" border="0" cellspacing="0" cellpadding="0" align="center">
						<tr>
							<td align="center" width="100%" height="75" valign="top" bgColor='#f8fffe'>
								<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="18%" height="75"><br>
										</td>
										<td width="692" height="75" align="left" valign="middle" background="./images/index_banner.gif"
											nowrap></td>
										<td width="18%" height="75"><br>
										<asp:Literal ID="popNewsScript" Runat="server" Text=""></asp:Literal>
										</td>
									</tr>
									<tr>
										<td height="20" colspan="3"></td>
									</tr>
									<tr>
										<td align="left" valign="bottom" colspan="3"><table border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="286" height="26" align="left">
														<table id='bgM1' border="0" cellspacing="0" cellpadding="0" background='images/_m10.GIF'
															width="287" height="26">
															<tr>
																<asp:Literal ID="pageMenuTopStr" Runat="server" Text=""></asp:Literal>
															</tr>
														</table>
													</td>
													<td width="80%" align="right" nowrap><span style='FONT-SIZE:10pt;COLOR:#404275'>
														  <asp:Literal ID="dateStr" Runat="server" Text=""></asp:Literal>
													</span>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td align="center" width="100%" height="258" valign="middle">
								<table align="center" width="100%" height="258" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td colspan="2" width="100%" height="19" background="./images/index_border1.gif"></td>
									</tr>
									<tr>
										<td width="40%" height="215" align="center" bgColor='#cdf2e3'>
											<table width="100%" height="215" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td width="100%" height="215" align="center" valign="top">
														<iframe name="frmHomeShow" src='' width="100%" height="100%" scrolling="auto" frameborder="0">
														</iframe>
													</td>
												</tr>
											</table>
										</td>
										<td width="60%" height="215" align="left" background="./images/index_bgright.gif"></td>
									</tr>
									<tr>
										<td colspan="2" width="100%" height="20" background="./images/index_border2.gif"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="100%" height="27"><table border="0" width=100% cellspacing="0" cellpadding="0" ID="Table2">
									<tr>
										<td valign="middle" align="left" nowrap bgColor="#f8fffe" width=60>[友情链接]</td>
										<td valign="middle" bgColor="#f8fffe" width=60% >
											<MARQUEE onmouseover="this.stop()" onmouseout="this.start()" scrollAmount="2" scrollDelay="1" direction="left" width="100%" height="10">
												<!--友情连接-->
												<asp:Literal ID="frindLinkStr" Runat="server" Text=""></asp:Literal>
											</MARQUEE>
										</td>
										
										<td width="426" height="27" align="right">
											<table id='bgM2' border="0" cellspacing="0" cellpadding="0" background='images/_m20.GIF'
												width="426" height="27" bgColor="#f8fffe">
												<tr>
												<asp:Literal ID="pageMenuBottomStr" Runat="server" Text=""></asp:Literal>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td width="100%" height="20" bgColor="#f8fffe"></td>
						</tr>
						<tr>
							<td align="center" bgColor="#f8fffe"><asp:Literal ID="footStr" Runat="server" Text=""></asp:Literal></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</TD></TR>
		<tr>
			<td><iframe name="frmSubmit" src="./pub/popNews.aspx" width="0" height="0" frameborder="0"></iframe>
			</td>
		</tr>
		</TABLE>
		<script language='javascript'>
			try{
				window.setTimeout("ToLink(eval('document.all.'+lastModID))",30);
			}catch(e){}
			try{
				if(window.screen.width>800) 
				//document.all.divMQ.width=520;
				document.all.divMQ.width=window.dialogWidth-500;
			}catch(e){}
		</script>
	</body>
</HTML>
