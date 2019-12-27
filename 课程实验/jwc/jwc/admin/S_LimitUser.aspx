<%@ Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
  <head>
    <title>设置用户登录的限制</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	<script language="JavaScript">
	function SubmitSearch(){
		try{
			var s=document.all.sel_role.value;
			document.all.hidRole.value=s;
			document.all.form1.action="S_LimitUserLeft_rpt.aspx";
			document.all.form1.method="post";
			document.all.form1.target="frmRpt1";
			document.all.form1.submit();
			
			document.all.form1.action="S_LimitUserRight_rpt.aspx";
			document.all.form1.method="post";
			document.all.form1.target="frmRpt2";
			document.all.form1.submit();
		}catch(e){alert(e);}
	}
	function checkRad(obj){
		try{
			if(obj.value=='1'){
				document.all.roleYX.style.display="none";
				document.all.userTr.style.display="none";
				document.all.showRole.style.visibility="hidden";
				document.all.showNO.style.visibility="hidden";
				document.all.hidChkPad.value="1";
			}else{
				document.all.hidChkPad.value="2";
				var s=document.all.sel_role.value;
				document.all.showRole.style.visibility="";
				document.all.showNO.style.visibility="";
				if(s.length>=3){
					var key=s.substr(0,3).toUpperCase();
					if(key=="STU"){
						document.all.roleYX.style.display="none";
						document.all.userTr.style.display="";
					}
					else if(key=="DST"){
						document.all.roleYX.style.display="none";
						document.all.userTr.style.display="none";
					}
					else{
						document.all.roleYX.style.display="";
						document.all.userTr.style.display="none";
					}
				}
			}
		}catch(e){alert(e);}
	}
	function selectRoleChange(obj){
		try{
			var s=obj.options[obj.selectedIndex].value;
			//alert(s);
			if(s.length>=3){
				var key=s.substr(0,3).toUpperCase();			
				if(key=="STU"){
					document.all.roleYX.style.display="none";
					document.all.userTr.style.display="";
				}
				else if(key=="DST"){
				document.all.roleYX.style.display="none";
				document.all.userTr.style.display="none";
				}else{
					document.all.roleYX.style.display="";
					document.all.userTr.style.display="none";
				}				
			}else{
				document.all.roleYX.style.display="none";
				document.all.userTr.style.display="none";
			}
		}catch(e){alert(e);}
	}	
	
	function chkValue(obj)
	{
		try{
			var radChk=document.all.hidChkPad.value;
			var selRole=document.all.hidRole.value;
			var hidcodeStr,url="?type=''";
			if(radChk!=""){
				if(obj.name=="saveBut"){
					reChkStr("frmRpt1");
					url="?type=save";
				}else if(obj.name=="delBut"){
					reChkStr("frmRpt2");
					url="?type=del";
				}else
					return false;
				hidcodeStr=document.all.str_subKey.value;
				if(radChk!="1" && selRole=="")
					return false;
				else{
					window.form1.action="S_LimitUserRight_rpt.aspx"+url;
					window.form1.method="post";
					window.form1.target="frmRpt2";
					window.form1.submit();
					return true;
				}
			}
		}catch(e){alert(e);}
	}
	
	function reChkStr(frmName){
		try{
			var iR=0,str="";
			eval("iR="+frmName+".document.all.count.value;");
			if(iR>1000) window.status="正在进行数据处理……请稍等片刻";
			for(var i=1;i<=iR;i++){
				if(eval(frmName+".document.all.Chk"+i+".checked")){
					if(str=="")
						str=eval(frmName+".document.all.Chk"+i+".value");
					else
						str+=";"+eval(frmName+".document.all.Chk"+i+".value");
				}
			}
			document.all.str_subKey.value=str;
		}catch(e){alert(e);}
	}
	</script>
	<script language="C#" runat="server">
	private void Page_Load(Object sender,System.EventArgs e)
	{
		KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
		try{
			purviewManage pM=new purviewManage();
			myPage.InitPage(true,"ADM000");
			opRole.Text=pM.allRoleList();
			opYXBJ.Text=pM.classList_termGradeCollagePersonalClass();
			opYX.Text=(new BLL.include.ind_subPublic()).PutValue("yx","%");
		}catch(Exception ex){
			myPage.ExceptionOutputStr(ex);
		}
	}
	</script>
  </head>
<body leftmargin="0" topmargin="0">
<form name="form1" id="form1">  
	<table width="660px" border=0 cellspacing="0" cellpadding="0" height="100%" align="center">
		<tr align="center"  valign="top" height="26"><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>限制用户</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

	<tr valign="top"><td valign="top" align="center">
		<table width="660px" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
			<tr align="left" valign="middle" height="28">
				<td align="left" width="20%">
					<input type="radio" name="chkRad" value="1" id="chkRad1" onclick="checkRad(this)" checked>按角色
					<input type="radio" name="chkRad" value="2" id="chkRad2" onclick="checkRad(this)">按用户
				</td>
				<td id="showRole" style="visibility:hidden;" align="left" width="25%">角色&nbsp;<select name="sel_role" onchange="selectRoleChange(this)" style="width:125px;"><asp:Literal ID="opRole" Runat="server" Text=""/></select></td>
				<td id="showNO" style="visibility:hidden;" align="left" width="47%">
					<span id="txtStr" style="color:#000000;">工号/学号</span>&nbsp;<input type="text" name="txtGHXH" style="width:90px" maxlength=50>
						备注&nbsp;<input type=text name="txtMEMO" style="width:122px"></td>
				<td width="8%" align=right>
					<input type="button" name="search" onclick="SubmitSearch()" value="检索" class="but20">
					<input type="hidden" name="hidChkPad" value="1">
					<input type="hidden" name="hidRole">
					<input type="hidden" name="str_subKey">
				</td>
			</tr>
			<tr id="roleYX" align="left" valign="middle" style="display:none;" height="28">
				<td align="left" colspan="4">&nbsp;院(系)/部/处室&nbsp;
				<select name="sel_yxcs" style="width:186px;"><asp:Literal ID="opYX" Runat="server" Text=""/></select>
				</td>
			</tr>
			<tr id="userTr"align="left" valign="middle" style="display:none;" height="28">
				<td align="left" colspan="4">
				<asp:Literal ID="opYXBJ" Runat="server" Text=""/> 
				</td>
			</tr>
		</table>
	</td></tr>
	<tr width="99%" height="99%">
		<td valign="top" align="left">
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%">
				<tr><td width="47%" align="left" valign="top">
						<iframe name=frmRpt1 src="S_LimitUserLeft_rpt.aspx?id=0" style="width:99%;height:99%;" frameborder=1></iframe>
					</td>
					<td width="6%" align="center" valign="middle">
						<input type="button" name="saveBut" title='限制' value=">>" onclick="return chkValue(this)" class="but20">
						<br><br>
						<input type="button" name="delBut" title="取消" value="<<" onclick="return chkValue(this)" class="but20">
					</td>
					<td width="47%" align="right" valign="top">
						<iframe name=frmRpt2 src="S_LimitUserRight_rpt.aspx?id=0" style="width:99%;height:99%;" frameborder=1></iframe>
					</td>
				</tr>
			</table>
		</td>
	</tr> 
</table>
</form>
</body>
</html>
