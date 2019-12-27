<%@ Page language="c#" Codebehind="Pri_TeaCKJXJC.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Pri_TeaCKJXJC" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<%pflag="0";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>查看教学进度安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript" src="Private/ind_ShowList.js"></script>
		<script language="javascript">
		
		function FSearch()
		{
			var xnxq,kc,skbj;
			try{
 				xnxq=document.all.sel_xnxq.value;
				kc=document.all.sel_kc.value;
				if((xnxq=="")||(xnxq=="Nothing")){alert('请选择学年学期！');return false;}
				if((kc=="")||(kc=="Nothing")){alert('请选择课程！');return false;}
				return true;
			}
			catch(e){}
		}
		function doPrint(){
				frmRpt.document.execCommand("Print",true);
			}
			
			
		function LetInnerHTML1(thisID,vP,vT){
			var vID=thisID.value;
			if(vP=='SKBJ'){
			xnxq=document.all.sel_xnxq.value;
			kcid=document.all.sel_kc.value;
			jsid=document.all.jsid.value;				
			vURL='../ZNPK/Private/'+thisID.href+'.aspx?id='+kcid+'&w='+xnxq+'&s='+jsid;
			}
			eval("window.thefrmRpt.location.href='"+vURL+"';");
		}

		</script>
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							<iframe name=thefrmRpt src=''   frameborder=0 style='DISPLAY: none;HEIGHT: 0px;WIDTH:0'></iframe>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="22">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0" height="100%">
						<form name="form1" method="post" action="Pri_TeaCKJXJC_rpt.aspx" target="frmRpt" onSubmit='return FSearch()'>
								<tr>
									<td width="87%">
									<%=(new Base().SetValue("XNXQKCJSSKBJ",""))%></td>
								</tr>
								<tr>
									<td align="right">
									<input name="Search" type="submit" value="检索" class="button">
									<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' >
									<input type=hidden name="jsid" value=<%=JsId%>>
									</td>
								</tr>
						</form>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="5%"><br>
					<DIV id="theHead" style='DISPLAY: none;WIDTH: 100%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="100%">
					<iframe name="frmRpt" src="Pri_TeaCKJXJC_rpt.aspx" width="100%" height="100%" frameborder="0">
					</iframe>
				</td>
			</tr>
		
			</table>
	</body>
</HTML>
