<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Sys_DBStuXZ</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language="JavaScript" src="../include/Scr/ind_HTML_hr.js"></script>
	<script language="javascript">
	function show(theID,vP)
	{
		try{	
			var theURL;
			var vNJ="";
			var vXNXQ=document.all.hidXNXQ.value;
			if(vP=='yx'){
			theURL='?p=yx&yx='+theID.value+'&nj='+vNJ;		
			}
			else if(vP=='zy'){
			//theURL='?p=zy&zy='+theID.value+'&nj='+vNJ+'&xnxq='+vXNXQ;	
			 theURL='';	
			}
			if(theURL!='')
			//alert(theURL);
			window.main.location.href='set_xzbj_bysjap_jlk.aspx'+theURL;
		}catch(e){alert(e);}
	}
	function chkValue(obj){
		try{
			var s=obj.name;
			var zy=document.all.zy.value;
			if(s=="search"){
				if(zy!=""){
					window.Form1.action="./Sys_DBStuXZ_leftRpt.aspx";
					window.Form1.target="leftFrm";
					window.Form1.method="post";
					window.Form1.submit();
					
					window.Form1.action="./Sys_DBStuXZ_RightRpt.aspx";
					window.Form1.target="rightFrm";
					window.Form1.method="post";
					window.Form1.submit();
				}else{
					alert('须选定院(系)/部 专业！');
				}
			}
		}catch(e){alert(e);}
	}
	function chkTxtZCValue(obj){
		try{
			var v=obj.value;
			if(isNaN(v)){
				alert('须录入数字！');
				obj.value='1';
				obj.focus();
			}
		}catch(e){alert(e);}
	}
	function chkSubFrmValue(obj){
	try{
		var theFrm=obj.name;
		var theZC=document.all.txtZC.value;
		var theFrmName="",theValueName="",result="";
		if(theFrm=="leftToRight"){
			theFrmName="leftFrm";
			theValueName="leftFrmChkValue";
		}else if(theFrm=="rightToLeft"){
			theFrmName="rightFrm";
			theValueName="rightFrmChkValue";
		}	
		if(theFrmName!="")
			result=eval("window."+theFrmName+".document.all."+theValueName+".value");
		document.all.keySubStr.value=result;
		//alert(result);
		if(theFrm=="leftToRight"&&(!(theZC>0))){
			alert('须确定组次（组次要大于0）！');
			document.all.txtZC.focus();
		}else{
			if(result!=""){
				var url="./Sys_DBStuXZ_rightRpt.aspx?typeZC="+((theFrm=="leftToRight")?"1":"0");
				//alert(url);
				window.Form1.action=url;
				window.Form1.method="post";
				window.Form1.target="rightFrm";
				window.Form1.submit();
			}
		}
	}catch(e){}
	}
	
	</script>
	<script language="C#" runat="server">
	protected string vXNXQ,vXNXQStr;
	private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.include.ind_subPublic subPub=new BLL.include.ind_subPublic();
				opYX.Text=subPub.PutValue("YX",myPage.CUR_UserInfo.USER_OptYX);
				opBJNJ.Text=subPub.PutValue("pub_xn","");
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdodbxsfz");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else{
					DoorOnOff("SJ_YX_TBXSFZ");
					vXNXQStr=subPub.GetValue("xnxq",vXNXQ);
				}
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
  </head>
  <body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0">
    <form id="Form1" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
		<tr><td valign="top" align="center">
		<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
				<tr height="28">
					<td valign="middle" align="center"><b>答辩学生分组</b></td>
				</tr>
				<tr>
					<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
				</tr>
				<tr>
					<td valign="middle" align="center" height="28">
						<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
							<tr valign="middle" align="left">
								<td width="27%">&nbsp;学年学期<input type="text" name="xnxq" value="<%=vXNXQStr%>" title="<%=vXNXQStr%>" style="width:120px;"></td>
								<td width="19%">毕业年届<select name="selBYNJ" style="width:70px;"><asp:Literal ID="opBJNJ" Runat="server" Text=""/></select></td>
								<td width="27%">院(系)/部<select name="selYX" style="WIDTH:120px" onChange="show(this,'yx')"><asp:Literal ID="opYX" Runat="server" Text=""/></select></td>
								<td width="27%">专业<span id="thezy"><select name="zy" style="WIDTH:140px"></select></span></td>
							</tr>
							<tr valign="middle" align="left">
								<td width="27%" colspan="2">&nbsp;组&nbsp;&nbsp;&nbsp;&nbsp;次<input type="text" name="txtZC"  style="width:70px;" value="1" onchange="chkTxtZCValue(this)"></td>
								<td width="27%" colspan="2" align="right"><input type="button" name="search" value="检索" class="but20" onclick="chkValue(this)">&nbsp;&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td></tr>
		<tr><td valign="bottom" align="center" height="99%">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="99%">
			<tr valign="bottom">
			<td width="41%">
			<iframe name="leftFrm" src="Sys_DBStuXZ_leftRpt.aspx" style="width:99%;height:99%;" frameborder="1"></iframe>
			<iframe name="main" src="" style="DISPLAY:none;width:0%;height:0%;" frameborder="0"></iframe>
			</td>
			<td width="6%" valign="middle">
				<input type="button" name="leftToRight" class="but20" value=">>" onclick="return chkSubFrmValue(this)"><br><br>
				<input type="button" name="rightToLeft" class="but20" value="<<" onclick="return chkSubFrmValue(this)">
				<input type="hidden" name="hidXNXQ" value="<%=vXNXQ%>">
				<input type="hidden" name="hidLeftCount" value="0">
				<input type="hidden" name="hidRightCount" value="0">
				<input type="hidden" name="hidBYNJ">
				<input type="hidden" name="hidZYID">
				<input type="hidden" name="keySubStr">
			</td>
			<td width="53%">
			<iframe name="rightFrm" src="Sys_DBStuXZ_rightRpt.aspx" style="width:99%;height:99%;" frameborder="1"></iframe>
			</td>
			</tr>
		</table>
		</td></tr>
		</table>
    </form>
  </body>
</html>
