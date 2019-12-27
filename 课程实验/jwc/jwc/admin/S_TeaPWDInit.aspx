<%@ Page language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>教师密码初始化</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function checkXH(obj){
		try{
			if(obj.checked){
				document.all.txtGH.disabled=false;
				document.all.txtGH.style.backgroundColor="#ffffff";
			}else{
				document.all.txtGH.disabled=true;
				document.all.txtGH.style.backgroundColor="#dfdfdf";
			}
		}catch(e){alert(e);}
	}
	function setPwdBool(obj){
		try{
			if(obj.value=="2"){
				if(obj.checked){
					document.all.setPwdStr.value="";
					document.all.setPwdStr.style.visibility="";
				}else{
					document.all.setPwdStr.style.visibility="hidden";
				}
			}else{
				document.all.setPwdStr.style.visibility="hidden";
			}
		}catch(e){alert(e);}
	}
	function chksubmit(obj){
		//try{
			var s=obj.name;
			window.Form1.action="S_TeaPWDInit_Rpt.aspx";
			window.Form1.method="post";
			if(s=="search"){
				document.all.key_teaStr.value="";
				window.Form1.target="frmRpt";
				window.Form1.submit();
			}else if(s=="initBut"){
				if(document.all.key_teaStr.value!=""){
					if(confirm('是否初始化密码？')){
						if((document.all.setPwdStr.style.visibility=="")&&(document.all.setPwdStr.value=="")){
							alert('须录入指定密码！');
							document.all.setPwdStr.focus();
						}else{
							window.Form1.target="frmRpt";
							window.Form1.submit();
						}
					}else
					 document.all.printBut.disabled=true;
				}
			}else if(s=="printBut"){
				window.frmRpt.document.execCommand("Print", true);
				//window.Form1.target="_blank";
				//window.Form1.submit();
			}
		//}catch(e){alert(e);}
	}
	</script>
	<script language="C#" runat="server">
	private void Page_Load(object sender,System.EventArgs e){
		KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
		try{
			myPage.InitPage(true,"ADM000");
			opYX.Text=new BLL.include.ind_subPublic().PutValue("yx","%");
		}catch(Exception ex){
			myPage.ExceptionOutputStr(ex);
		}
	}
	</script>
  </head><!---->
  <body  oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<form name="Form1" action="S_TeaPWDInit_Rpt.aspx" target="frmRpt" method="post">
			<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0" align="center">
				<tr><td valign="top" align="center" height=26>
					<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>教师教辅人员密码初始化</b></td></tr>
						<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></tr></td>
					</table>   
				</td></tr>
				
				<tr>
					<td valign="top" align="center"  height="26">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr height="28"><td align="center" valign="middle">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
									<tr align="left" height="28">
										<td width="70%">&nbsp;院(系)/部/处室&nbsp;<select name="sel_yxbm" style="width:165px"><asp:Literal ID="opYX" Runat="server" Text=""></asp:Literal></select>
											<input type="checkbox" name="chekGH" onclick="checkXH(this)" style="width:18px;">工号&nbsp;
											<input type="text" name="txtGH" value="" disabled style="width:135px;background:#dfdfdf"></td>
										<td width="30%" align=right>
											<input type="button" name="search" value="检索" onclick="chksubmit(this)" class="but20">
											<input type="button" name="initBut" value="初始化" onclick="chksubmit(this)" class="but20" disabled>
											<input type="button" name="printBut" value="打印"  onclick="chksubmit(this)" class="but20" disabled>
										</td>
									</tr>
									<tr align="left">
										<td width="65%">
										<input type="radio" name="aboutPwd" value="0" onclick="setPwdBool(this)" checked>随机密码&nbsp;
										<input type="radio" name="aboutPwd" value="1" onclick="setPwdBool(this)">关联密码(工号)&nbsp;
										<input type="radio" name="aboutPwd" value="2" onclick="setPwdBool(this)">指定密码
										<input type="text" title="请输入指定密码" name="setPwdStr" style="width:186px;visibility:hidden;">
										</td>
										<td width="35%" align="right">
										<input type="hidden" name="key_teaStr">
										</td>
									</tr>
								</table>
							</td></tr>
						</table>
					</td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td width="99%" height="90%" valign="top" align="center">
					<iframe id="frmRpt" name="frmRpt" src="S_TeaPWDInit_Rpt.aspx" frameborder=0 style="width:99%;height:99%"></iframe>
					</td>
				</tr>
			</table>
			</form>
	</body>
</html>
