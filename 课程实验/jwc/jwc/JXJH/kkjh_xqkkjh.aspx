<%@ Page %>
<HTML>
<head>
<title>查看学期开课计划</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">
function radCddw(obj){
	try{
		var s=obj.id;
		if(s=="chkCDDW"){
			document.all.CDDWStr.style.display="";
			document.all.YXZYStr.style.display="none";
		}else{
			document.all.CDDWStr.style.display="none";
			document.all.YXZYStr.style.display="";
		}
	}catch(e){alert(e);}
}
function chkRadZFXFunction(obj){
	try{
		var s=obj.id;
		if(s=="chkZX")
			document.all.hasPublicValue.disabled=false;
		else
			document.all.hasPublicValue.disabled=true;
	}catch(e){alert(e);}
}
function chkKCFunction(obj){
	try{
		if(obj.checked){
			if(!document.all.chkHJ.checked)
			document.all.tdKCStr.style.visibility="";
		}else
			document.all.tdKCStr.style.visibility="hidden";
	}catch(e){alert(e);}	
}
function chkHJFunction(obj){
	try{
		if(obj.checked)
			document.all.tdKCStr.style.visibility="hidden";
		else{
			if(document.all.chkKC.checked)
				document.all.tdKCStr.style.visibility="";
		}
	}catch(e){alert(e);}
}
</script>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e){
	KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
	try{
		myPage.InitPage(true);
		BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
		DAL.JXJH.CourseTache data=new DAL.JXJH.CourseTache();
		pSub.DoorOnOff(this,"JH_FBKKJH");
		string vXNXQ=pSub.KKBG_vXNXQ();
		opNJStr.Text=pSub.KKBG_NJ(vXNXQ);
		tableYXZY.Text=pSub.SetValue("yxzy",myPage.CUR_UserInfo.USER_OptYX);
		opXNXQ.Text=pSub.aboutKKJH_vXNXQ();
		opCDDW.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
		opKCLB1.Text=data.WRT_TheJHKCLB1Info();
		opKCLB2.Text=data.WRT_TheJHKCLB2Info();
	}catch(Exception ex){
		myPage.ExceptionOutputStr(ex);
	}
}
</script>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" >
<form name="form1" method="post" action="kkjh_xqkkjh_rpt.aspx" target="main" >        
      
<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr valign="top" align="center"><td>
<table width="660px" border="0" cellspacing="0" cellpadding="0">
<tr><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="28">
        <tr><td valign="bottom" align="center"><b>查看学期开课计划</b></td></tr>
		<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
      </table>   
</td></tr>
<tr height="28"><td valign="top" align="center">
	 <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="28">
		<tr valign="middle" align="left" height="28"><td>
			 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
				<tr valign="middle" align="left">
				<td width="15%">&nbsp;年级&nbsp;<select name="sel_nj" style="width:55px;"><asp:Literal ID="opNJStr" Text="" Runat="server"/></select></td>
				<td width="35%">学年学期
				<select name="sel_xnxq" style="width:165px;"><asp:Literal ID="opXNXQ" Text="" Runat="server"/></select>
				</td>
				<td width="30%">
				   <fieldset>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="center"><td>
					<input type="radio" id="chkCDDW" name="chkRadCDDW" value="0" onclick="radCddw(this)">分承担单位
					<input type="radio" id="chkNJZY" name="chkRadCDDW" value="1" onclick="radCddw(this)" checked>分年级/专业
					</td></tr>
					</table>
				   </fieldset>
				</td>
				<td width="20%">
				   <fieldset>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="center"><td>
					<input type="radio" id="chkZX" name="chkRadZFX" value="0" onclick="chkRadZFXFunction(this)" checked>主修
					<input type="radio" id="chkFX" name="chkRadZFX" value="1" onclick="chkRadZFXFunction(this)">辅修
					</td></tr>
					</table>
				   </fieldset>
				</td>
				</tr>
			 </table>
		</td></tr>
		<tr valign="middle" align="left"><td>
		 <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr valign="middle" align="left">
			 <td width="25%">
				<fieldset>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="left"><td>
					 <input type="checkbox" name="chkKC" value="1" onclick="chkKCFunction(this)" checked>理论课程
					 <input type="checkbox" name="chkHJ" value="1" onclick="chkHJFunction(this)">实践环节
					</td></tr>
					</table>
				 </fieldset>					
			 </td>
			 <td width="75%">
				<fieldset>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
					<tr valign="middle" align="center">
					<td width="20%">
						<input type="checkbox" name="toClass" value="1">到行政班级					 
					</td>
					<td width="80%" id="tdKCStr" style="visibility:_hidden;">
						<input type="checkbox" name="hasPublicValue" value="1" checked>含公共任选课					 
						&nbsp;&nbsp;&nbsp;&nbsp;课程类别
						<select name="sel_lb2" style="width:100px;"><asp:Literal ID="opKCLB2" Text="" Runat="server"/></select><select name="sel_lb1" style="width:100px;"><asp:Literal ID="opKCLB1" Text="" Runat="server"/></select>										 
					</td>
					</tr>
					</table>
				 </fieldset>		
			 </td></tr>
		 </table>
		</td></tr>
	 </table>
</td></tr>
<tr valign="middle" align="left"><td>
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr valign="middle" align="left">
				<td width="90%">
					<span id="YXZYStr" style="display:_none"><asp:Literal ID="tableYXZY" Runat="server" Text=""/></span>
					<span id="CDDWStr" style="color:#000000;display:none">
					 &nbsp;承担单位&nbsp;<select name="sel_cddw" style="width:165px;"><asp:Literal ID="opCDDW" Text="" Runat="server"/></select>
					</span>
				</td>
				<td width="10%" align="right">
					<input type="submit" name="search" value="检索" class="but20">&nbsp;
				</td>
			</tr>
		</table>
</td></tr>
</table>
</td></tr>
<!--tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr-->
<tr><td valign="top" align="center" height="100%">
<iframe name="yxzy" src="" frameborder=0 style='Display:none;Width:0px;height:0px'></iframe>
<iframe name=main src="kkjh_xqkkjh_rpt.aspx" width=99% height=98% frameborder="0"></iframe>
</td></tr>
</table>
</form>
</body>
</html>