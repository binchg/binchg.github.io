<%@ Page %>
<html>
<head>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<title>查看个人登录日志</title>
<script language=vbscript>
function chkdate(theID)
    if Not isDate(theID.value) then 
        call msgbox("请输入正确格式的时间！",64,"系统提示") 
       	theID.value="<%=DateTime.Now.ToString()%>"
	theID.select()
    end if
end function
</script>
<script language="javascript">
function chkTimeSeg(obj){
	try{
		var s=obj.value;
		if(s=="5"){
			document.all.chkTime.style.visibility="";
		}else{
			document.all.chkTime.style.visibility="hidden";
		}
	}catch(e){alert(e);}
}
function chkValue(){
	try{
		if(document.all.chkTime.style.visibility==""){
			if(document.all.txtTimeBeg.value==""){
				alert('请输入起始时间！');
				document.all.txtTimeBeg.focus();
			}else if(document.all.txtTimeEnd.value==""){
				alert('请输入结束时间！');
				document.all.txtTimeEnd.focus();
			}else{
				window.form1.action="M_Log_Rpt.aspx";
				window.form1.method="post";
				window.form1.submit();
			}
		}else{
			window.form1.action="M_Log_Rpt.aspx";
			window.form1.method="post";
			window.form1.submit();
		}
	}catch(e){alert(e);}
}
</script>
</head>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<form name="form1" action="M_Log_Rpt.aspx" method="post" target="frmRpt">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看个人登录日志</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr><td valign="middle" align="center" height="5%">
	<table width="658px" border="0" cellspacing="0" cellpadding="0" align="center" height="26" >
	 <tr valign="middle" align="left">
		<td width="70%" height=28px>时间区段&nbsp;<select name="sel_type" onchange="chkTimeSeg(this)" style="width:125px;">
			<option value="0"></option>
			<option value="1">今天</option>
			<option value="2">本周</option>
			<option value="3">本月</option>
			<option value="4">本年</option>
			<option value="5">&lt;&lt;指定日期&gt;&gt;</option>
			</select>
			<span id="chkTime" style="visibility:hidden;">
				<input type="text" name="txtTimeBeg" value="" maxlength="30" onchange="chkdate(this)" style="width:120px;">--<input type="text" name="txtTimeEnd" onchange="chkdate(this)" value="" maxlength="30" style="width:120px;">
			</span>
		</td>
		<td width="30%" align="right">
			登录IP&nbsp;<input type="text" name="txtIPAddr" value="" style="width:125px;">
		</td>
    </tr>
    <tr valign="middle" align="left">
		<td  width="40%"  colspan="3" align="right" height=28px>
			<input type="button" name="subBtn" value="检索" onclick="chkValue()" class="but20">
		</td>
    </tr>
    </table>
</td></tr>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="M_Log_Rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr>
</table>
</form>
</body>
</html>