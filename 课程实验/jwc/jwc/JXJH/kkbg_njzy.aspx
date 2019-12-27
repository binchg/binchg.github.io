<%@ Page %>
<html>
<head>
<title>查看学期开课变更</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function changezy(){
  document.all.sel_xy.onchange();
}
</script>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e){
	KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
	try{
		myPage.InitPage(true);
		BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
		pSub.DoorOnOff(this,"JH_FBKKJH");
		string vXNXQ=pSub.KKBG_vXNXQ();
		opNJ.Text=pSub.KKBG_NJ(vXNXQ);
		yxzyT.Text=pSub.SetValue("yxzy",myPage.CUR_UserInfo.USER_OptYX);
		opXNXQ.Text=pSub.aboutKKJH_vXNXQ();
	}catch(Exception ex){
		myPage.ExceptionOutputStr(ex);
	}
}
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0">
<form name="form1" method="post" action="kkbg_njzy_rpt.aspx" target="main">              
<table  align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td valign="top" align="center">
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学期开课变更</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

      <tr><td valign="top" align="center" height="5%" >
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
        <tr height="28px"><td colspan=3>
	    <table  width="100%"border="0" cellspacing="0" cellpadding="0"><tr align="center">
            <td width="40%" align="left" nowrap>学年学期
				<select name=sel_xnxq  style="width:165"><asp:Literal ID="opXNXQ" Text="" Runat="server"/></select>
            </td>
            <td width="40%" nowrap>
				<input type="radio" value="0" checked name="rKCHJ">理论课程&nbsp;
				<input type="radio" value="1"  name="rKCHJ">实践环节 &nbsp; 
				<input type=checkbox name=chkqr value="1">含未确认      
			 </td>
			 <td width="20%" nowrap>
				<input type="radio" name="majorInminor" id="majorIn" value="0" checked>主修&nbsp;
				<input type="radio" name="majorInminor" id="minorIn" value="1">辅修
			 </td>
	    </tr>
	    </table> 	    
        </td></tr>

        <tr>
	<td width=14%>年级&nbsp;<select name=sel_nj style="width:55px;" onchange=changezy()><asp:Literal ID="opNJ" Text="" Runat="server"/></select></td>
	<td><asp:Literal ID="yxzyT" Text="" Runat="server"/></td>
        <td align="right" width="20"><input type="submit" name="btn_search" value="检索" class=button></td>
      </td></tr>          
      </table>     
</td></tr>


<!--tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr--> 

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="kkbg_njzy_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr> 
</table>
</form>
</body>
</html>