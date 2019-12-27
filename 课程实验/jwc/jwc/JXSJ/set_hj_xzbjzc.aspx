<html>
	<head>
		<title>分班级按环节确定周次</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
		<script language='javascript'>
		function show(theID,vP)
		{
			var theURL;
			var vNJ=document.all.selNJ.value;
			var vXNXQ=document.all.hidXNXQ.value;
			if(vP=='yx'){
			theURL='?p=yx&yx='+theID.value+'&nj='+vNJ;		
			}
			else if(vP=='zy'){
			//theURL='?p=zy&zy='+theID.value+'&nj='+vNJ+'&xnxq='+vXNXQ;	
			 theURL='';	
			}
			if(theURL!='')
			window.main.location.href='set_xzbj_bysjap_jlk.aspx'+theURL;
		}
		
		function chkValue(obj){
			try{
				var s=obj.name;
				if(s=="searchBtn"){
					window.Form1.action="./SET_HJ_XZBJZC_LeftRpt.aspx";
					window.Form1.method="post";
					window.Form1.target="LeftFrm";
					window.Form1.submit();
					window.RightFrm.location.href='./SET_HJ_XZBJZC_RightRpt.aspx';
					return true;
				}else if(s=="saveBtn"){
				    var flag=true;
				    //alert(document.all.chkJZCT.checked);
					if(document.all.chkJZCT.checked){
						var str=window.RightFrm.document.all.keyStr.value;
						var hjidArr=str.split('$');
						var oStr="";
						for(var i=0;i<hjidArr.length;i++){
							if(hjidArr[i].length>0){
								var tmpStr=eval("window.RightFrm.document.all.td_"+hjidArr[i]+".value;");
								if(oStr.length>0)
									oStr+=","+tmpStr;
								else
									oStr=tmpStr;
							}
						}
						if(oStr!=""){
							var arr=stringToSplit(oStr).split(',');
							for(var p=0;p<arr.length-1;p++){
								if(arr[p]==arr[p+1]){
									//alert(arr[p]);
									alert('周次冲突！');
									flag=false;
									break;
								}
							}
							if(arr[arr.length-2]==arr[length-1]){
								alert('周次冲突！');
								flag=false;
							}	
						}else{
							flag=false;
						}					
					}
					if(flag){
						window.RightFrm.Form1.action="./SET_HJ_XZBJZC_RightRpt.aspx";
						window.RightFrm.Form1.method="post";
						window.RightFrm.Form1.target="RightFrm";
						window.RightFrm.Form1.submit();
					}
					return flag;
				}
			}catch(e){alert(e);}
		}
		
		function stringToSplit(str){
			try{
				var result='',outStr='';
				if(str.length>0){
					var arr0=str.split(',');
					for(var i=0;i<arr0.length;i++){
						var tmp0=arr0[i];
						if(tmp0.indexOf('-')>-1){
							var arr1=tmp0.split('-');
							if(arr1.length==2){
								var v1=arr1[0];
								var v2=arr1[1];
								if((!isNaN(v1))&&(!isNaN(v2))){
									var tmp1=parseInt(v1);
									var tmp2=parseInt(v2);
									if(tmp2>tmp1){
										for(var j=tmp1;j<=tmp2;j++){
											if(outStr.length==0)
												outStr=j
											else
												outStr+=','+j	
										}
									}
								}
							}
						}else{
							if(outStr.length>0)
								outStr+=','+tmp0
							else
								outStr=tmp0	
						}
					}
				}
				var arr=outStr.split(',');
				for(var i=0;i<arr.length;i++)
					for(var j=0;j<arr.length;j++){
						if(parseInt(arr[i])<parseInt(arr[j])){
							var tmp=arr[i];
							arr[i]=arr[j];
							arr[j]=tmp;
						}
					}
				
				for(var k=0;k<arr.length;k++){
					var tmpStr=arr[k];
					if(tmpStr.length>0){
						if(result.length==0)
							result=tmpStr;
						else
							result+=','+tmpStr;
					}
				}
				return result;
			}catch(e){alert(e);}
		}
		function chkJZCTClick(obj){
			try{
				if(obj.checked)
					document.all.hidCT.value="1";
				else
					document.all.hidCT.value="0";
			}catch(e){alert(e);}
		}
		</script>
		<script language="C#" runat="server">
		protected string vXNXQ,vXNXQStr;
		private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj();
				BLL.include.ind_subPublic subPub=new BLL.include.ind_subPublic();
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdohjtoxzbjzc");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else{
					DoorOnOff("SJ_DW_HJ-ZC");
					vXNXQStr=subPub.GetValue("xnxq",vXNXQ);
				}
				opYX.Text=subPub.PutValue("YX",myPage.CUR_UserInfo.USER_OptYX);
				opNJ.Text=subPub.PutValue("xn","");
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
	<form name="Form1" action="./SET_HJ_XZBJZC_LeftRpt.aspx" target="LeftFrm">
		<table align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%">
				<tr>
					<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
							<tr valign="top">
								<td>
									<table width="660" border="0" cellspacing="0" cellpadding="0" align="center">
										<tr height="26">
											<td valign="middle" align="center"><b>分班级按环节确定周次</b></td>
										</tr>
										<tr>
											<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
											</td>
										</tr>
										<tr valign="middle" height="26">
											<td>
												<fieldset><legend></legend>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
														<tr valign="top" align="center" height="24">
															<td width="15%">年级<select name="selNJ" style="WIDTH:72px"><asp:Literal ID="opNJ" Runat="server" Text=""/></select></td>
															<td width="25%">学年学期<input type="text" name="vXNXQTxt" style="WIDTH:130px"  value="<%=vXNXQStr%>" title="<%=vXNXQStr%>" disabled></td>
															<td width="25%">院(系)/部<select name="selYX" style="WIDTH:120px" onChange="show(this,'yx')"><option value=""></option><asp:Literal ID="opYX" Runat="server" Text=""/></select></td>
															<td width="25%">专业<span id="thezy"><select name="zy" style="WIDTH:140px"></select></span></td>
														</tr>
													</table>
												</fieldset>
											</td>
										</tr>
										<tr valign="middle" height="26">
											<td>
												<fieldset><legend></legend>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
														<tr valign="top" align="left" height="24">
															<td width="35%"><input type="checkbox" name="chkHJZCWQD" value="1">限有环节周次未确定的班级</td>
															<td width="35%"><input type="checkbox" name="chkJZCT" value="1" onclick="chkJZCTClick(this)">禁止班级→环节周次冲突</td>
															<td width="30%" align="right">
																<input type="button" name="searchBtn" value="检索" class="but20" onclick="chkValue(this)"> 
																<input type="button" name="saveBtn" value="保存" class="but20" onclick="if(confirm('是否保存记录？')){return chkValue(this);}else{return false;}">&nbsp;
																<input type="hidden" name="hidXNXQ" value="<%=vXNXQ%>">
																<input type="hidden" name="hidNJ" value="">
																<input type="hidden" name="hidYX" value="">
																<input type="hidden" name="hidZY" value="">
																<input type="hidden" name="hidCT" value="0">
															</td>
														</tr>
													</table>
												</fieldset>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="99%">
					<td>
						<table width="100%" height="99%" border="0" cellspacing="0" cellpadding="0" align="center"
							bordercolordark="red">
								<tr valign="top">
									<td width="40%">
										<iframe name="LeftFrm" src="SET_HJ_XZBJZC_LeftRpt.aspx" style="WIDTH:40%;HEIGHT:99%" frameborder="1" />
										<iframe name="main" src="" style="DISPLAY:none;WIDTH:0px;HEIGHT:0px" frameborder="0"/>
									</td>
									<td width="60%">
										<iframe name="RightFrm" src="SET_HJ_XZBJZC_RightRpt.aspx" style="WIDTH:60%;HEIGHT:99%" frameborder="0"/>
									</td>
								</tr>
						</table>
					</td>
				</tr>
		</table>
	</form>
	</body>
</html>