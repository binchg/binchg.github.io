<%@ Page %>
<html>
	<head>
		<title>查看学期实践教学进程</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
		<script language="C#" runat="server">
			protected string vXNXQ,vXNXQStr;
			private void Page_Load(object sender,System.EventArgs e){
				try{
					BLL.include.ind_subPublic subPub=new BLL.include.ind_subPublic();
					BLL.JXSJ.ind_subPrivate_JXSJ SelObj =new BLL.JXSJ.ind_subPrivate_JXSJ();
					BLL.JXJH.private_JXJH pri=new BLL.JXJH.private_JXJH();
					opNJ.Text=subPub.PutValue("xn","");
					opCDDW.Text=pri.SetValue("cddw","%");
					opYX.Text=SelObj.SetValue("yx","%").ToString();
					opXNXQ.Text=SelObj.SetValue("JXRWXNXQ","").ToString();
				}catch(Exception ex){}
			}
		</script>
		<script language="javascript">
	function chkRAD(obj){
		try{
			var s=obj.id;
			if(s=="bjtohj"){
				document.all.theYX.style.display="";
				document.all.theCDDW.style.display="none";
				document.all.radioHJ.disabled=false;
				document.all.radioHJLB.disabled=false;
			}else{
				document.all.theYX.style.display="none";
				document.all.theCDDW.style.display="";
				document.all.radioHJ.disabled=true;
				document.all.radioHJLB.disabled=true;
			}
		}catch(e){alert(e);}
	}
		</script>
	</head>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0">
		<form name="form1" action="./View_XQJXSJJC_Rpt.aspx" method="post" target="main">
			<DIV align="center">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
					<tr>
						<td valign="top" align="center">
							<table width="660" border="0" cellspacing="0" cellpadding="0" align="center">
								<tr height="26">
									<td valign="middle" align="center"><b>查看学期实践教学进程</b></td>
								</tr>
								<tr>
									<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
								</tr>
								<tr>
									<td valign="middle" align="center">
										<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  height="52">
											<tr align="left" valign="middle">
												<td width="35%">
													学年学期&nbsp;<select name="selXNXQ" style="WIDTH:168px"><asp:Literal ID="opXNXQ" Runat="server" Text=""/></select>
												</td>
												<td align="left">年级&nbsp;<select name="selNJ" style="WIDTH:55px"><asp:Literal ID="opNJ" Runat="server" Text=""/></select></td>
												<td width="30%">
													<span id="theYX" style="COLOR:#000000">院(系)/部&nbsp;<select name="selYX" style="WIDTH:135px">
													<asp:Literal ID="opYX" Runat="server" Text=""/></select></span>
													
													<span id="theCDDW" style="DISPLAY:none;COLOR:#000000">承担单位&nbsp;<select name="selCDDW" style="WIDTH:141px">
													<asp:Literal ID="opCDDW" Runat="server" Text=""/></select></span>
												</td>
												
												<td width="21%"><input type="radio" id="radioHJ" name="RADHJ" value="1" checked>按环节<input type="radio" id="radioHJLB" name="RADHJ" value="2">按环节类别</td>
											</tr>
											<tr align="right" valign="middle">
												<td align="left" width="16%" colspan="2" style="display:none">
													<input type="radio" id="bjtohj" name="RADBJ" value="1" onclick="chkRAD(this)" checked>分班级按环节&nbsp;&nbsp;
													<input type="radio" id="hjtobj" name="RADBJ" onclick="chkRAD(this)" value="2">分环节按班级
												</td>
												<td width="30%" align=right colspan=4><input type="submit" name="search" value="检索" class="but20"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top" align="center" width="99%" height="98%"><iframe name="main" src="./View_XQJXSJJC_Rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
						</td>
					</tr>
				</table>
			</DIV>
		</form>
	</body>
</html>
