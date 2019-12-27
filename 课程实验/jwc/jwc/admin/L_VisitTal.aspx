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
<title>用户登录情况</title>
</head>
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
function chkValueRole(obj){
	try{
		if(obj.checked){
			document.all.sel_role.disabled=false;
			document.all.sel_role.style.backgroundColor="#ffffff";
		}else{
			document.all.sel_role.disabled=true;
			document.all.sel_role.style.backgroundColor="#cccccc";
		}
	}catch(e){alert(e);}
}
function chkValueUser(obj){
	try{
		if(obj.checked){
			document.all.txtUser.disabled=false;
			document.all.txtUser.style.backgroundColor="#ffffff";
		}else{
			document.all.txtUser.disabled=true;
			document.all.txtUser.style.backgroundColor="#cccccc";
		}
	}catch(e){alert(e);}
}
function chkValueTime(obj){
	try{
		if(obj.checked){
			document.all.txtTimeBeg.disabled=false;
			document.all.txtTimeBeg.style.backgroundColor="#ffffff";
			document.all.txtTimeEnd.disabled=false;
			document.all.txtTimeEnd.style.backgroundColor="#ffffff";
		}else{
			document.all.txtTimeBeg.disabled=true;
			document.all.txtTimeBeg.style.backgroundColor="#cccccc";
			document.all.txtTimeEnd.disabled=true;
			document.all.txtTimeEnd.style.backgroundColor="#cccccc";
		}
	}catch(e){alert(e);}
}
function chkValue(){
	try{
		if(!document.all.sel_role.disabled&&document.all.sel_role.value==""){
			alert('请选择角色！');
			document.all.sel_role.focus();
		}else if(!document.all.txtUser.disabled&&document.all.txtUser.value==""){
			alert('请输入用户名或帐号！');
			document.all.txtUser.focus();
		}else if(!document.all.txtTimeBeg.disabled&&document.all.txtTimeBeg.value==""){
			alert('请输入开始时间！');
			document.all.txtTimeBeg.focus();
		}else if(!document.all.txtTimeEnd.disabled&&document.all.txtTimeEnd.value==""){
			alert('请输入结束时间！');
			document.all.txtTimeEnd.focus();
		}else{
			window.form1.action="L_VisitTal_rpt.aspx";
			window.form1.method="post";
			window.form1.target="frmRpt";
			window.form1.submit();
		}
	}catch(e){alert(e);}
}
</script>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
	myPage.InitPage(true,"ADM000");
	try{
		opRoleStr.Text=new BLL.admin.purviewManage().allRoleList();
	}catch(Exception ex){
		myPage.ExceptionOutputStr(ex);
	}
}
</script>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">
<form name="form1" action="L_VisitTal_rpt.aspx" method="post" target="frmRpt">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>用户登录情况</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<tr><td valign="middle" align="center" height="5%">
	<table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="26" >
	 <tr valign="middle" align="center">
      <td width="30%" align="left">
			<input type="checkbox" name="chkRole" onclick="chkValueRole(this)">角&nbsp;&nbsp;色
			<select name="sel_role" style="width:125px;BACKGROUND-COLOR:#cccccc;" disabled>
			<asp:Literal ID="opRoleStr" Text="" Runat="server"/>
			</select>
		</td>
		<td width="30%">
			<input type="checkbox" name="chkUser" onclick="chkValueUser(this)" value="1">用&nbsp;&nbsp;户&nbsp;
			<input type="text" name="txtUser" value="" maxlength="30" style="width:125px;BACKGROUND-COLOR:#cccccc;" disabled>
		</td>
		<td width="40%">
			<input type="checkbox" name="chkTime" onclick="chkValueTime(this)">时间区段&nbsp;
			<input type="text" name="txtTimeBeg" value="" maxlength="30" onchange="chkdate(this)" style="width:80px;BACKGROUND-COLOR:#cccccc;" disabled>--<input type="text" name="txtTimeEnd" onchange="chkdate(this)" value="" maxlength="30" style="width:80px;BACKGROUND-COLOR:#cccccc;" disabled>
		</td>
       </tr>
       <tr valign="middle" align="center">
		<td width="30%" align="right" colspan="3">
			<input type="button" name="subBtn" onclick="chkValue()" value="检索" class=but20>&nbsp;
		</td>
       </tr>
      </table>
</td></tr>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="L_VisitTal_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr>
</table>
</form>
</body>
</html>