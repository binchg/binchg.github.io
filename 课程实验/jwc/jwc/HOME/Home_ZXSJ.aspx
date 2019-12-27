<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
  <head>
    <title>Home_ZXSJ</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="C#" runat="server">
	private void Page_Load(object sender,System.EventArgs e){
		try{
			opXnxq.Text=new BLL.include.ind_subPublic().PutValue("xnxq","");
			string[,]sjSeg=new string[5,2]{{"1","早上"},{"2","上午"},{"3","中午"},{"4","下午"},{"5","晚上"}};
			string strOP="";
			for(int i=0;i<=sjSeg.GetUpperBound(0);i++){
				strOP+="<option value='"+sjSeg[i,0].Trim()+"'>"+sjSeg[i,1].Trim()+"</option>\n";
			}
			opTimeSeg.Text=strOP;
		}catch(Exception ex){Response.Output.Write(ex.Message);}
	}
	</script>
	<script language="javascript">
	function onNewAdd(){
		try{
			clearText();
			if(document.all.sel_xnxq.disabled)
				document.all.sel_timeSeg.focus();
			else
				document.all.sel_xnxq.focus();
		}catch(e){alert(e);}
	}
	function clearText(){
		try{
			window.Form1.reset();
			var PivID=window.RptFrm.document.all.PSTemp.ValueID;
			var PivColor=window.RptFrm.document.all.PSTemp.PivColor;
			var PivFontColor=window.RptFrm.document.all.PSTemp.PivFontColor;
			if(PivID!=""){
			eval("window.RptFrm.document.all."+PivID+".style.backgroundColor='"+PivColor+"';");
			eval("window.RptFrm.document.all."+PivID+".style.color='"+PivFontColor+"';");
			}
			window.RptFrm.document.all.PSTemp.PivColor="Noting";
			window.RptFrm.document.all.PSTemp.PivFontColor="Noting";
			window.RptFrm.document.all.PSTemp.ValueID="";
		}catch(e){alert(e);}
	}
	function onSaveChk(){
		try{
			if(document.all.sel_timeSeg.value==''){
				alert('需选择时段！');
				document.all.sel_timeSeg.focus();
			}else if(document.all.segStr.value==''){
				alert('须录入节序！');
				document.all.segStr.focus();
			}else if(document.all.timeStr.value==''){
				alert('须录入时间！');
				document.all.timeStr.focus();
			}else{
				var url="addSave";
				if(document.all.hidcode.value!="")
					url="editSave";
				window.Form1.action="./Home_ZXSJ_Rpt.aspx?type="+url;
				window.Form1.method="post";
				window.Form1.submit();
			}
		}catch(e){alert(e);};
	}
	function onDelChk(){
		try{
			if(document.all.hidcode.value!=""){
				if(confirm('是否删除选定记录？')){
					window.Form1.action="./Home_ZXSJ_Rpt.aspx?type=del";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}
		}catch(e){alert(e);}
	}
	</script>
  </head>
  <body onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin="0" leftmargin="0">	
	<form id="Form1" name="Form1" action="./Home_ZXSJ_Rpt.aspx" method="post" target="RptFrm">	
		<table align="center" width="660px" border=0 cellspacing="0" cellpadding="0" height="100%">
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>作息时间</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>   
		</td></tr>
		<tr ><td valign="top" align="center">
			<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" bordercolorlight="#c3e6fa" bordercolordark="#FFFFF">
			 <tr height="26px" valign="bottom" align="center">
				<td width="34%" align="left">学年学期&nbsp;<select name="sel_xnxq" style="width:165px;"><asp:Literal ID="opXnxq" Runat="server" Text=""/></select></td>
				<td width="18%" align=left>时段&nbsp;<select name="sel_timeSeg" style="width:80px;"><asp:Literal ID="opTimeSeg" Runat="server" Text=""/></select></td>
				<td width="18%" align=left>节序&nbsp;<input type="text" name="segStr" value="" style="width:85px;"></td>
				<td width="30%">时间&nbsp;<input type="text" name="timeStr" value="" style="width:165px"></td>
			 </tr>
			 <tr height="26px" valign="bottom" align="center">
				<td width="35%" align="left" colspan="3">备&nbsp;&nbsp;&nbsp;&nbsp;注&nbsp;<input type="text" name="txtMemo" value="" style="width:405px;"></td>
				<td width="30%" align="right">
					<input type="button" name="btnAdd" value="新增" onclick="onNewAdd()" class="but20">
					<input type="button" name="btnSave" value="保存" onclick="onSaveChk()" class="but20">
					<input type="button" name="btnDel" value="删除"  onclick="onDelChk()" class="but20">
					<input type="hidden" name="hidcode">
				</td>
			 </tr>
			</table>
		</td></tr>
		<tr><td valign="top" align="center" height="5%"><br>
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
		</td></tr> 

		<tr><td valign="top" align="center" height="99%">
		<iframe name="RptFrm" src="./Home_ZXSJ_Rpt.aspx" style="width:99%;height:99%;" frameborder="0"></iframe>
		</td></tr> 

		</table>
		</form>	
	</body>
</html>