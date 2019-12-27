<%@ Import NameSpace="BLL.admin"%>
<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>权限设置</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../pub/scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
	function ChkValue(theObj){
	var s=theObj.value;
	if (s=="修改" && document.all.hidcode.value==""){return false;}
	if (document.all.txtName.value==''){
	alert('须录入角色名称！');
	document.all.txtName.focus();return false;
	}
	if (!confirm('是否'+s+'记录?')){return false;}
	return true;
	}

	function BtnAdd(){
		try{
			var PivID,PivColor,PivFontColor;
			window.form1.reset();
			document.all.txtName.focus();
			document.all.btnSave.disabled=false;
			document.all.bntDel.disabled=true;

			try{
			PivID=main.document.all.PSTemp.ValueID;
			PivColor=main.document.all.PSTemp.PivColor;
			PivFontColor=main.document.all.PSTemp.PivFontColor;
			if(PivID!=""){
				eval("main."+PivID+".style.backgroundColor='"+PivColor+"';");
				eval("main."+PivID+".style.color='"+PivFontColor+"';");
			}
			}catch(e){}
		}catch(e){alert(e);}
	}
 
		</script>
		<script  language="C#" runat="server">
		private void Page_Load(object sender,System.EventArgs e)
		{
		    purviewManage pM=new purviewManage(this);
			string str="对不起！该功能仅授权给门户维护员！";
			if(!pM.chkPurview("adm000")){
				Response.Output.Write(pM.pageRedirect(str,true));
			}
		}
		</script>
	</HEAD>
	<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
		<table width="662" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="662" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>角色定义</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="S_Group_rpt.aspx" target="main">
				<tr>
					<td valign="middle" align="center" height="5%">
						<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td align="left" nowrap>角色名称&nbsp;<input type="text" name="txtName" size="15" maxlength="10">
									角色描述&nbsp;<input type="text" name="txtMemo" size="40" maxlength="25">
								<td align="right" nowrap>
									<input type="hidden" name="hidcode"> <input type="button" name="button" id="addbtn" value="新增" class="but20" onclick='BtnAdd()'>
									<input type="submit" id="btnSave" name="button" disabled value="保存" class="but20" onclick='return ChkValue(this)'>
									<input type="submit" name="button" id="bntDel" disabled value="删除" class="but20" onclick='if(confirm("删除当前记录?")){return true}else{return false}'>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="3%"><br>
						<DIV id="theHead" style='WIDTH: 99%'></DIV>
					</td>
				</tr>
				<tr>
					<td valign="top" align="center" height="100%">
						<iframe name="main" src="S_Group_rpt.aspx?id=0" width="99%" height="99%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</form>
		</table>
	</body>
</HTML>

<script language="javascript">document.all.addbtn.onclick();</script>
