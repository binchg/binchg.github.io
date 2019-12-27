<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 
<html>
  <head>
    <title>查看学期教学任务（初步）</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<script language="C#" runat="server">
	private void Page_Load(object sender,System.EventArgs e){
		KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
		try{
			myPage.InitPage(true);
			BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH();
			DAL.JXJH.CourseTache data=new DAL.JXJH.CourseTache();
			pSub.DoorOnOff(this,"JH_FBKKJH");
			string vXNXQ=pSub.KKBG_vXNXQ();
			opNJStr.Text=pSub.KKBG_NJ(vXNXQ);
			opXNXQStr.Text=pSub.aboutKKJH_vXNXQ();
			opCDDWStr.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
			opKCLB1Str.Text=data.WRT_TheJHKCLB1Info();
			opKCLB2Str.Text=data.WRT_TheJHKCLB2Info();
		}catch(Exception ex){
			myPage.ExceptionOutputStr(ex);
		}
	}
	</script>
	<script language="javascript">
	function chKCHJFunction(obj){
		try{
			var s=obj.id;
			if(s=="chKC")
				document.all.kclbStrCtrl.style.visibility="";
			else
				document.all.kclbStrCtrl.style.visibility="hidden";
		}catch(e){alert(e);}
	}
	</script>
  </head>
  <body topmargin="0" leftmargin="0">
	
    <form id="Form1" method="post" action="kkjh_xqjxrw_rpt.aspx" target="main">
		<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
		<tr valign="top" align="center"><td>
		<table width="660px" border="0" cellspacing="0" cellpadding="0">
		<tr><td valign="top" align="center">
			<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="28">
				<tr><td valign="bottom" align="center"><b>查看学期教学任务（初步）</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
				</td></tr>
			</table>   
		</td></tr>
		<tr valign="middle" align="center"><td>
			<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
			  <tr valign="middle" align="left" height="28px">
				<td width="50%">
				&nbsp;年级&nbsp;<select name="sel_nj" style="width:55px;"><asp:Literal ID="opNJStr" Runat="server" Text=""/></select>
				学年学期&nbsp;<select name="sel_xnxq" style="width:165px;"><asp:Literal ID="opXNXQStr" Runat="server" Text=""/></select>
				</td>
				<td width="15%">
				 <input type="radio" id="chkZX" name="chkZFX" value="0" checked>主修
				 <input type="radio" id="chkFX" name="chkZFX" value="1">辅修
				</td>
				<td width="35%" align="right">
				承担单位&nbsp;<select name="sel_cddw" style="width:165px;"><asp:Literal ID="opCDDWStr" Text="" Runat="server"/></select>&nbsp;
				</td>
			  </tr>
			  <tr valign="middle" align="left">
			    <td width="50%" colspan="2">
					<input type="radio" name="chKCHJ" id="chKC" value="0" onclick="chKCHJFunction(this)" checked>理论课程
					<input type="radio" name="chKCHJ" id="chHJ" value="1" onclick="chKCHJFunction(this)">实践环节&nbsp;&nbsp;&nbsp;&nbsp;
					<span id="kclbStrCtrl" style="color:#000000;visibility:_hidden;">
					课程类别&nbsp;<select name="sel_lb2" style="width:100px;"><asp:Literal ID="opKCLB2Str" Text="" Runat="server"/></select><select name="sel_lb1" style="width:100px;"><asp:Literal ID="opKCLB1Str" Runat="server" Text=""/></select>
					</span>
			    </td>
			    <td width="35%" align="right">
			    <input type="submit" name="search" value="检索" class="but20">&nbsp;
			    </td>
			  </tr>
			</table>
		</td></tr>
		</table>
		</td></tr>
		<tr><td valign="top" align="center" height="100%">
			<iframe name="main" src="kkjh_xqjxrw_rpt.aspx" width=99% height=98% frameborder="0"></iframe>
		</td></tr>
		</table>
     </form>
	
  </body>
</html>
