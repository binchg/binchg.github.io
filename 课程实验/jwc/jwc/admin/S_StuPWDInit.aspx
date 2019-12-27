<%@ Page Language="C#" %>
<%@ Register TagPrefix="uc1" TagName="SelXNXQ_NJ_YX_ZY_BJ_XH_UC" Src="../PUB/SelXNXQ_NJ_YX_ZY_BJ_XH_UC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>学生密码初始化</title>
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
				document.all.txtXH.disabled=false;
				document.all.txtXH.style.backgroundColor="#ffffff";
			}else{
				document.all.txtXH.disabled=true;
				document.all.txtXH.style.backgroundColor="#dfdfdf";
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
		try{
			var s=obj.name;
			window.Form1.action="S_StuPWDInit_Rpt.aspx";
			window.Form1.method="post";
			if(s=="search"){
				document.all.key_stuStr.value="";
				window.Form1.target="frmRpt";
				window.Form1.submit();
			}else if(s=="initBut"){
				if(document.all.key_stuStr.value!=""){
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
		}catch(e){alert(e);}
	}
	</script>
  </head><!--o//-->
  <body  oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
		<form name="Form1" action="S_StuPWDInit_Rpt.aspx" target="frmRpt" method="post">
			<table border="0" width="100%" height="100%" cellspacing="0" cellpadding="0" align="center">
				<tr><td valign="top" align="center" height=26>
					<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>学生密码初始化</b></td></tr>
						<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></tr></td>
					</table>   
				</td></tr>
				
				<tr>
					<td valign="top" align="center"  height="26">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr height="28"><td align="center" valign="middle">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="54">
							<tr align="left" height="54">
								<td width="63%" colspan="2">
								<uc1:SelXNXQ_NJ_YX_ZY_BJ_XH_UC id="SelXNXQ_NJ_YX_ZY_BJ_XH_UC1" runat="server"></uc1:SelXNXQ_NJ_YX_ZY_BJ_XH_UC>
								</td>
							</tr>
							<tr align="left">
								<td width="65%" height=24px>
								<input type="radio" name="aboutPwd" value="0" onclick="setPwdBool(this)" checked>随机密码&nbsp;
								<input type="radio" name="aboutPwd" value="1" onclick="setPwdBool(this)">关联密码(学号)&nbsp;
								<input type="radio" name="aboutPwd" value="2" onclick="setPwdBool(this)">指定密码
								<input type="text" title="请输入指定密码" name="setPwdStr" style="width:150px;visibility:hidden;" >
								</td>
								<td width="35%" align="right" >
								<input type="button" name="search" value="检索" onclick="chksubmit(this)" class="but20">
								<input type="button" name="initBut" value="初始化" onclick="chksubmit(this)" class="but20" disabled>
								<input type="button" name="printBut" value="打印" class="but20" onclick="chksubmit(this)" disabled>
								<input type="hidden" name="key_stuStr">
								</td>
							</tr>
							</table>
							</td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td width="99%" height="90%" valign="top" align="center">
					<iframe id="frmRpt" name="frmRpt" src="S_StuPWDInit_Rpt.aspx" frameborder=0 style="width:99%;height:99%"></iframe>
					</td>
				</tr>
			</table>
			</form>
	</body>
</html>
