<HTML>
	<HEAD>
		<title>由承担单位提交课程设计→课程设计题目</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language='javascript'>
  function savetm(){
	if (window.topfrm.document.all.tmmc.value==''){
		alert('须录入课程设计题目！');
		return false;
	}else if(confirm("是否保存记录？")){
		window.topfrm.form2.action="c_add_kcsj_top.aspx?action=save&vid="+document.all.form1.vid.value;
		window.topfrm.form2.submit();
		return true;
	}else
		return false;
}
function deltm(){
 if( confirm("是否删除选定记录？")){
  window.topfrm.form2.action="c_add_kcsj_top.aspx?action=del";
  window.topfrm.form2.submit();
  }
  else {
  return false;
  }
}
function addtm(){
  var url
  document.all.form1.save.disabled=false;
  document.all.form1.del.disabled=true;
  window.topfrm.form2.tmmc.value='';
  window.topfrm.form2.lryq.value='';
  window.topfrm.form2.bz.value='';
  url='c_add_kcsj_top.aspx?vid='+document.all.form1.vid.value;
  topfrm.location.href=url;
  buttonfrm.location.href='c_add_kcsj_bottom.aspx?id='+document.all.form1.vid.value;
 
}
function resetfrm(theid){
id=theid.value;
url='c_add_kcsj_rpt.aspx?cddw='+id;
main.location.href=url;
topfrm.location.href="c_add_kcsj_top.aspx";
buttonfrm.location.href="c_add_kcsj_bottom.aspx";

}
		</script>
		
		<script language="C#" runat="server">
		protected string vXNXQ;
		private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.JXSJ.ind_subPrivate_JXSJ pSub=new BLL.JXSJ.ind_subPrivate_JXSJ();
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_cddwdokcsjtokcsjtm");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else
					DoorOnOff("SJ_DW_KCSJ-TM");
					
				opCDDW.Text=pSub.SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW).ToString();
				
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
		private void DoorOnOff(string PramName)
		{
			string t="",DoorValue="";
			BLL.include.ind_subPublic_TheSYSDoor pSub=new BLL.include.ind_subPublic_TheSYSDoor();
			t=pSub.TheSYSDoor("load","");
			try
			{
				DoorValue=pSub.TheSYSDoor("Get",PramName);
			}
			catch(Exception)
			{}
			if (DoorValue.Trim()!="1")  
				Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
		}
		</script>
	</HEAD>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td colspan="2" align="center" valign="top" height="8%">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>由承担单位提交课程设计→课程设计题目</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" method="post" action="c_add_kcsj_rpt.asp" target="main">
				<tr>
					<td height="26" colspan="2" align="center" valign="top">
						<table width="660" border="0" cellspacing="0" cellpadding="0" height="26">
							<tr>
								<td width="347">承担单位
									<select name="selCDDW" size="1" onChange="resetfrm(this)">
									<asp:Literal ID="opCDDW" Runat="server" Text=""/>
									</select></td>
								<td width="307" align="right">
									<input type="hidden" name="vid"> <input type="button" name="add" value="新增" onclick="addtm()" disabled class="button">
									<input type="button" name="save" value="保存" onclick="return savetm()" class="button" disabled>
									<input type="button" name="del" value="删除" class="button" disabled onclick='return deltm()'>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
			<tr>
				<td heigh="74%" width="100%" valign="top">
					<table width="660" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td height="100%" width="40%" rowspan="2" valign="top"><iframe name="main" src="c_add_kcsj_rpt.aspx" width="100%" height="100%" frameborder="1"></iframe>
							</td>
							<td height="40%" width="60%" valign="middle"><iframe name="topfrm" width="100%" height="99%" src="c_add_kcsj_top.aspx" frameborder="1"></iframe>
							</td>
						</tr>
						<tr>
							<td height="60%" width="60%" valign="top"><iframe name="buttonfrm" src="c_add_kcsj_bottom.aspx" height="99%" width="100%" frameborder="1"></iframe>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</HTML>
