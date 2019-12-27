<%@ Page %>
<HTML>
	<HEAD>
		<title>申请学期开课变更</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="C#" runat="server">
			private void Page_Load(object sender,System.EventArgs e){
				KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
				try{
					myPage.InitPage(true);
					BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
					pSub.JXJH_TimeArea(this,"JH_YX_XQKKBG");
					pSub.DoorOnOff(this,"JH_YX_XQKKBG");
					string vXNXQ=pSub.KKBG_vXNXQ();
					opNJ.Text=pSub.KKBG_NJ(vXNXQ);
					yxzyT.Text=pSub.SetValue("yxzy",myPage.CUR_UserInfo.USER_OptYX);
					opXNXQ.Text=pSub.aboutKKBG_vXNXQ();
				}catch(Exception ex){
					myPage.ExceptionOutputStr(ex);
				}
			}
		</script>
		<script language="javascript">
			function chkValue(){
				try{
					var sYX=document.all.sel_xy.value;
					var sZY=document.all.sel_zy.value;
					if(sYX=="" || sYX.toUpperCase()=="NOTHING" || sZY==""||sZY.toUpperCase()=="NOTHING")
					{
						alert('须选定院系专业！');
						document.all.btn_newAdd.disabled=true;
						return false;
					}else{
						document.all.btn_newAdd.disabled=false;
						document.all.hidNJ.value=document.all.sel_nj.value;
						document.all.hidXNXQ.value=document.all.sel_xnxq.value;
						return true;
					}
				}catch(e){alert(e);}
			}
			  
			function openWinDialog(url,scr,w,h){
				try{
					var Tform;
					eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:"+scr+";scrollbars=no;help:no'");
					var restr=window.showModalDialog(url,1,Tform);
					return restr;
				}catch(e){alert(e);}
			}
			  
			function newAddValue(){
				try{
					var xnxq=document.all.hidXNXQ.value;
					var nj=document.all.hidNJ.value;
					var zfx=document.all.hidZFX.value;
					var zyid=document.all.hidZYID.value;
					var kchj=document.all.hidKCHJ.value
					var url='./KKJH_KKBG_DailogFrame.aspx?p=newAdd&nj='+nj+'&xnxq='+xnxq+'&kchj='+kchj+'&zfx='+zfx+'&zyid='+zyid;
					//alert(url);
					var reStr=openWinDialog(url,'no','600px','400px');
					//alert(reStr);
					if(reStr=='ok'){
						window.form1.submit();
					}
				}catch(e){alert(e);}
			}
			  
			function changezy(){
				document.all.sel_xy.onchange();
			}
		</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0">
		<form name="form1" method="post" action="SET_BGSQ_rpt.aspx" target="main" onsubmit="return chkValue()">
			<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr><td>
					<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
						<tr><td valign="top" align="center">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
								<tr><td valign="bottom" align="center"><b>申请学期开课变更</b></td></tr>
								<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td></tr>
							</table>
						</td></tr>
						<tr><td valign="top" align="center" height="5%">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
								<tr height="28"><td colspan="3">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr align="center">
											<td width="34%" align="left" nowrap>学年学期
												<select name="sel_xnxq" style="WIDTH:165px">
												<asp:Literal ID="opXNXQ" Runat="server" Text=""/>
												</select>
											</td>
											<td width="2%" nowrap align=left><br></td>
											<td width="30%" nowrap align=left>
												<fieldset>
												<input type="radio" value="0" checked name="rKCHJ">理论课程
												<input type="radio" value="1" name="rKCHJ">实践环节 
												<input type="checkbox" name="chkqr" value="1">含已确认&nbsp;
												</fieldset>
											</td>
											<td width="2%" nowrap align=left><br></td>
											<td width="17%" nowrap align=left>
												<fieldset>
												<input type="radio" name="majorInminor" id="majorIn" value="0" checked>主修
												<input type="radio" name="majorInminor" id="minorIn" value="1">辅修&nbsp;
												</fieldset>
											</td>
											<td width="15%" nowrap align=right>
												<input type="submit" name="btn_search" value="检索" class="but20">
												<input type="button" name="btn_newAdd" value="新增" disabled class="but20" onclick="newAddValue()">
											</td>
										</tr>
									</table>
								</td></tr>
								<tr><td width="14%">年级&nbsp;<select name="sel_nj" style="width:55px;" onchange="changezy()"><asp:Literal ID="opNJ" Runat="server" Text=""/></select></td>
									<td align=left><asp:Literal ID="yxzyT" Text="" Runat="server" /></td>
									<td align="right" width="20%">
									<input type="hidden" name="hidNJ">
									<input type="hidden" name="hidXNXQ">
									<input type="hidden" name="hidZFX">
									<input type="hidden" name="hidKCHJ">
									<input type="hidden" name="hidZYID">
									</td>
								</tr>
							</table>
						</td></tr>
				</table>
			</TD></TR>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="main" src="SET_BGSQ_rpt.aspx" width="99%" height="98%" frameborder="0">
					</iframe>
				</td>
			</tr>
		</TABLE>
		</form>
	</body>
</HTML>
