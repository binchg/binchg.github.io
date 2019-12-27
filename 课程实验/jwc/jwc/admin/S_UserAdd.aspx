<%@ Page Language="C#" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>S_UserAdd</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
 	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../pub/Scr/ind_HTML_hr.js'></script>
  </head>
  <script language="JavaScript">
	function SQSet(){
	var n,selected=false;
	var strid="'TTTTTTTTTTTTTTTT'";
	n=main1.document.all.snz.value;
	if(n>1000) window.status="正在处理准备提交的数据……请稍等片刻";
	if (n==0){return false;}
	for(i=1;i<=n;i++){
	if(eval("main1.document.all.chk"+i+".checked")){
			selected=true
		strid=strid+",'"+eval("main1.document.all.chk"+i+".value")+"'";
		}
	}
	window.status=""
	if(!selected){return false;}
	main1.form1.action='S_UserAddsys_rpt.aspx?str='+strid+'&button=申请';
	main1.form1.submit();
	}

	function QXSet(){
	var n,selected=false;

	if (n==0){return false;}
	var strid="'000000000000'";
	n=main2.document.all.snz.value;
	if(n>1000) window.status="正在处理准备提交的数据……请稍等片刻";

	for(i=1;i<=n;i++){
		var objChk;
		try{eval("objChk=main2.document.all.Chk"+i)}catch(e){}

		//alert(objChk.disabled);

		if(typeof[objChk]=='object')
   		if(objChk.checked){selected=true;
		strid=strid+",'"+objChk.value+"'";
		}	
	}

	window.status=""
	if(!selected){return false;}
	main2.form1.action='S_UserAddweb_rpt.aspx?str='+strid+'&button=取消';main2.form1.submit();
	}
	
	function submitFrom(){
		document.form1.action="S_UserAddsys_rpt.aspx";
		document.form1.method="post";
		document.form1.target="main1";
		document.form1.submit();
		
		document.form1.action="S_UserAddweb_rpt.aspx";
		document.form1.method="post";
		document.form1.target="main2";
		document.form1.submit();
	}
</script>
<script language="C#" runat="server">
private void Page_Load(object sender,System.EventArgs e)
{
	KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
	try{
		myPage.InitPage(true,"ADM000");
		opYX.Text=(new BLL.admin.ind_subPrivate_Admin()).SetValue("XY","");
	}catch(Exception ex){
		myPage.ExceptionOutputStr(ex);
	}
}
</script>
<body oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onsource="window.event.returnValue=false" leftmargin="0" topmargin="0">
	<form name=form1 action="S_UserAddsys_rpt.aspx" method="post" target="main1"> 
		<table width="662" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
			<tr><td valign="top" align="center" colspan=3>
				<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>管理人员定义</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></tr></td>
				</table>   
			</td></tr>

			<tr><td valign="top" align="center" colspan=3>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
					<tr height="28px"><td valign=middle>&nbsp;院(系)/部/处室&nbsp;<select name=sel_yx><option value='' value='' selected></option><asp:Literal ID="opYX" Runat="server" Text=""></asp:Literal></select>
					工号/姓名&nbsp;<input type=text name=txt_xm value="" size="20" maxlength="20"></td>
					<td align=right width=10%><input type='button' name=button class=button  onclick='submitFrom()'value='检索'>&nbsp;
					</td></tr>
				</table>
			</td></tr>

			<tr>
				<td valign="top" align="center" height="100%" width=47% >
					<iframe name=main1 src="S_UserAddsys_rpt.aspx" width=98% height=99% frameborder=1 ></iframe>
				</td>
				<td width=6% align=center>
				<input type="button" name="Submit" value=">>" class="button" onclick="SQSet()"><br><br><br><br>
				<input type="button" name="Submit" value="<<" class="button" onclick="QXSet()"></td>

				<td valign="top" align="center" height="100%" width=47% >
					<iframe name=main2 src="S_UserAddweb_rpt.aspx" width=98% height=99% frameborder=1 ></iframe>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
