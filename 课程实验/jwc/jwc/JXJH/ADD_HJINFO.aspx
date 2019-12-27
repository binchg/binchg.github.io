<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看课程/环节信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language="javascript">
		function radioCheck(obj)
		{
			try{
				var s=obj.id;
				if(s=="theoryClass"){
					document.all.txtStrTheoryId.value="";
					document.all.nameStr.innerHTML='课程名称';
					document.all.practiceClassText.style.display='none';
				}else{
					document.all.txtStrTheoryId.value="";
					document.all.nameStr.innerHTML='环节名称';
					document.all.practiceClassText.style.display='';
				}
			}catch(e){alert(e);}
		}
		function chkValue(obj){
			try{
				window.form1.action="ADD_HJINFO_rpt.aspx";
				window.form1.method="post";
				window.form1.target="mainfrm";
				window.form1.submit();
			}catch(e){alert(e);}
		}
		</script>
		<script language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e)
		{
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
				opHJStr.Text=pSub.selStr_opHJLB();
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
		</script>
	</HEAD>
	<body leftmargin="0" topmargin="0">
	<form name="form1" action="ADD_HJINFO_rpt.aspx" method="post" target="mainfrm">
		<table align="center" width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top" align="center"><td>
				<table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="28">
					<tr><td valign="bottom" align="center"><br><b>查看课程/环节信息</b></td></tr>
					<tr><td valign="bottom" align="center">
					<script language="JavaScript">Draw_HR('99.5%')</script>
					</td></tr>
					<tr valign="middle" align="center" height="28px"><td>
						<table align="center" height="100%" width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr valign="middle" align="left">
							<td width="25%">
							 <input type="radio" name="chkRad" id="theoryClass" onclick="radioCheck(this)" value="0" checked>理论课程&nbsp;
							 <input type="radio" name="chkRad" id="practiceClass" onclick="radioCheck(this)" value="1">实践环节
							</td>
							<td width="65%">
								<span id="practiceClassText" style="color:#000000;display:none;">环节类别
								<select name="sel_hjClass" style="width:125px;"><asp:Literal ID="opHJStr" Runat="server" Text=""/></select>
								</span>
								<span id="theoryClassText" style="color:#000000;display:_none;"><span id="nameStr" style="color:#000000">课程名称</span>
								<input type="text" id="txtStrTheoryId" name="txtStr" style="width:125px;"  value="">
								</span>
							</td>
							<td width="10%" align="right">
								<input type="button" onclick="chkValue(this)" name="searchBtn" value="检索" class="but20">&nbsp;
							</td>
						</tr>
						</table>
					</td></tr>
				</table>
			</td></tr>
			<tr id="theHeadTr" valign="middle" align="center" height="5%"><td>
			<DIV id="theHead" style='WIDTH: 99%;'></DIV>
			</td></tr>
			<tr><td valign="top" align="center" height="100%">
			<iframe name=mainfrm src="ADD_HJINFO_rpt.aspx" width=99% height=98% frameborder=0></iframe>
			</td></tr> 
		</table>		
		</form>
	</body>
</HTML>
