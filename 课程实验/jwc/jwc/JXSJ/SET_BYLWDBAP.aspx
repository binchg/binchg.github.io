<%@ Page %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>毕业论文答辩安排</title>
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
					document.all.hidBYNJ.value=document.all.selBYNJ.value;
					document.all.hidZYID.value=document.all.zy.value;
					window.Form1.action="./SET_BYLWDBAP_TOPLEFT.aspx";
					window.Form1.method="post";
					window.Form1.target="topLeftFrm";
					window.Form1.submit();
					
					window.Form1.action="./SET_BYLWDBAP_TOPRIGHT.aspx";
					window.Form1.method="post";
					window.Form1.target="topRightFrm";
					window.Form1.submit();
					
					window.Form1.action="./SET_BYLWDBAP_BOTTOM.aspx";
					window.Form1.method="post";
					window.Form1.target="bottomFrm";
					window.Form1.submit();
				}else{
					alert('须选定专业！');
				}
			}else{
				var vP=""; 
				var leftValue=document.all.hidLeftCHKValue.value;
				var rightValue=document.all.hidRightCHKValue.value;
				var bottomValue=document.all.hidBottomCHKValue.value;
				if(s=="upToDown"){
					if(leftValue==""){
						alert('须选定答辩专家！')
					}else if(rightValue==""){
						alert('须选定答辩学生！')
					}else{
						vP="add";
					}
				}else if(s=="downToUp"){
					if(bottomValue==""){
						alert("须选定答辩安排！");
					}else
						vP="del"
				}
				if(vP!=""){
					window.Form1.action="./SET_BYLWDBAP_BOTTOM.aspx?p="+vP;
					window.Form1.method="post";
					window.Form1.target="bottomFrm";
					window.Form1.submit();
				}
			}
		}catch(e){alert(e);}
	}
	</script>
	<script language="vbscript">
	sub chkDateValue()
		dim dateTimeStr
		dateTimeStr=document.all.txtDBSJ.value
		if not isDate(dateTimeStr) then
			call msgBox("时间格式不正确！",0,"提示")
			document.all.txtDBSJ.value="<%=System.DateTime.Now.ToString()%>"
			document.all.txtDBSJ.focus()
		end if
	end sub
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
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdobylwdbap");
				opAddr.Text=mydata.opDBAddrs();
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else{
					DoorOnOff("SJ_YX_TBAP");
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
					<td valign="middle" align="center"><b>毕业论文答辩安排</b></td>
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
								<td width="27%">&nbsp;答辩时间<input type="text" name="txtDBSJ" value="<%=System.DateTime.Now.ToString()%>" onchange="chkDateValue()" style="width:120px;">
								</td>
								<td width="19%" colspan="2">
								答辩地点<select name="selAddr" style="width:250px;"><asp:Literal ID="opAddr" Text="" Runat="server"/></select>
								</td>
								<td width="27%" align="right">
								<input type="button" name="search" value="检索" class="but20" onclick="chkValue(this)">&nbsp;&nbsp;
								<input type="hidden" name="hidXNXQ" value="<%=vXNXQ%>">
								<iframe name="main" src="" style="DISPLAY:none;width:0%;height:0%;" frameborder="0"></iframe>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td></tr>
		<tr><td valign="bottom" align="center" height="99%">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="99%" bordercolorlight="red" bordercolordark="red">
			<tr valign="top" height="48%" width="100%">
				<td width="50%">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="100%">
					<tr valign="bottom"><td height="10"><div id="topLeftHeadStr"></div></td></tr>
					<tr valign="top"><td height="99%">
					<iframe name="topLeftFrm" src="SET_BYLWDBAP_TOPLEFT.aspx" style="width:99%;height:99%" frameborder="1"></iframe>
					</td>
					</tr>
					</table>
				</td>
				<td width="50%">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="100%">
					<tr valign="bottom"><td height="10"><div id="topRightHeadStr"></div></td></tr>
					<tr valign="top"><td>
					<iframe name="topRightFrm" src="SET_BYLWDBAP_TOPRIGHT.aspx" style="width:99%;height:99%" frameborder="1"></iframe>
					</td>
					</tr>
					</table>
				</td>
			</tr>
			<tr valign="top" height="5%">
				<td width="50%" colspan="2" align="center">
					<input type="button" name="upToDown" class="but20down" onclick="chkValue(this)">
					<input type="button" name="downToUp" class="but20up" onclick="chkValue(this)">
					<input type="hidden" name="hidBYNJ">
					<input type="hidden" name="hidZYID">
					<input type="hidden" name="hidLeftCHKValue">
					<input type="hidden" name="hidRightCHKValue">
					<input type="hidden" name="hidBottomCHKValue">
				</td>
			</tr>
			<tr valign="top" height="47%" width="100%">
				<td width="50%" colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="100%">
					<tr valign="bottom"><td height="10"><div id="bottomHeadStr"></div></td></tr>
					<tr valign="top"><td>
					<iframe name="bottomFrm" src="SET_BYLWDBAP_BOTTOM.aspx" style="width:99%;height:99%" frameborder="1"></iframe>
					</td>
					</tr>
					</table>
					
				</td>
			</tr>
		</table>
		</td></tr>
		</table>
     </form>
  </body>
</html>
