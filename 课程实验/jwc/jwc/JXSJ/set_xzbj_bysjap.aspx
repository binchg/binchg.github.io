<%@ Import NameSpace="BLL.include"%>
<%@ Import NameSpace="BLL.JXSJ"%>
<HTML>
	<HEAD>
		<title>毕业设计安排</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language="JavaScript">
function ActFun(theID)
 {
   var s=false,sn=0,strurl,idval='',radval='',j,vselzx,vselfx;   
   if(form1.selzx.checked)
			vselzx='1';
		else
			vselzx='0';
		if(form1.selfx.checked)
			vselfx='1';
		else
			vselfx='0';
		
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
		else if((form1.nj.value=='')||(form1.kcid.value=='')){alert('须选定年级/专业！');}
		else if(form1.sjtm.value==''){alert('须选定设计题目！');}
		else{
			strurl='set_xzbj_bysjap_left.aspx?theval='+radval+'&xnxq='+form1.xnxq.value+'&kcdm='+form1.kcid.value+'&nj='+form1.nj.value+'&zydm='+form1.zy.value+'&selzx='+vselzx+'&selfx='+vselfx;
			
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
		if(form1.kcid.value==''){alert('须选定环节！');}
		else if((form1.nj.value=='')||(form1.kcid.value=='')){alert('须选定年级/专业！');}
		else{					
			strurl='set_xzbj_bysjap_right.aspx?flag=del&theval='+radval+'&xnxq='+form1.xnxq.value+'&kcdm='+form1.kcid.value+'&nj='+form1.nj.value+'&zydm='+form1.zy.value+'&selzx='+vselzx+'&selfx='+vselfx;
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
  window.main.location.href='set_xzbj_bysjap_jlk.aspx'+theURL;
  
}
function SearchFun(theID)
{
    var xnxq,kcid,zydm,nj,vselzx,vselfx;
	try{xnxq=form1.xnxq.value;kcid=form1.kcid.value;zydm=form1.zy.value;nj=form1.nj.value;}catch(e){}
	
	if(form1.selzx.checked)
	{	vselzx='1';
		//alert(vselzx);
		}
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
    var sn,j,s;
	if(theID.value=='left'){
		sn=window.document.all.lnum.value;
		if(sn>0){
		    if(window.document.all.selalll.checked==true){s=true;left.document.all.theCount.innerHTML=sn;}
			else{s=false;left.document.all.theCount.innerHTML=0;}
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
		</script>
		<script language="C#" runat="server">
	protected string vXNXQ;
	private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdoxzbjtobysjap");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else
					DoorOnOff("SJ_YX_BJ-BYSJAP");
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
	<body leftMargin="0" topMargin="0">
		<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
			<tr>
				<td vAlign="top" align="center" colSpan="3">
					<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
						<tr>
							<td vAlign="bottom" align="center"><b>毕业设计安排</b></td>
						</tr>
						<tr>
							<td vAlign="bottom" align="center">
								<script language="JavaScript">Draw_HR('99.5%')</script>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="form1" action="" method="post">
				<tr>
					<td width="100%" colSpan="3" height="50">
						<table height="100%" cellSpacing="0" borderColorDark="#ffffff" cellPadding="0" width="100%"
							align="center" borderColorLight="#75a7ae" border="1">
							<tr>
								<td width="100%" height="25">
									<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<tr>
											<td align="left" width="5%" height="100%">毕业<br>
												年届</td>
											<td id="thenj" align="left" width="8%" height="100%"><select style="WIDTH: 55px" name="nj"><%=(new ind_subPublic()).PutValue("pub_xn","")%></select></td>
											<td align="center" width="10%" height="100%">院(系)/部</td>
											<td id="theyx" align="left" width="20%" height="100%"><select style="WIDTH: 130px" onchange="show(this,'yx')" name="yx">
													<%=(new BLL_jxsj())._xzbj_bjsjap_selyx()%>
												</select></td>
											<td align="center" width="5%" height="100%">专业</td>
											<td id="thezy" width="22%" height="100%"><select style="WIDTH: 140px" onchange="show(this,'zy')" name="zy"><option selected></option>
												</select></td>
											<td align="center" width="9%" height="100%">环节</td>
											<td id="thesx" width="24%" height="100%"><select style="WIDTH: 150px" onchange="show(this,'sx')" name="kcid"><option selected></option>
												</select></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" height="25">
									<table height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
										<tr>
											<td id="thesjtm" style="WIDTH: 277px" align="left" width="277" height="100%">设计题目&nbsp;<select style="WIDTH: 220px" name="sjtm">
													<option value="" selected></option>
												</select></td>
											<td id="theddjs" width="43%" height="100%">指导教师&nbsp;<select style="WIDTH: 120px" name="ddjs"></select>
												<input style="HEIGHT: 20px" type="checkbox" CHECKED value="1" name="selzx">主修 <input style="HEIGHT: 20px" type="checkbox" value="1" name="selfx">辅修
											</td>
											<td align="right" width="14%" height="100%"><input class="button" onclick="SearchFun()" type="button" value="检索" name="search">
												<input class="button" disabled onclick="if(confirm('是否保存记录？')){SaveFun();}else{return false;}"
													type="button" value="保存" name="save">
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left" width="45%" height="20"><input style="HEIGHT: 20px" onclick="SelAll(this)" type="checkbox" value="left" name="selalll">全选</td>
					<td width="7%" height="20"></td>
					<td align="left" width="48%" height="20"><input style="HEIGHT: 20px" onclick="SelAll(this)" type="checkbox" value="right" name="selallr">全选</td>
				</tr>
				<tr>
					<td align="center" width="45%" height="90%"><iframe name="left" src="set_xzbj_bysjap_left.aspx" frameBorder="1" width="100%" height="100%"></iframe>
					</td>
					<td vAlign="middle" align="center" width="7%" height="90%"><input class="button" disabled onclick='ActFun("add")' type="button" value=">>" name="add"><br>
						<br>
						<input class="button" disabled onclick=ActFun('del') type="button" value="<<" name="del">
					</td>
					<td align="center" width="48%" height="90%"><iframe name="right" src="set_xzbj_bysjap_right.aspx" frameBorder="1" width="100%" height="100%"></iframe>
					</td>
				</tr>
				<iframe style="DISPLAY: none; WIDTH: 0px; HEIGHT: 0px" name="main" src="" frameBorder="0">
				</iframe><input type=hidden value="<%=vXNXQ%>" 
  name=xnxq> 
				<!--lnum：左窜口中记录数-->
				<!--rnum：右窜口中记录数--><input type="hidden" name="lnum"> <input type="hidden" name="rnum">
			</form>
		</table>
	</body>
</HTML>
