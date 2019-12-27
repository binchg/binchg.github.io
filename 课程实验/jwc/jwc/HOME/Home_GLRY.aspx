<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_GLRY</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function chkValueInput(){
		try{
			var i,R,str='';
			try{R=window.RptFrmLeft.document.all.count.value;}catch(e){R=0;}
			for(i=1;i<=R;i++)
			{ 
				if(eval("window.RptFrmLeft.document.all.Chk"+i+".disabled")==false){
   					if(eval("window.RptFrmLeft.document.all.Chk"+i+".checked")==true)
					{
					 if(str=='')
						{str=eval("window.RptFrmLeft.document.all.Chk"+i+".value");}
					 else
						{str=str+';'+eval("window.RptFrmLeft.document.all.Chk"+i+".value");}
					}  
				}
			}
			if(str==''){ return false;}
			else{
				var url='./Home_GLRY_RptRight.aspx?type=add&hidcode='+str;
				window.RptFrmRight.document.location.href=url;
			}
		}catch(e){alert(e);}
	}
	function chkValueInout(){
		try{
			var i,R,str='';
			try{R=window.RptFrmRight.document.all.count.value;}catch(e){R=0;}
			for(i=1;i<=R;i++)
			{ 
				if(eval("window.RptFrmRight.document.all.Chk"+i+".disabled")==false){
   					if(eval("window.RptFrmRight.document.all.Chk"+i+".checked")==true)
					{
					 if(str=='')
						{str=eval("window.RptFrmRight.document.all.Chk"+i+".value");}
					 else
						{str=str+';'+eval("window.RptFrmRight.document.all.Chk"+i+".value");}
					}  
				}
			}
			if(str==''){ return false;}
			else{
				var url='./Home_GLRY_RptRight.aspx?type=del&hidcode='+str;
				window.RptFrmRight.document.location.href=url;
			}
		}catch(e){alert(e);}
	}
	</script>
	</head>
	<!--onselectstart=window.event.returnValue=false  oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false //-->
	<body topmargin="0" leftmargin="0">		
		<table align="center" width="662" border=0 cellspacing="0" cellpadding="0" height="100%" >
		<tr height="26"><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>管理人员</b></td></tr>
			<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
			</td></tr>
			<tr><td height="3px"></td></tr>
			</table>   
		</td></tr>
		<!--tr><td valign="top" align="center" height="5%"><br>
		<DIV id=theHead style='display: none_;width:99%;'></DIV>
		</td></tr--> 
		<tr valign="bottom"><td valign="top" align="center">
		<table width="100%" border="0" cellpadding="0" cellspacing="0"  align="center" height="99%" bordercolorlight="blue" bordercolordark="#ffffff">
			<tr valign="bottom" width="99%" height="99%">
				<td width="48%" align="left" height="99%">
					<iframe name=RptFrmLeft src="./Home_GLRY_RptLeft.aspx" style="width:99%;height:99%;" frameborder="1"></iframe>
				</td>
				<td width="5%" align="center" height="99%" valign="center">
				<input type="button" name="checkIn" value=">>" title="公布" onclick="chkValueInput()" class="but20">
				<br><br>
				<input type="button" name="checkOut" value="<<" title="取消" onclick="chkValueInout()" class="but20">
				</td>
				<td width="47%" align="right" height="99%">
						<iframe name=RptFrmRight src="./Home_GLRY_RptRight.aspx" style="width:99%;height:99%;" frameborder="1"></iframe>
				</td>
			</tr>
		</table>
		</td></tr>		
		
		</table>	
	</body>
</html>