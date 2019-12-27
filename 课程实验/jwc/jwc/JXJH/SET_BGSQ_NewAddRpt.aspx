<HTML>
	<HEAD>
		<title>SET_BGSQ_NewAddRpt</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<script language="javascript">
		  function closeFunction(){
			try{
				returnValue='ok';
				window.close();
			}catch(e){alert(e);}
		  }
		  function window.onunload(){
			try{
				closeFunction();
			}catch(e){alert(e);}
		  }
		 
		  function ChkValue(){
			  var hidKeyStr;
			  hidKeyStr=document.all.hidKeyStr.value;
			  if(hidKeyStr.length==0||hidKeyStr==""){
				alert('须选定课程！');
				return false;
			  }else{
				return true;
			  }
		  }
		</script>
		<script language="C#" runat="server">
			private void Page_Load(object sender,System.EventArgs e){
				KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
				try{
					myPage.InitPage(true);
					BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
					this.opCDDW.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
				}catch(Exception ex){
					myPage.ExceptionOutputStr(ex);
				}
			}
		</script>
	</HEAD>
	<body leftMargin="0" topMargin="0"  scroll="no">
		<form name="Form1" method="post" action="./SET_BGSQ_NewAddRpt_Rpt.aspx" target="mainfrm">
			<table id="table1" cellSpacing="0" cellPadding="0" width="99%" height="100%"  border="0" align=center>
					<tr valign="middle" height="10%">
						<td>
							<fieldset>
								<table id="table2" width="100%" cellpadding="0" cellspacing="0" border="0">
									<tr  align="left" height="28px">
										<td width="45%" align=left>&nbsp;承担单位&nbsp;<select name="selCDDW" style="WIDTH:190px"><asp:Literal ID="opCDDW" Runat="server" Text=""/></select></td>
										<td width="47%">课程名称&nbsp;<input type="text" name="kcmc" style="WIDTH:180px"></td>
										<td width="8%"><input type="submit" id="searchBtn" name="buttonBtn" value="检索" class="but20"></td>
									</tr>
								</table>
							</fieldset>
						</td>
					</tr>
					<tr valign="middle" height="70%">
						<td>
							<table id="table3" width="100%" height="100%" cellpadding="0" cellspacing="0" border="0">
								<tr><td valign="top" align="center" height="5%">			  
									<DIV id="theHead" style='WIDTH: 100%'></DIV>
								</td></tr>
								<tr>
									<td>
										<iframe name="mainfrm" src="./SET_BGSQ_NewAddRpt_Rpt.aspx?kchj=<%=Request.QueryString["kchj"].ToString().Trim()%>" frameborder="0" style="WIDTH:100%;HEIGHT:99%"></iframe>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr valign="middle" height="10%">
						<td>
							<fieldset>
								<table id="table4" width="100%" cellpadding="0" cellspacing="0" border="0">
									<tr >
										<td  align="left" height="28px">	
											<input type="radio" id="ykkc" name="classTypeStr" value="1">培养方案中已开的<%if(Request.QueryString["kchj"].ToString().Trim()=="0"){%>课程<%}else{%>环节<%}%>
											<input type="radio" id="wkkc" name="classTypeStr" value="2" checked>培养方案中未开的<%if(Request.QueryString["kchj"].ToString().Trim()=="0"){%>课程<%}else{%>环节<%}%>
											<input type="radio" id="fpykc" name="classTypeStr" value="3">非培养方案中的<%if(Request.QueryString["kchj"].ToString().Trim()=="0"){%>课程<%}else{%>环节<%}%>
										</td>
										<td align="left" height="28px" width=16%>
											<input type="submit" id="submitBtn" name="buttonBtn" value="确定" class="but20" onclick="return ChkValue()"> 
											<input type="button" name="btn" value="返回" class="but20" onclick="closeFunction()">
											<input type="hidden" name="hidNJ" value="<%=Request.QueryString["nj"].ToString().Trim()%>">
											<input type="hidden" name="hidXNXQ" value="<%=Request.QueryString["xnxq"].ToString().Trim()%>">
											<input type="hidden" name="hidKCHJ" value="<%=Request.QueryString["kchj"].ToString().Trim()%>">
											<input type="hidden" name="hidZFX" value="<%=Request.QueryString["zfx"].ToString().Trim()%>">
											<input type="hidden" name="hidZYID" value="<%=Request.QueryString["zyid"].ToString().Trim()%>">
											<input type="hidden" name="hidKeyStr" value="">
										</td>
									</tr>
								</table>
							</fieldset>
						</td>
					</tr>
			</table>
		</form>
	</body>
</html>