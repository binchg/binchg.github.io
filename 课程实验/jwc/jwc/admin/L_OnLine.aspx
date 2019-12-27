<%@ Page %>
<html>
<head>
<title>用户登录日志</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=vbscript>
function chkdate(theID)
    if Not isDate(theID.value) then 
       call msgbox("请输入正确的时间！",0,"系统提示") 
       theID.value="<%=DateTime.Now.ToString()%>"  
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
function chkValueIP(obj){
	try{
		if(obj.checked){
			document.all.txtIPAddr.disabled=false;
			document.all.txtIPAddr.style.backgroundColor="#ffffff";
		}else{
			document.all.txtIPAddr.disabled=true;
			document.all.txtIPAddr.style.backgroundColor="#cccccc";
		}
	}catch(e){alert(e);}
}
function chkValelast(obj){
	try{
		if(obj.checked){
			document.all.txtCount.disabled=false;
			document.all.txtCount.style.backgroundColor="#ffffff";
		}else{
			document.all.txtCount.disabled=true;
			document.all.txtCount.style.backgroundColor="#cccccc";
		}
	}catch(e){alert(e);}
}
function chkIpAddr(ipAddr){
		try{
			if(ipAddr=="")
				return false;
			else{
				var s=ipAddr.split(".");
				if(s.length!=4)
				return false;
				else{
					for(var i=0;i<s.length;i++)
					{
						if(isNaN(s[i])){
						return false;
						}else{
							var k=parseInt(s[i]);
							if(k>255 || k<0)
								return false;
							else 
								return true;
						}
					}
				}
			}
		}catch(e){alert(e);return false;}
	}
	
function chkIPaddrValue(obj){
	try{
		if(!chkIpAddr(obj.value)){
			obj.value="";
			alert('ip地址格式不正确！');
			obj.focus();
		}
	}catch(e){alert(e);}
}
function chkCountValue(obj){
	try{
		if(isNaN(obj.value)){
			alert('请输入数字！');
			obj.value='';
			obj.focus();
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
	}else if(!document.all.txtIPAddr.disabled&&document.all.txtIPAddr.value==""){
		alert('请输入IP地址！');
		document.all.txtIPAddr.focus();
	}else if(!document.all.txtCount.disabled&&document.all.txtCount.value==""){
		alert('请输入用户数！');
		document.all.txtCount.focus();
	}else{
		window.form1.action="L_OnLine_rpt.aspx";
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
</head>
<body oncontextmenu="window.event.returnValue=false"  ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
<form name="form1" action="L_OnLine_rpt.aspx" method="post" target="frmRpt">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>用户登录日志</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="bottom" align="center" >
      <table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="28px">
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
       <tr valign="middle" align="left">
		 <td width="30%">	
		 	<input type="checkbox" name="chkIP" onclick="chkValueIP(this)">IP地址&nbsp;<input type="text" name="txtIPAddr"  onchange="chkIPaddrValue(this)" maxlength="32" style="width:125px;BACKGROUND-COLOR:#cccccc;" disabled>
		 </td>
		 <td width="30%" colspan="2">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"  align="center">
			<tr valign="middle" align="left">
				<td width="20%" style="display:none">	
					<input type="checkbox" name="chkLine" value="1">限在线
				</td>
				<td  width="40%">
					<input type="checkbox" name="chkLast" onclick="chkValelast(this)">限最近登录<input type="text" name="txtCount" value="1" onchange="chkCountValue(this)" style="width:28px;BACKGROUND-COLOR:#cccccc;text-align:right;" disabled>个用户数
				</td>
				<td width="40%" align="right">
					<input type="button" name="subBtn" onclick="chkValue()" value="检索" class=but20>&nbsp;
				</td>
				
			</tr>
			</table>
		 </td>
       </tr>
      </table> 
</td></tr>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="L_OnLine_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr><tr><td valign="bottom" align="center" >

</td></tr>  
</table> 
</form>  
</body>
</html>

