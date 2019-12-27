<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
%>
<HTML>
	<HEAD>
		<title>提交课程设计安排</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="JavaScript">
function ActFun(theID)
 {
   var s=false,sn=0,strurl,idval='',radval='',j;   
   if(theID=='add'){
   	    sn=window.document.all.lnum.value; 
	    for(j=1;j<=sn;j++){
		    if(eval("left.document.all.lchk"+j+".checked")){
			    idval=eval("left.document.all.lsel"+j+".value");
	  	        if(s==false){radval=idval;s=true;}
			    else{radval=radval+";"+idval;}
     	    }
	    }
		if(form1.kcid.value==''){
			alert('须选定环节！');
		}
		else{
			strurl='set_kcsjap_left.aspx?theval='+radval+'&xnxq='+form1.xnxq.value+'&kcdm='+form1.kcid.value;
			form1.action=strurl;
			form1.method='post';
			form1.target='main';
			form1.submit();
		}
   }
   else{
        sn=window.document.all.rnum.value; 
	    for(j=1;j<=sn;j++){
		    if(eval("right.document.all.rchk"+j+".checked")){
			    idval=eval("right.document.all.rsel"+j+".value");
	  	        if(s==false){radval=idval;s=true;}
			    else{radval=radval+";"+idval;}
     	    }
	    }
		if(form1.kcid.value==''){
			alert('须选定环节！');
		}
		else{
			strurl='set_kcsjap_right.aspx?flag=del&theval='+radval+'&xnxq='+form1.xnxq.value+'&kcdm='+form1.kcid.value;
			window.right.location.href=strurl;
		}
   }
 }
 
function show(theID,vP)
{
  var theURL;
  if(vP=='yx'){
   theURL='?p=yx&yx='+theID.value+'&nj='+form1.nj.value;		
  }
  else if(vP=='zy'){
   theURL='?p=zy&zy='+theID.value+'&nj='+form1.nj.value+'&xnxq='+form1.xnxq.value;		
  }
  else if(vP=='sx'){
   theURL='?p=sx&sx='+theID.value+'&xnxq='+form1.xnxq.value+'&nj='+form1.nj.value;		
  }
  else{
   theURL='?p=js&js='+theID.value;	
  }
  window.main.location.href='set_kcsjap_jlk.aspx'+theURL;
  
}
function SearchFun()
{
    var xnxq,kcid,bjdm;
	try{xnxq=form1.xnxq.value;kcid=form1.kcid.value;bjdm=form1.bjdm.value;}catch(e){}
	if(form1.kcid.value==''){alert('须选定环节！');}
	else if(form1.bjdm.value==''){alert('须选定行政班级！');}
	else{
		 strurl='set_kcsjap_left.aspx?xnxq='+xnxq+'&kcdm='+kcid+'&bjdm='+bjdm;
	     window.left.location.href=strurl;
         strurl='set_kcsjap_right.aspx?xnxq='+xnxq+'&kcdm='+kcid+'&bjdm='+bjdm;
		 window.right.location.href=strurl;
		 window.document.all.add.disabled=false;
		 window.document.all.del.disabled=false;
	}
}
function SelAll(theID)
{
    var sn,j,s;
	if(theID.value=='left'){
		sn=window.document.all.lnum.value;
		if(sn>0){
		    if(window.document.all.selalll.checked==true){s=true; left.document.all.selectCount.innerHTML=sn;}
			else{s=false;left.document.all.selectCount.innerHTML='0';}
			for(j=1;j<=sn;j++)eval("left.document.all.lchk"+j+".checked="+s+";");
	    }
	}
	else{
		sn=window.document.all.rnum.value;
		if(sn>0){
			if(window.document.all.selallr.checked==true){s=true;}
			else{s=false;}
			for(j=1;j<=sn;j++)eval("right.document.all.rchk"+j+".checked="+s+";");
	    }
	}
}

function SaveFun()
{
	var xnxq,kcid,sn,j,s=false,thexh='',thezz='',idval='',radval='',strurl;
	try{xnxq=form1.xnxq.value;kcid=form1.kcid.value;}catch(e){}
	if(form1.kcid.value==''){alert('须选定环节！');}
	else{
		 sn=window.document.all.rnum.value;
		 if(sn>0){
		     for(j=1;j<=sn;j++){
			 	thexh=eval("right.document.all.rsel"+j+".value");	
				thezz=eval("right.document.all.selzz"+j+".value");
				idval=thexh+';'+thezz;
				if(s==false){radval=idval;s=true;}
			    else{radval=radval+"|"+idval;}
			 }
			 strurl='set_kcsjap_jlk.aspx?p=save&xnxq='+xnxq+'&kcid='+kcid+'&theval='+radval;
			 window.main.location.href=strurl;
	    }
	}
}

function changezy(){
  document.all.form1.yx.onchange();
}
		</script>
		<script language="C#" runat="server">
