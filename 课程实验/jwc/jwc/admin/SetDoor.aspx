<%@ Page language="c#" Codebehind="SetDoor.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.admin.SetDoor" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>SetDoor</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
		function ChkValue(theForm){
			if (confirm('是否保存？')){
    			var theURL,Num,radval,idval;
    			Num=window.count.value;
			
    			for(j=1;j<=Num;j++){  
					idval=eval("window.frmRpt.document.all.theKG"+j+".value");
					if(j==1){radval=idval;}else{radval=radval+";"+idval;}
     			} 
    			theURL='SetDoor_'+window.id.value+'Save.aspx?thePOST='+radval; //alert(theURL);
				window.frmSumbit.location.href=theURL;
    			return true;
   			}
 			else{return false;}
		}
		</script>
	</HEAD>
	<body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false"
		ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false"
		leftmargin="0" topmargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>控制开关(<asp:Label id="Label1" ForeColor="#000000" runat="server"></asp:Label>)</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="middle" align="center" height="5%">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td width="20%"></td>
							<td width="60%" align="left"><br>
							</td>
							<td width="20%" align="right">
								<input type="hidden" name="count" value="0"> <input type="submit" name="button" value="保存" class="but20" onclick='ChkValue(this)'>
								<input type="hidden" name="id" value='<%Response.Output.Write(Request.QueryString["id"].ToString().Trim());%>'>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src='<%Response.Output.Write("SetDoor_"+Request.QueryString["id"].ToString().Trim()+".aspx");%>' width="99%" height="98%" frameborder="0">
					</iframe><iframe name="frmSumbit" src="" frameborder="0" style='DISPLAY: none;WIDTH: 0px;HEIGHT: 0px'>
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
