<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>拒绝IP</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
	<script language="javascript">
	function chkSubmit(obj){
		try{
			var _name=obj.id;
			if(_name=="add"){
				document.all.Form1.reset();
				document.all.IPAddr.focus();
				document.all.del.disabled=true;
				return true;
			}else if(_name=="save"){
				var ip=document.all.IPAddr.value;
				var ipmaste=document.all.IPMaste.value;
				if(ip==""){
					alert("须录入IP地址！");
					document.all.IPAddr.focus();
					return false;
				}else if(!chkIpAddr(ip)){
					alert("Ip地址不符合规则！");
					document.all.IPAddr.value="";
					document.all.IPAddr.focus();
					return false;
				}else if(ipmaste==""){
					alert("须录入掩码！");
					document.all.IPMaste.focus();
					return false;
				}else if(!chkIpAddr(ipmaste)){
					alert("掩码不符合规则！")
					document.all.IPMaste.value="";
					document.all.IPMaste.focus();
					return false;
				}else{
					return true;
				}
			}else if(_name=="del"){
				if(document.all.hidcode.value=="")
					return false;
				else{
					if(confirm("是否删除选定记录？")){
						return true;
					}else
						return false;
				}
			}else return false;
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
	</script>
  </head>
  <body onselectstart="window.event.returnValue=false" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" topmargin='0' leftmargin='0'>
	
    <form id="Form1" name="Form1" method="post"  action="S_refuseIP_Rpt.aspx"  target="frmRpt">
			<table border="0" width="662" height="100%" cellspacing="0" cellpadding="0" align=center>
			<tr>
				<td valign="top" align="center">
					<table width="662" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>拒绝IP</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100%" valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" height="26" align=center>
						<tr valign="middle" align="left">
							<td width="30%">IP地址&nbsp;<input type="text" name="IPAddr" value="" style="width:155;"></td>
							<td width="40%">&nbsp;掩码&nbsp;<input type="text" name="IPMaste" value="" style="width:155;"></td>
							<td width="30%" align="right">
							<input type="button" id="add"  name="submitStr" value="新增" onclick="return chkSubmit(this)" class="but20">
							<input type="submit" id="save" name="submitStr" value="保存" onclick="return chkSubmit(this)" class="but20">
							<input type="submit" id="del" name="submitStr" value="删除" onclick="return chkSubmit(this)" disabled class="but20">
							<input type="hidden" name="hidcode">
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
				<td width="99%" height="98%" align="center" valign="top">
				<iframe id="frmRpt" name="frmRpt" src="S_refuseIP_Rpt.aspx" style="width:99%;height:99%;" frameborder="0"></iframe>
				</td>
			</tr>
		</table>
     </form>
	
  </body>
</html>