protected string vXNXQ;
private void Page_Load(object sender,System.EventArgs e){
	KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
	try{
		myPage.InitPage(true);
		BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj();
		BLL.include.ind_subPublic subPub=new BLL.include.ind_subPublic();
		DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
		vXNXQ=mydata.getXNXQofJXSJCtrl("sj_cddwdokcsjap");
		if(vXNXQ.Length==0)
			Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
		else
			DoorOnOff("SJ_DW_KCSJAP");
			
		opYX.Text=pSub._xzbj_sxap_yx(myPage.CUR_UserInfo.USER_OptYX);
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
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center" colspan="3">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center"><b>提交课程设计安排</b></td>
						</tr>
						<tr>
							<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" action="" method="post">
				<tr>
					<td height="75" width="100%" colspan="3">
						<table width="100%" border="1" cellspacing="0" cellpadding="0" height="100%" align="center"
							bordercolorlight="#75a7ae" bordercolordark="#ffffff">
							<tr>
								<td height="25" width="100%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
										<tr>
											<td height="100%" width="5%" align="left">年级</td>
											<td height="100%" width="8%" align="left" id="thenj">
											<select name="nj" style="WIDTH:55px" onchange='changezy()'>
											<asp:Literal ID="opNJ" Runat="server" Text=""/>
											</select></td>
											<td height="100%" width="10%" align="center">院(系)/部</td>
											<td height="100%" width="20%" align="left" id="theyx">
												<select name="yx" style="WIDTH:130px" onChange="show(this,'yx')">
												<asp:Literal ID="opYX" Runat="server" Text=""/>
												</select></td>
											<td height="100%" width="5%" align="center">专业</td>
											<td height="100%" width="22%" id="thezy"><select name="zy" style="WIDTH:140px" onChange="show(this,'zy')"><option selected></option>
												</select></td>
											<td height="100%" width="9%" align="center">环节</td>
											<td height="100%" width="24%" id="thesx"><select name="kcid" style="WIDTH:150px" onChange="show(this,'sx')"><option selected></option>
												</select></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="25" width="100%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
										<tr>
											<td height="100%" width="8%" align="left">行政班级</td>
											<td height="100%" width="26%" id="thexzbj"><select name="bjdm" style="WIDTH:170px"><option selected></option>
												</select></td>
											<td height="100%" width="50%" id="theddjs">
												指导教师&nbsp;<select name="ddjs" style="WIDTH:135px"></select>
												<select name="ddjs1" style="WIDTH:135px">
												</select>
											</td>
											<td height="100%" width="14%" align="right">
												<input type="button" value="检索" name="search" class="button" onClick="SearchFun()" disabled>
												<input type="button" value="保存" name="save" class="button" disabled onClick="if(confirm('是否保存记录？')){SaveFun();}else{return false;}">
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="25" width="100%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
										<tr>
											<td height="100%" width="14%" align="left">
												组次&nbsp;<select name="zc" style="WIDTH:55px">
													<%for(int i=0;i<30;i++){%>
													<option value='<%=i+1%>'><%=i+1%></option>
													<%}%>
												</select>
											</td>
											<td height="100%" width="43%" align="right" id="thesjtm">
												设计题目&nbsp;<select name="sjtm" style="WIDTH:225px">
													<option value="" selected></option>
												</select></td>
											<td height="100%" width="20%" align="right">
												设计场地&nbsp;<input type="text" style="WIDTH:70px" onChange="show(this,'js')"></td>
											<td height="100%" width="23%" align="right" id="thejs">
												<select name="js" style="WIDTH:150px">
													<option value="" selected></option>
												</select>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="20" width="45%" align="left"><input type="checkbox" name="selalll" style="HEIGHT:20px" value="left" onClick="SelAll(this)">全选</td>
					<td height="20" width="7%"></td>
					<td height="20" width="48%" align="left"><input type="checkbox" name="selallr" style="HEIGHT:20px" value="right" onClick="SelAll(this)">全选</td>
				</tr>
				<tr>
					<td height="85%" width="45%" align="center"><iframe name="left" src="set_kcsjap_left.aspx" height="100%" width="100%" frameborder="1"></iframe>
					</td>
					<td height="85%" width="7%" align="center" valign="middle">
						<input type="button" value=">>" name="add" class="button" onclick="if(confirm('是否保存记录？')){ActFun('add');}else{return false;}" disabled><br>
						<br>
						<input type="button" value="<<" name="del" class="button" onclick="if(confirm('是否删除选定记录？')){ActFun('del');}else{return false;}" disabled>
					</td>
					<td height="80%" width="48%" align="center"><iframe name="right" src="set_kcsjap_right.aspx" height="100%" width="100%" frameborder="1"></iframe>
					</td>
				</tr>
				<iframe name="main" src="" style="DISPLAY:none;WIDTH:0px;HEIGHT:0px" frameborder="0">
				</iframe><input type="hidden" name="xnxq"  value="<%=vXNXQ%>"> 
				<!--lnum：左窜口中记录数-->
				<!--rnum：右窜口中记录数-->
				<input type="hidden" name="lnum"> <input type="hidden" name="rnum">
			</form>
		</table>
	</body>
</HTML>
