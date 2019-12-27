<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_RollText</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
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
	function subAdd(){
		try{
			clearText();
			document.all.txtContent.focus();
		}catch(e){alert(e);}
	}
	function subSave(){
		try{
			var hidcode=document.all.hidcode.value;
			if(document.all.txtContent.value==""){
				alert("须录入内容！");
				document.all.txtContent.focus();
			}else{
				var url="?type=addSave";
				if(hidcode!="")
					url="?type=editSave"
				window.Form1.action="./Home_RollText_Rpt.aspx"+url;
				window.Form1.method="post";
				window.Form1.submit();
			}
		}catch(e){alert(e);}
	}
	function subDel(){
		try{
			if(document.all.hidcode.value!=""){
				if(confirm("是否删除选定记录？")){
					window.Form1.action="./Home_RollText_Rpt.aspx?type=del";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}
		}catch(e){alert(e);}
	}
    </script>
  </head>
	<body onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin="0" leftmargin="0">		
	<form id="Form1" name="Form1" action="./Home_RollText_Rpt.aspx" method="post" target="RptFrm">
		<table align="center" width="660px" border=0 cellspacing="0" cellpadding="0" height="100%">
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>滚动字幕</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			</table>   
		</td></tr>
		<tr><td valign="middle" align="center">
			<table align="center" width="660px" border="0" cellpadding="0" cellpadding="0" bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
			<tr valign="middle">
				<td width="75%" align="left">
				内容&nbsp;<input type="text" name="txtContent" value="" style="width:365px;">
				&nbsp;<input type="checkbox" name="isChecked" value="1" checked>确认启用
				</td>
				<td width="25%" align="right">
					<input type="button" name="add" value="新增" class="but20" onclick="subAdd()">
					<input type="button" name="save" value="保存" class="but20" onclick="subSave()">
					<input type="button" name="del" value="删除" class="but20" onclick="subDel()">
					<input type="hidden" name="hidcode">
				</td>
			</tr>
			</table>
		</td></tr>
		<tr><td valign="top" align="center" height="5%"><br>
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
		</td></tr> 

		<tr><td valign="top" align="center" height="99%">
		<iframe name=RptFrm src="./Home_RollText_Rpt.aspx" style="width:99%;height:99%;" frameborder="0"></iframe>
		</td></tr> 

		</table>	
	</form>
	</body>
</html>