<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_XL</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
		function synchrClick(){
			try{
				if(document.all.sel_xnxq.value==''){
					alert('请选择学年学期！');
					document.all.sel_xnxq.focus();
					return false;
				}else{
					return confirm('你确信要继续吗？')
				}
			}catch(e){alert(e);}
		}
	</script>
	</head>
	<body topmargin="0" leftmargin="0">	
	<form id="Form1" name="Form1" action="./Home_XL_Rpt.aspx" method="post" target="RptFrm">	
		<table align="center" width="660px" border=0 cellspacing="0" cellpadding="0" height="100%">
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>同步校历</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>   
		</td></tr>
		<tr><td valign="top" align="center" height="5%"><br>
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
		</td></tr> 

		<tr><td valign="top" align="center" height="99%">
		<iframe name=RptFrm src="./Home_XL_Rpt.aspx" style="width:99%;height:99%;" frameborder="0"></iframe>
		</td></tr> 

		</table>
		</form>	
	</body>
</html>