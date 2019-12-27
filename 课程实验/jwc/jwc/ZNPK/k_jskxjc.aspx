<%@ Page language="c#" Codebehind="k_jskxjc.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.k_jskxjc" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<%@ Import NameSpace="System"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>查看教室空闲周次/节次</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="JavaScript">
	function showZNPKJXL(theID)
	{
		var vURL;
		vURL=theID.value;
		window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_ZNPK_JXL.aspx?id='+vURL;
	}
		
	function ShowListValue(theID,vp)
	{
		var vURL;
		vURL=theID.value;
		window.frmZNPKCLASS.document.location.href='../ZNPK/Private/LIST_ZNPK_CLASS.aspx?id='+vURL;
	}

	</script>
  </head>
 <body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false
  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form name="form1" method="post" action="k_jskxjc_rpt.aspx" target="frmRpt">
<table width="662" align=center border="0" cellspacing="0" cellpadding="0" height="100%" align="center">

<tr><td valign="top" align="center" colspan="2">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看教室空闲周次/节次</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<tr><td width="100%"  height=52>
    <table width=660 align="center" border="0" cellpadding="0" cellspacing="0" height=100% >	
	<tr> <td width="34%" align="left" height=26>学年学期&nbsp;<select name="SelXN" style="width:165px;"><%=(new Base().SetValue("xnxq"))%></select></td>
	     <td width="66%" align="left"  height=26><%=(new Base().SetValue("ZNPK_CLASS"))%></td>
    </tr>
    <tr><td width="35%" align="left"  height=26><input type="checkbox"  name="chkval" onClick='if(this.checked==true){this.value="1";}else{this.value="0";}'>&nbsp;周次&nbsp;<input name="zc" type="text" value="01-01" size="5" maxlength="5" onBlur="if(!this.value.match(/^\d\d-\d\d$/)){alert('输入的格式不正确!\n请重新输入!');this.value='01-01';}"></td>
	    <td width="10%" align="right"  height=26><input name="Submit01" type="submit" value="检索" class="button"></td>
	</tr>
	</table>
</td></tr>         

</form>

<tr><td  align="center" valign="bottom"><br><div id=theHead name=theHead style="width:99%"></div></td></tr>

<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="k_jskxjc_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</form>
</body>
</html>

