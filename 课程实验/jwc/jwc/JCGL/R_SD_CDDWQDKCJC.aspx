<%@ Page language="c#" Codebehind="R_SD_CDDWQDKCJC.aspx.cs" AutoEventWireup="false" Inherits="BookWeb.JCGL.R_SD_CDDWQDKCJC" %>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="JavaScript">
		var rightfrmurl,mainurl;
		function chgval(theID,theval)
		{
			var theURL;
			var cbs;
			var jc;
			if(theval=='cddw'){    
				theURL='R_SD_CDDWQDKCJC_left_rpt.aspx?xnxq='+form1.xnxq.value+'&cddwid='+form1.sel_cddw.value+'&kchj='+form1.kc.value+'&yqrkcflag='+form1.yqrkcflag.value+'&rxflag=0&xsqrlag='+form1.xsqrlag.value;
 				window.leftfrm.location.href=theURL;
 				}
 			else if(theval=='kchj'){
 				if(event.keyCode==13){
 					theURL='R_SD_CDDWQDKCJC_left_rpt.aspx?xnxq='+form1.xnxq.value+'&cddwid='+form1.sel_cddw.value+'&kchj='+form1.kc.value+'&yqrkcflag='+form1.yqrkcflag.value+'&rxflag=0&xsqrlag='+form1.xsqrlag.value;
 					window.leftfrm.location.href=theURL;
 				}
 			}
			else if(theval=='press'){
				cbs=theID.value;
				jc=document.all.jc.value;
				if(cbs==''&&jc.replace(' ','')==''){
					alert('需选择出版社或输入教材信息！');
				}else{
					theURL='R_SD_CDDWQDKCJC_right_rpt.aspx?xnxq='+form1.xnxq.value+'&kchj='+document.all.kchj.value+'&pressid='+cbs;
 					window.rightfrm.location.href=theURL;
 				}
			}
			else{
				
				cbs=document.all.sel_cbs.value;
				jc=theID.value;
				if(event.keyCode==13){
					if(cbs==''&&jc.replace(' ','')==''){
						alert('需选择出版社或输入教材信息！');
					}else{
						theURL='R_SD_CDDWQDKCJC_right_rpt.aspx?xnxq='+form1.xnxq.value+'&kchj='+document.all.kchj.value+'&pressid='+cbs+'&jc='+jc; 
 						window.rightfrm.location.href=theURL;
					}
				}
			}
		}
		function chgchk(theID,vT)
		{
			if(vT=='1'){
				if(theID.checked==true)
					theID.value='1';
				else
					theID.value='0';
			}else{
				if(theID.checked==true){
					theID.value='1';
					form1.yqrkcflag.disabled=true;}
				else{
					theID.value='0';
					form1.yqrkcflag.disabled=false;}
				}
			theURL='R_SD_CDDWQDKCJC_left_rpt.aspx?xnxq='+form1.xnxq.value+'&cddwid='+form1.sel_cddw.value+'&kchj='+form1.kc.value+'&yqrkcflag='+form1.yqrkcflag.value+'&rxflag=0&xsqrlag='+form1.xsqrlag.value;
			window.leftfrm.location.href=theURL;
		}

		function delvalue()
		{
			var j,radval,idval,s=false,strurl;
			var sn=parseInt(form1.num.value);
			if(sn>=1){ 
 				for(j=1;j<=sn;j++){
				if(eval("main.document.all.chk"+j+".checked")){
					idval=eval("main.document.all.QDvalue"+j+".value");
					if(s==false){radval=idval;s=true;}
					else{radval=radval+"|"+idval;}
   				}
				}
				if(!s){alert("须选定要取消的课程→教材！");return false;}
				if(confirm('是否取消选定记录？')){
					strurl='R_SD_CDDWQDKCJC_ZZ.aspx?theflag=del&theval='+form1.xnxq.value+'&theval1='+radval+'&theval2='+form1.xsqrlag.value+'&theval3='+form1.sel_cbs.value;
					window.frm.location.href=strurl;
				}
			}
		}
		function addvalue()
		{
			var j,radval,idval,s=false,strurl;
			var sn=parseInt(form1.jcnum.value);
			if(sn>=1){ 
				window.status='正在处理数据．．．';
 				for(j=1;j<=sn;j++){
				if(eval("rightfrm.document.all.ChkJC"+j+".checked")){
					idval=eval("rightfrm.document.all.JCchk"+j+".value");
					if(s==false){radval=idval;s=true;}
					else{radval=radval+","+idval;}
   				}
				}
					if(!s){alert("须选定课程！");return false;}
				if(confirm('是否确定记录？')){
					strurl='R_SD_CDDWQDKCJC_ZZ.aspx?theflag=jlkc&theval='+form1.xnxq.value+'&theval1='+form1.kchj.value+'&theval2='+radval+'&theval3='+form1.xsqrlag.value;
					window.frm.location.href=strurl;
					rightfrmurl='R_SD_CDDWQDKCJC_right_rpt.aspx?xnxq='+form1.xnxq.value+'&kchj='+form1.kchj.value+'&pressid='+form1.sel_cbs.value+'&jc='+form1.jc.value;
					mainurl='R_SD_CDDWQDKCJC_bottom_rpt.aspx?p=add&xnxq='+form1.xnxq.value+'&jc='+radval+'&kchj='+form1.kchj.value+'&xsqrlag='+form1.xsqrlag.value;
					window.setTimeout("refresh()",2000);
				}
				window.status='';
			}
		}

		function refresh()
		{
			window.rightfrm.location.href=rightfrmurl;
			window.main.location.href=mainurl;
		}
		
		
		function savevalue()
		{
			var j,radval,idval,s=false,strurl,sl;
			var sn=parseInt(form1.num.value);
			if(sn>=1){ 
 				for(j=1;j<=sn;j++){
				if(eval("main.document.all.chk"+j+".checked")){
					idval=eval("main.document.all.QDvalue"+j+".value");
					sl=parseInt(eval("main.document.all.stunum"+j+".value"));
					sl=sl+parseInt(eval("main.document.all.jsnum"+j+".value"));
					if(sl<0){sl=0;}
					idval=idval+"@"+sl;
					if(eval("main.document.all.tea"+j+".checked")){idval=idval+"@1";}
					else{idval=idval+"@0";}
					if(s==false){radval=idval;s=true;}
					else{radval=radval+"|"+idval;}
   				}
				}
				if(!s){alert("须选定课程！");return false;}
				if(confirm('是否保存记录？')){
					strurl='R_SD_CDDWQDKCJC_ZZ.aspx?theflag=save&theval='+form1.xnxq.value+'&theval1='+radval+'&theval2='+form1.sel_cbs.value+'&xsqrlag='+form1.xsqrlag.value;
					//alert(strurl);
					window.frm.location.href=strurl;
					//strurl='R_SD_CDDWQDKCJC_bottom_rpt.asp?xnxq='+vXNXQ+'&kchj='+vKCID;
					//window.main.location.href=strurl;
					//strurl='R_SD_CDDWQDKCJC_right_rpt.asp?xnxq='+vXNXQ+'&kchj='+vKCID;
					//window.rightfrm.location.href=strurl;
					
				}
			}
		}
	</script>
	</head>
	<body bgProperties=fixed bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

		<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center" >
			<tr><td valign="top" align="center" height="5%"  colspan=2>
				<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td valign="bottom" align="center"><b>确认课程/环节→教材</b></td></tr>
					<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
				</table>   
			</td></tr> 
			<form name="form1" method="post" action="R_SD_CDDWQDKCJC_rpt.aspx">
				<tr><td valign="bottom" align="center" height="22px" colspan=2 width="100%">  
					<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
						<tr valign="middle">
							<td width="305px" height="100%">
								<table width="100%" border="1" cellspacing="0" cellpadding="0" height="100%" align="center" bordercolorlight=#89bfa7 bordercolordark=#FFFFFF>
									<tr><td width="100%">
									<table align='left' border=0 cellspacing=0 cellpadding=0 align=center>
									<tr><td width=55 HEIGHT=26 align=right nowrap>承担单位&nbsp;
   									</td><td valign=middle align=right>
									<select name=sel_cddw style='width:120px' onchange=chgval(this,'cddw')>
									<%=SelObj.SetValue("cddw",USER_OPTDW)%>
									</select>
   									</td></tr></table>
							课程&nbsp;<input name="kc" style="width:90px" onKeyDown="chgval(this,'kchj')"  title="输入检索信息后按＂回车＂键"></td></tr></table></td>
							<td width="355px" align="right" >
								<table width="100%" border="1" cellspacing="0" cellpadding="0" height="100%" align="right" bordercolorlight=#89bfa7 bordercolordark=#FFFFFF>
									<tr><td width="100%" align="left" >&nbsp;出版社&nbsp;
									<select name="sel_cbs" style="width:130px" onChange="chgval(this,'press')" >
									<%=SelObj.SetValue("CBS","")%>
									</select>&nbsp;教材&nbsp;<input name="jc" style="width:125px" onKeyDown="chgval(this,'jc')" title="输入检索信息后按＂回车＂键" ></td></tr></table>
							</td>
						</tr>
					</table>
				</td></tr> 
				<tr><td valign="bottom" align="left" height="16px" width="305px" >待确认课程/环节：<span id="kcs"></span></td>
					<td valign="bottom" align="left" height="16px" width="355px">&nbsp;待确认教材：<span id="jcs"></span></td>
				</tr>
				
				<tr height="50%" >
					<td height="50%" width="305px" align="left">
					<iframe name=leftfrm src="R_SD_CDDWQDKCJC_left_rpt.aspx" width=100% height=100% frameborder=1></iframe>
					</td>
					<td height="50%" width="355px" align="right">
					<iframe name=rightfrm src="R_SD_CDDWQDKCJC_right_rpt.aspx" width=99% height=100% frameborder=1></iframe>
					</td>
				</tr>

				<tr><td valign="bottom" align="center" height="22px" colspan=2>
				<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr valign="middle">
					<td width="50%"><input name="yqrkcflag" type="checkbox"  value="0" onClick="chgchk(this,'1')" >含已确认教材种类的课程/环节
									<input name="xsqrlag" type="checkbox"  value="0"  onClick="chgchk(this,'2')" style="display:none" ><!--依据学生网上确认课程/环节→需要教材-->
					</td>
					<td width="40%" align="center" >
									<input type="button"   name="add" class=but20down disabled onClick="addvalue()"> 
									<input type="button" name="del"   class=but20up  disabled onClick="delvalue()">
					</td>
					<td width="10%" align="right" >
									<input type="button" value="保存" name="save" class=button disabled onClick="savevalue()">
					</td></tr> 
				</table></td></tr> 
				<input name="xnxq" type="hidden" value="<%=vXNXQ%>">
				<input name="kchj" type="hidden" >
				<input name="num" type="hidden" >
				<input name="jcnum" type="hidden" >
			</form>
			<tr height="35%" >
				<td height="35%" colspan=2 width="100%">
					<iframe name=frm src="" style="display:none;width:500px;height:100"></iframe>
					<iframe name=main src="R_SD_CDDWQDKCJC_bottom_rpt.aspx" width=100% height=100% frameborder=1></iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
<script language=javascript>document.all.sel_cddw.onchange();</script>
