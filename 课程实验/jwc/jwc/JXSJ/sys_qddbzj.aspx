<%@ Page %>
<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<HTML>
	<HEAD>
		<title>确定答辩专家</title>
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
   var s=false,sn=0,strurl,idval='',radval='',j,vselzx,vselfx; 
   var zy='',xz='',nj='',dw='';  
   	    sn=window.document.all.lnum.value; //alert(sn);
	   for(j=1;j<=sn;j++){
		    if(eval("tops.document.all.Ck"+j+".checked")){
			    idval=eval("tops.document.all.Ck"+j+".value");
	 	        if(s==false){radval=idval;s=true;}
			    else{radval=radval+";"+idval;}
			  }
			 
         }
		if(radval==''){
			alert('须选定教师教辅人员！');
		}
		else if(window.document.all.hiddenZY.value==''||window.document.all.hiddenXZ.value=='')
		{
		  alert('须选定专业！');
		}
		else{
		    zy=window.document.all.hiddenZY.value;xz=window.document.all.hiddenXZ.value;
		    nj=window.document.all.nj.value;dw=window.document.all.yx.value;
		    strurl='sys_qddbzj_down.aspx?theval='+radval+'&zy='+zy+'&xz='+xz+'&nj='+nj+'&dw='+dw+'&types=1';//alert(strurl);			
			form1.action=strurl;
			form1.method='post';
			form1.target='downs';
			form1.submit();
			strurl='sys_qddbzj_top.aspx?theval='+radval+'&zy='+zy+'&xz='+xz+'&nj='+nj+'&dw='+dw;//alert(strurl);			
			form1.action=strurl;
			form1.method='post';
			form1.target='tops';
			form1.submit();
		}
 }
 function DelFun(theID)
 {
   var s=false,sn=0,strurl,idval='',radval='',j,vselzx,vselfx; 
   var zy='',xz='',nj='',dw='';  
   	    sn=window.document.all.dnum.value; //alert(sn);
	   for(j=1;j<=sn;j++){
		    if(eval("downs.document.all.Ck"+j+".checked")){
			    idval=eval("downs.document.all.Ck"+j+".value");
	 	        if(s==false){radval=idval;s=true;}
			    else{radval=radval+";"+idval;}
			  }
			 
         }
		if(radval==''){
			alert('须选定教师教辅人员！');
		}
		else{
		    zy=window.document.all.hiddenZY.value;xz=window.document.all.hiddenXZ.value;
		    nj=window.document.all.nj.value;dw=window.document.all.yx.value;
		    strurl='sys_qddbzj_down.aspx?theval='+radval+'&zy='+zy+'&xz='+xz+'&nj='+nj+'&dw='+dw+'&types=2';//alert(strurl);			
			form1.action=strurl;
			form1.method='post';
			form1.target='downs';
			form1.submit();
			strurl='sys_qddbzj_top.aspx?theval='+radval+'&zy='+zy+'&xz='+xz+'&nj='+nj+'&dw='+dw;//alert(strurl);			
			form1.action=strurl;
			form1.method='post';
			form1.target='tops';
			form1.submit();
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
  window.main.location.href='set_xzbj_bysjap_jlk.aspx'+theURL;
  
}
function SearchFun()
{
    var xnxq,kcid,zydm,nj,vselzx,vselfx;
	try{xnxq=form1.xnxq.value;kcid=form1.kcid.value;zydm=form1.zy.value;nj=form1.nj.value;}catch(e){}
	if(form1.selzx.checked)
		vselzx='1';
	else
		vselzx='0';
	if(form1.selfx.checked)
		vselfx='1';
	else
		vselfx='0';
		
	if(form1.kcid.value==''){alert('须选定环节！');}
	else{
		 strurl='set_xzbj_bysjap_left.aspx?xnxq='+xnxq+'&kcdm='+kcid+'&zydm='+zydm+'&nj='+nj+'&selzx='+vselzx+'&selfx='+vselfx;
	     window.left.location.href=strurl;
         strurl='set_xzbj_bysjap_right.aspx?xnxq='+xnxq+'&kcdm='+kcid+'&zydm='+zydm+'&nj='+nj;
		 window.right.location.href=strurl;
		 window.document.all.add.disabled=false;
		 window.document.all.del.disabled=false;
	}
}
function SelAll(theID)
{
    var sn;
	sn=window.document.all.lnum.value;
	if(theID.checked==true)
	{
	    window.status='正在全选，请稍候...';
		for(j=1;j<=sn;j++)eval("tops.document.all.Ck"+j+".checked=true;");
		window.status='';
	}
	else
	{
	    window.status='正在取消全选，请稍候...';
		for(j=1;j<=sn;j++)eval("tops.document.all.Ck"+j+".checked=false;");
		window.status='';
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
				thezz=eval("right.document.all.zdjs"+j+".value");
				idval=thexh+';'+thezz;
				if(s==false){radval=idval;s=true;}
			    else{radval=radval+"|"+idval;}
			 }
			 strurl='set_xzbj_bysjap_jlk.aspx?p=save&xnxq='+xnxq+'&kcid='+kcid+'&theval='+radval;
			 window.main.location.href=strurl;
	    }
	}
}
function loadDW()
{
   var nj,dw;
   //alert(window.document.all.nj.value);
   nj=window.document.all.nj.value;
   dw=window.document.all.yx.value;
   url="sys_qddbzj_left.aspx?nj="+nj+"&dw="+dw;
  window.document.all.form1.action=url;
  // alert(window.document.all.form1.action);
  window.document.all.form1.submit();
}
function postValue()
{
  var nj,dw;
  nj=window.document.all.nj.value;
   dw=window.document.all.bm.value;
   url="sys_qddbzj_top.aspx?nj="+nj+"&dw="+dw;
  window.tops.location.href=url;
  // alert(window.document.all.form1.action);
 // window.document.all.form1.submit();
}
		</script>
		<script language="C#" runat="server">
		protected string vXNXQ;
		private void Page_Load(object sender,System.EventArgs e){
				KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
				try{
					myPage.InitPage(true);
					DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
					vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdodbzj");
					if(vXNXQ.Length==0)
						Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
					else
						DoorOnOff("SJ_YX_TBZJ");
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
		<!-- onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false//-->
	</HEAD>
	<body leftmargin="0" topmargin="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>确定答辩专家</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center">
								<script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td id="objCx" vAlign="top" align="center" height="4%">
					<fieldset><legend></legend>
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center"
							border="0">
							<tr>
								<td width="53" >毕业年届</td>
								<td width="60" align="left" id="thenj"><select name="nj" style="WIDTH:55px"><%=(new ind_subPublic()).PutValue("pub_xn","")%></select>
								</td>
								<td width="60">院(系)/部</td>
								<td width="135" align="left" id="theyx"><select name="yx" style="WIDTH:130px" >
													<%=(new BLL_jxsj())._xzbj_bjsjap_selyx()%>
												</select>
								</td>													
								<td  align=right><input type="button" value="检索" name="search" class="button" onClick="loadDW()">
												<input type="button" value="保存" name="save" class="button" onClick="if(confirm('是否保存记录？')){loadDW();}else{return false;}">
								</td>
							</tr>							
						</table>
					</fieldset>
				</td>
			</tr><form name=form1 action=sys_qddbzj_left.aspx method=post target=leftFrame>
			<tr>
				<td vAlign="top" align="center" height="100%">
					<table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" height="100%">
						<tr>
							<td valign="top" align="left" height="5%" width="45%">
								<fieldset style="WIDTH:100%;HEIGHT:98%"><legend>专业</legend>
									<table border="0" cellpadding="0" cellspacing="0" align="left" width="100%" height="99%">
										<tr>
											<td width="100%" height="100%">
											<iframe name="leftFrame" src="sys_qddbzj_left.aspx" width="98%" height="99%" frameborder="0"></iframe>
											</td>
										</tr>
									</table><input name=hiddenZY value='' type=hidden ><input name=hiddenXZ value='' type=hidden >
								</fieldset>
							</td>
							<td height="100%" valign="middle" width="55%">
							<table border="0" cellpadding="0" cellspacing="0" align="center" width="100%" height="100%">
							<tr>
							<td height="45%" valign="middle" width="100%">
								<fieldset style="WIDTH:100%;HEIGHT:77%"><legend><asp:Literal id="pgfs" runat="server" Text="教师教辅人员"></asp:Literal></legend>
									<table border="0" cellpadding="0" cellspacing="0" align="left" width="100%" height="99%">
									     <tr>
											<td valign="top" align="" height="15%">
												<input name=selectA type=checkbox value=""  onclick=SelAll(this)>全选
											</td>	
											<td width=85% >部门<select name="bm" style="WIDTH:130px" onchange=postValue()>
													<%=(new BLL_jxsj())._xzbj_bjsjap_selyx()%>
												</select><input name=lnum value="0" type=hidden><input name=dnum value="0" type=hidden></td>										
										    </tr>
										<tr>
											<td valign="top" align="" height="100%" colspan=2>
												<iframe name="tops" src="sys_qddbzj_top.aspx" width="350" height="99%" frameborder="1"></iframe>
											</td>											
										</tr>
									</table>
								</fieldset>
							</td>
							</tr>
							<tr>
							<td height="5%" valign="center" width="100%" align=center>
								<input type="button" name="add" class="but20Down" onclick="ActFun('add');" >						
						      <input type="button" name="del" class="but20Up" onclick='DelFun("del")' >
							</td>
							</tr>
							<tr>
							<td height="45%" valign="middle" width="100%">
								<fieldset style="WIDTH:100%;HEIGHT:77%"><legend><asp:Literal id="Literal1" runat="server" Text="答辩专家列表"></asp:Literal></legend>
									<table border="0" cellpadding="0" cellspacing="0" align="left" width="100%" height="99%">
										<tr>
											<td valign="top" align="center" height="100%">
												<iframe name="downs" src="sys_qddbzj_down.aspx" width="350" height="99%" frameborder="1"></iframe>
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
			</tr></form>
		</table>
	</body>
</HTML>
