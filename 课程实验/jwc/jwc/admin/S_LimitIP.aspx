<%@ Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>绑定IP</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
  </head>
  <script language="JavaScript">
	function onchangeTxt(obj){
		try{
			var s=obj.value;
			var GvId=document.all.sel_role.value;
			if(s.length>0){
				url="?groupcode="+GvId+"&txtStr="+s;
				window.tmpfrm.location.href="./Private/browsePurview_seltxt.aspx"+url;
			}
		}catch(e){alert(e);};
	}
	
	function chkRadsel()
	{
		
		if(document.all.roleRad.checked)
		{
			document.all.chkRad.value='1';
			searchTextStr.style.visibility='hidden';
		}
		else
		{
			document.all.chkRad.value='0';	
			if(document.all.sel_role.value=='ADM000')
			{
				searchTextStr.style.visibility='hidden';
			}
			else
			{
				searchTextStr.style.visibility='';
			}
		}
	}
	
	
	function selRoleValue(obj){
		//try{
			var s=obj.value;
		
			chkRadsel()
			if(s.toUpperCase()=="STU000"){
				document.all.thetitleStr.innerHTML='学号';
			}else{
			    document.all.thetitleStr.innerHTML='工号';
		    }
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
						if(isNaN(s[i]))
						return false;
						else{
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
	function chktxtIP(obj){
		try{
			if(!chkIpAddr(obj.value)){
				alert('请输入正确的IP和掩码！');
				obj.value='';
				obj.focus();
			}
		}catch(e){}
	}
	function ChkValue(theObj){
		try{
			var url="";
			var s=theObj.name;
			if(s=="searchBtn"){
				url="?type=search";
			}else if(s=="newAdd"){
				window.form1.reset();
				document.all.chkRad.value='1';
				document.all.userRad.checked=false;
				document.all.searchTextStr.style.visibility='hidden';
				document.all.delBtn.disabled=true;
				clearDbColor();
			}else if(s=="saveBtn"){
				if(document.all.sel_role.value.toUpperCase()=='ADM000'&&document.all.userRad.checked){
					alert('请按角色设置！');
					url="";
				}else{
					if(document.all.userRad.checked && document.all.sel_txt.value==""){
						alert('须选择'+document.all.thetitleStr.innerHTML+"！");
						document.all.txtSearch.focus();
					}else if(document.all.txtIP.value==""){
						alert('须录入IP地址！');
						document.all.txtIP.focus();
					}else if(document.all.txtYM.value==""){
						alert('须录入掩码！');
						document.all.txtYM.focus();
					}else
						url="?type=save"
				}
			}else if(s=="delBtn"){
				if(document.all.hidcode.value!=""){
					if(confirm('是否删除选定记录？'))
						url="?type=del";
				}
			}
			if(url!=""){
				window.form1.action="S_LimitIP_rpt.aspx"+url;
				window.form1.method="post";
				window.form1.submit();
			}
		}catch(e){}
	}
	function clearDbColor(){
		try{
			var	PivID=window.frmRpt.document.all.PSTemp.ValueID;
			var PivColor=window.frmRpt.document.all.PSTemp.PivColor;
			var PivFontColor=window.frmRpt.document.all.PSTemp.PivFontColor;
			if(PivID!=""){
				eval("window.frmRpt.document.all."+PivID+".style.backgroundColor='"+PivColor+"';");
				eval("window.frmRpt.document.all."+PivID+".style.color='"+PivFontColor+"';");
			}
		}catch(e){alert(e);}
	}
	</script>
	<script language="C#" runat="server">
	private void Page_Load(Object sender,System.EventArgs e)
	{
		KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
		myPage.InitPage(true,"ADM000");
		try{
			BLL.admin.purviewManage pM=new BLL.admin.purviewManage();
			opRole.Text=pM.allRoleList("");
		}catch(Exception ex){
			myPage.ExceptionOutputStr(ex);
		}
	}
	</script>
<!--oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false-->
<body  leftmargin="0" topmargin="0">
<form name="form1" method="post" action="S_LimitIP_rpt.aspx" target="frmRpt">              
<table width="660px"  align="center" border=0 cellspacing="0" cellpadding="0" height="100%">
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>绑定IP</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td valign="middle" align="center" height="52px">
 <table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
	<tr><td align="left" width="24%">
		<input type="radio" id="roleRad" name="Rad" value="1" checked onclick="chkRadsel()">按角色
		<input type="radio" id="userRad" name="Rad" value="0" onclick="chkRadsel()">&nbsp;按用户
	</td>
	<td align="left" width="26%" id="nameStr">角色&nbsp;<select name="sel_role" onchange="selRoleValue(this)" style="width:150px;"><asp:Literal ID="opRole" Text="" Runat="server"/></select></td>
	<td  nowrap  align="left" width="40%" id="searchTextStr"><span id="thetitleStr" style="color:#000000;">工号</span>
		<input type="text" name="txtSearch" value="" onchange="onchangeTxt(this)" maxlength="30" style="width:90px"><span id="opSelTxt"><select name="sel_txt" style="width:168px;"><option value=""></option></select></span>
	</td></tr>
	<tr align="left"><td  width="24%">
	&nbsp;IP地址&nbsp;<input type=text id=txtIP name=txtIP onchange="chktxtIP(this)" maxlength=32 value='' style="width:120px;">
	</td><td align="left" width="26%">掩码&nbsp;<input type=text id=txtYM name=txtYM onchange="chktxtIP(this)"  maxlength=32 value='' style="width:150px;">
	</td><td align="right" width="40%">
		<input type="button" name="searchBtn" value="检索" class=but20 onclick='ChkValue(this)'>
		<input type="button" name="newAdd" value="新增" class=but20 onclick='ChkValue(this)'>
		<input type="button" name="saveBtn" value="保存" class=but20 onclick='ChkValue(this)'>
		<input type="button" name="delBtn" value="删除" disabled class=but20 onclick='ChkValue(this)'>
		<input type="hidden" name="chkRad" value="1">
		<input type="hidden" name="hidcode">
		<iframe name="tmpfrm" id="tmpfrm" src="" style="display:none;width:0px;height:0px;" frameborder="1"></iframe>
	</td></tr>
 </table>
</td></tr>
<tr><td valign="top" align="center" height="3%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr> 

<tr><td valign="top" align="center" height="85%">
<iframe name=frmRpt src="S_LimitIP_rpt.aspx" width=99% height=99% frameborder=0></iframe>
</td></tr> 

</table>
</form>
</body>
</html>
<script language=javascript>
document.all.roleRad.onclick();
</script>
