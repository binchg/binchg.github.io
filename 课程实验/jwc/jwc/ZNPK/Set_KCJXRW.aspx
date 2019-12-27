<%@ Import NameSpace="BLL.ZNPK"%>
<%@ Page language="c#" Codebehind="Set_KCJXRW.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.Set_KCJXRW" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>设置学期教学任务</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
		<script language="JavaScript">
			//弹出设置上课群组页面
			function SetSKQZ()              
			{	
				var winName="winKPT";
				Tform='width=500,height=300';//toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no';
				theURL='ADD_SKQZ.aspx?xnxq='+Form1.xnxq.value;
				pop=window.open(theURL,winName,Tform);
				pop.moveTo(100,75);
			}

			function AddJCYQ(theID)             
			{  
				var theURL;
				var bottonname=theID.value;
				var i;
				var j;
				var time;
				try{
					if(bottonname=='节次安排要求'){
						document.all.Layer1.style.display='';
						theURL='ADD_KC_JCYQ.aspx?xnxq='+Form1.xnxq.value+'&jcyq='+Form1.jcyqap.value;
						window.showjc.location.href=theURL;
						theID.value='确定要求';
					}else{
						time='';
 						for(i=0;i<7;i++){
   							for(j=0;j<7;j++){
	 							time=time+eval("window.showjc.document.all.id"+i+j+".value")
							}
 						}
						if((time=='')&&(length(time)==49)){
							//alert('操作失败！');
							return false;
						}else{
							window.document.all.jcyqap.value=time;
						}
						document.all.Layer1.style.display='none';
						theID.value='节次安排要求';
					}
				}catch(e){
					window.document.all.jcyqap.value='0000000000000000000000000000000000000000000000000';
					document.all.Layer1.style.display='none';
					theID.value='节次安排要求';
				}
			}

			function radon()          
			{ 
				var theURL;
				var sel_cddw;
				var XRX_Flag;
				try{
					sel_cddw=Form1.sel_cddw.value;
					if(Form1.XRX_Flag.checked){
						XRX_Flag="1";
						document.all.CXFX_AREA.style.visibility='hidden';
					}else{
						XRX_Flag="0";
						document.all.CXFX_AREA.style.visibility='';
					}
					if(Form1.rad1.checked){theURL="0";}
					if(Form1.rad2.checked){theURL="1";}
					//通过预选
					if(theURL=="0")       
					{
						document.all.RX_AREA.style.visibility='hidden';
						document.all.XCX_Flag.disabled=false;
					}
					//不通过预选 
					else                
					{
						document.all.RX_AREA.style.visibility='';
						document.all.XCX_Flag.disabled=true;
					}         
				}catch(e){}    
				theURL='Set_KCJXRW_rpt.aspx?yxflag='+theURL+'&xnxq='+Form1.xnxq.value+'&sel_cddw='+sel_cddw+'&XRX_Flag='+XRX_Flag+'&kcmc='; 
				window.main.location.href=theURL;
			}                                                    

			function showlesson()          
			{         
				var theURL;
				var theID;
				var xnxq;
				var kcmc;
				var cddw;
				var XRX_Flag;
				try{
					xnxq=Form1.xnxq.value;
					//kcmc=Form1.kcmc.value;
					cddw=Form1.sel_cddw.value;
					
					if(Form1.XRX_Flag.checked){XRX_Flag="1";}else{XRX_Flag="0";}
					if(window.document.all.rad1.checked==true){theID='0';}else{theID='1';}
					theURL='Set_KCJXRW_rpt.aspx?yxflag='+theID+'&xnxq='+xnxq+'&sel_cddw='+cddw+'&XRX_Flag='+XRX_Flag;                    
					window.main.location.href=theURL;
				}catch(e){}
			} 
		    
		    //双击行政班级列表
			function selxzbj(theID)         
			{  
				var vStr;
				var temp;
				var b="";
				var vURL;
				if (theID.selectedIndex!=-1){
					vStr=theID.options[theID.selectedIndex].value;
					if(vStr!="Nothing"){
						b=vStr;
						vURL='Set_KCJXRW_ZZ.aspx?theflag=xzbj&theval='+b;
						window.frm.location.href=vURL;
						if((Form1.hbrs.value!='')&&(Form1.bs.value!='')){Form1.save.disabled=false;}	
					}
				}
			}
		 
			//双击合班班级列表
			function selhbbj(theID)            
			{  
				var vStr;
				var temp;
				var b="";
				//下拉框有信息
				if (theID.selectedIndex!=-1){     
					vStr=theID.options[theID.selectedIndex].value;
					if(vStr!="Nothing"){          
						b=vStr;
						if(theID.options.length==1){
							Form1.save.disabled=true;
							Form1.hbrs.value=0;
						}else{
							Form1.save.disabled=true;
							if((Form1.hbrs.value!='')&&(Form1.bs.value!='')&&(Form1.hbbj.value!='')){Form1.save.disabled=false;}
						}
						vURL='Set_KCJXRW_ZZ.aspx?theflag=hbbj&theval='+b+'&theval1='+Form1.xnxq.value+'&theval2='+Form1.hbbj.value;
						window.frm.location.href=vURL;
					}
				}
			}

			function showclass()
			{ 
				var theURL;
				//预选标志
				var yxflag;
				//重修复选框标志
				var vXCX_Flag;
				//辅修复选框标志
				var vXFX_Flag;
				var vCXFX_Flag;
				var kcid;
				var xnxq;
				try{
					xnxq=Form1.xnxq.value;
					kcid=Form1.kcid.value;
					
					if(document.all.XCX_Flag.checked){document.all.XFX_Flag.checked=false;}
					if(document.all.XFX_Flag.checked){document.all.XCX_Flag.checked=false;}
					if(Form1.rad1.checked){
						yxflag="0";
					}else{
					    if(!document.all.XRX_Flag.checked){
							yxflag="1";
						}else{
							yxflag="2";}
					}
					if((!document.all.XCX_Flag.disabled)&&(document.all.XCX_Flag.checked)){
						vXCX_Flag="1";
					}else{
						vXCX_Flag="0";
					}
					if((!document.all.XFX_Flag.disabled)&&(document.all.XFX_Flag.checked)){
						vXFX_Flag="1";
					}else{
						vXFX_Flag="0";
					}
					
					vCXFX_Flag=vXFX_Flag+vXCX_Flag;
					if(Form1.chkclass.checked==true){
						theURL='1';
						window.document.all.thebjmc.style.display='';
					}else{
						theURL='0';
						window.document.all.thebjmc.style.display='none';
						Form1.bjmc.value='';
					}  
				}catch(e){}
				theURL='Set_KCJXRW_ZZ.aspx?theflag=cxsybj&theval='+theURL+'&theval1='+Form1.bjmc.value+'&theval2='+yxflag+'&theval3='+vCXFX_Flag+'&theval4='+xnxq+'&theval5='+kcid;
				window.frm.location.href=theURL;                                      
			}

			function chkval()
			{
				try{
					if(Form1.hbbj.value==''){alert('需设置上课班级构成！');return false;}
					if(Form1.zzxs.value==''){alert('须录入周学时！');return false;}
					if(Form1.skfs.value==''){alert('需选定授课方式！');return false;}
					if(Form1.stimezc.value==''){alert('须录入周次！');return false;}
					if(Form1.hbrs.value==''){alert('须录入合班人数！');return false;}
					if(Form1.lsjc.value==''){alert('需选定连上节次！');return false;}
					if(Form1.pklb.value=='Nothing'||Form1.pklb.value==''){alert('需选择排课类别！');return false;}
					if (confirm('是否保存记录？')){return true;}
					else{return false;}
				}catch(e){}
			}

			function chkinputval(theID)
			{
				var theval=theID.value;
				if(isNaN(theval)){
 					alert('须录入正确的合班人数！');
					theID.value='';
					theID.focus();
				}else{
 					if((Form1.bs.value!='')&&(Form1.hbbj.value!='')){Form1.save.disabled=false;}
				}   
			}

			function chkzcval(theID){
				var Tstr1=theID.value.split(',');
				var Tstr2;
				for (i=0;i<=Tstr1.length-1;i++){
					if((isNaN(Tstr1[i])) || (Tstr1[i]=="")){
						Tstr2=Tstr1[i].split('-');
  						for(j=0;j<=Tstr2.length-1;j++){
							if((isNaN(Tstr2[j]))||(Tstr2[j]=="")||(Tstr2.length>2)||(Tstr2[j]<0)){alert('须录入正确的周次！');theID.value='1-18';return false;}
						}
					}
				}
				return true;
			}

			function addjxrw()
			{
				var theURL;
				//是否继承上一条任务信息
				var extend_flag;
				if(document.all.extend_flag.checked)
					extend_flag="1";
				else
					extend_flag="0";
				theURL=Form1.rad.value;                
				theURL='Set_KCJXRW_ZZ.aspx?theflag=addjxrw&theval='+extend_flag;
				window.frm.location.href=theURL;
				Form1.add.disabled=true;
			}

			function ChkZxs(theID)
			{
				if(isNaN(theID.value)){
 					alert('须录入正确的周学时！');
					theID.value='';
					theID.focus;
				}else{
					if(theID.value<0){
						alert('周学时须大于0！');
						theID.value='';
						theID.focus;
					}else{
 						theURL='Set_KCJXRW_ZZ.aspx?theflag=selzxs&theval='+theID.value;
						window.frm.location.href=theURL; 
					}
				}
			}
		
			function showZNPKJXL(theID)
			{
				var vURL;
				vURL=theID.value;
				window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_JXRW_JXL.aspx?id='+vURL;
			}
		
			function ShowListValue(theID,vp)
			{
				var vURL;
				vURL=theID.value;
				window.frmZNPKCLASS.document.location.href='../ZNPK/Private/LIST_JXRW_CLASS.aspx?id='+vURL;
			}
		
			function showListZNPKJS(theID)
			{
				var vURL;
				vURL=theID.value;
				vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL;
				window.frmZNPKJS.document.location.href=vURL;
			}
		</script>
		<style>
			select{
				font-size:12px;
			}
			input{
				font-size:12px;height:18px;
			}
		</style>
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
	leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<div id="Layer1" style="BORDER-RIGHT:3px; BORDER-TOP:3px; DISPLAY:none; Z-INDEX:1; LEFT:390px; BORDER-LEFT:3px; WIDTH:320px; BORDER-BOTTOM:3px; POSITION:absolute; TOP:30px; HEIGHT:240px">
			<iframe name="showjc" src="" width="100%" height="100%" frameborder="1"></iframe>
		</div>
		<table width="653" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
			<tr>
				<td valign="top" align="center" colspan="2" height="26">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr>
							<td valign="bottom" align="center" width=35%>&nbsp;</td>
							<td valign="bottom" align="center" width=30%><b>设置学期教学任务</b></td>
							<td valign="bottom" align="right"  width=35%>请按＂F11＂键切换为全屏操作</td>
						</tr>
						<tr>
							<td valign="bottom" align="center" colspan=3><script language="JavaScript">Draw_HR('99.5%')</script></td>
						</tr>
					</table>
				</td>
			</tr>
			<form name="Form1" action="Set_KCJXRW_rpt.aspx" method="post" onSubmit="return chkval()" target="frm">
				<tr>
					<td width="58%" height="255">
						<table width="99%" border="1" cellspacing="0" cellpadding="0" height="100%" bordercolorlight="#89bfa7" bordercolordark="#ffffff">
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="52%" align="left">承担单位&nbsp;<select name="sel_cddw" style="width:137" onchange="showlesson()" ><%=(new Base().SetValue("CDDW",USER_OPTDW))%></select><input name="kcdm" type="hidden"></td>
											<td width="48%" align="left">课程名称&nbsp;<input name="kcmc" type="text"  maxlength="50" onkeydown="if(window.event.keyCode==13){showlesson()}" title="可模糊检索" style='width:127px'></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="28%" align="left">授课方式&nbsp;<select name="skfs" style="BORDER-TOP:medium none; WIDTH:50px"><%=(new Base().SetValue("SKFS"))%></select></td>
											<td width="24%" align="left">学&nbsp;&nbsp;&nbsp;&nbsp;分&nbsp;<input name="xf" type="text" size="3" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
											<td width="24%" align="left">总&nbsp;学&nbsp;时&nbsp;<input name="zxs" type="text" size="3" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
											<td width="24%" align="left">讲授学时&nbsp;<input name="jsxs" type="text" style="width:35px" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="28%" align="left">周&nbsp;学&nbsp;时&nbsp;<input name="zzxs" type="text" maxlength="4" style="width:48px" onBlur="ChkZxs(this)"></td>
											<td width="24%" align="left">实验学时&nbsp;<input type="text" name="syxs" size="3" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
											<td width="24%" align="left">上机学时&nbsp;<input type="text" name="sjxs" size="3" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
											<td width="24%" align="left">其他学时&nbsp;<input type="text" name="qtxs" style="width:35px" style="BACKGROUND-COLOR:#e8e8e8" readonly></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="55%" align="center" height="38%">
									<iframe id='frmZNPKJS' name="frmZNPKJS" src='' frameborder="0" style='DISPLAY: none;WIDTH: 0px;HEIGHT: 0px'>
									</iframe>
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
										<tr>
											<td width="100%" colspan="4" height="21"><%=(new Base().SetValue("T_ZJJS"))%></td>
										</tr>
										<tr>
											<td width="100%" colspan="4" height="21"><%=(new Base().SetValue("T_CJJS1"))%></td>
										</tr>
										<tr>
											<td width="100%" colspan="4" height="21"><%=(new Base().SetValue("T_CJJS2"))%></td>
										</tr>
										<tr>
											<td width="100%" colspan="4" height="21"><%=(new Base().SetValue("T_CJJS3"))%></td>
										</tr>
										<tr>
											<td width="26%" height="22">连上节数</td>
											<td width="19%"><select name="lsjc" style="WIDTH:35px"><option value="1">1</option>
													<option value="2" selected>2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</select>
											</td>
											<td align="left" width="55%">
												周次&nbsp;<input name="stimezc" style="width:80px" onBlur="return chkzcval(this)" maxlength="50">
											</td>
										</tr>
									</table>
								</td>
								<td width="45%" align="center" height="43%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
										<tr>
											<td width="100%" height="83%"><span id="theSel_HBBJ"><select name="sel_hbbj" size="6" multiple style='WIDTH:167px' ondblclick='selhbbj(this)'></select></span></td>
										<tr>
											<td width="100%" height="17%">合班人数&nbsp;<input name="hbrs" size="4" onKeyUp="chkinputval(this)" maxlength="4">&nbsp;班数&nbsp;<input name="bs"  maxlength="4" style="BACKGROUND-COLOR:#e8e8e8;width:40px" readonly onChange="if((Form1.hbrs.value!='')&amp;&amp;(Form1.bs.value!='')&amp;&amp;(Form1.hbbj.value!='')){Form1.save.disabled=false;}"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="54%">周时分布&nbsp;<span id="zs"><select name="zsfb" style="WIDTH:150px"><option value="" selected></option>
													</select></span></td>
											<td width="46%">&nbsp;上课班级名称&nbsp;<input name="skbjmc" style="width:90px" maxlength="50"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="55%">上课群组&nbsp;<select name="selSKQZ" style="WIDTH:150px;" class="sell"><option value="" selected>---------请选择-------</option>
													<%=(new Base().SetValue("SKQZ",xnxq))%>
												</select></td>
											<td width="45%">教室类型&nbsp;<select name="selJSLX" class="selM" style="WIDTH:117px;"><option value="" selected>-----请选择-----</option>
													<%Response.Output.Write((new BLL.include.ind_subPublic()).PutValue("jslx",""));%>
												</select></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="55%">
											<%if(showpklb=="1"){%>
												排课类别&nbsp;<select name="pklb" style="width:150px;">
												    <option value="Nothing"  checked></option>
													<option value="1">教务处排</option>
													<option value="11">院系部排</option>
												</select>
												<input type=hidden name="bz" style="width:173px;">
											<%}else{%>
												备注&nbsp;<input type=text name="bz" style="width:173px;">
												<input type=hidden name="pklb" value="1">
											<%}%>
											</td>
											<td width="45%">适应性别&nbsp;<select name="xb" style="WIDTH:35px;"><option value="" selected></option>
													<option value="1">男</option>
													<option value="2">女</option>
												</select>&nbsp;单双<select name="dsz" style="WIDTH:52px;">
													<option value="" selected></option>
													<option value="1">单周</option>
													<option value="2">双周</option>
												</select>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="8%" colspan="2"><%=(new Base().SetValue("JXRW_CLASS"))%></td>
							</tr>
						</table>
					</td>
					<td width="42%" align="right">
						<table width="99%" border="1" cellspacing="0" cellpadding="0" height="100%" bordercolorlight="#89bfa7" bordercolordark="#ffffff">
							<tr>
								<td width="100%" align="center" height="8%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
										<tr height="100%" class="T" >
											<td width="30%" align="center" style="height:16px">校区</td>
											<td width="50%" align="center" style="height:16px">班级</td>
											<td width="20%" align="center" style="height:16px">人数</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="47%"><span id="theListXZBJ"><select name="sel_xzbj" size="9" multiple style='WIDTH:265px' ondblclick='selxzbj(this)'></select></span></td>
							</tr>
							<tr>
								<td width="100%" align="left" height="9%">
									<input type=checkbox name="extend_flag" >新增时，继承上一任务信息
								</td>
							</tr>
							<tr>
								<td width="100%" align="center" height="9%">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
										<tr height="100%" width="100%">
											<td width="30%" align="left"><input type="checkbox" align="left" name="chkclass" onClick="showclass()" value="1">所有班级&nbsp;</td>
											<td width="70%" align="left"><span id="thebjmc" style="DISPLAY:none">&nbsp;<font color="black">班级名称</font>&nbsp;<input type="text" name="bjmc" align="left" size="19" onBlur="showclass()" title="可模糊检索" style='HEIGHT:18px'></span></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="left" height="9%"><!--<input type="checkbox" align="left">限未设置完课程-->
									<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%">
										<tr height="100%" width="100%">
											<td id="CXFX_AREA"  width="54%" align="left">
												<input type="checkbox" name="XCX_Flag" value="1" onClick="showclass()">限重修<input type="checkbox" name="XFX_Flag" value="1" onClick="showclass()">限辅修
											</td>
											<td id="RX_AREA"  width="46%" align="left" style="visibility:hidden"><input type="checkbox" name="XRX_Flag" value="1" onclick="radon()">公共任选</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="100%" align="left" height="9%"><!--<input type="checkbox" align="left">限未设置完课程-->
									<input type="radio" id="rad1" name="rad" value="0" onClick="radon()" checked>通过预选(或重修报名)
									<input type="radio" id="rad2" name="rad" value="1" onClick="radon()">不通过预选
								</td>
							</tr>
							
							
							<tr>
								<td width="100%" align="center" height="9%"><input type="button" value="节次安排要求" onClick="AddJCYQ(this)" name="jcyq" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(../images/button/bgbtn5_0.gif); BORDER-LEFT: medium none; WIDTH: 85px; CURSOR: hand; BORDER-BOTTOM: medium none; FONT-FAMILY: '宋体'; HEIGHT: 20px">
									<input type="button" value="设置上课群组" name="submit" onClick="SetSKQZ()" style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(../images/button/bgbtn5_0.gif); BORDER-LEFT: medium none; WIDTH: 85px; CURSOR: hand; BORDER-BOTTOM: medium none; FONT-FAMILY: '宋体'; HEIGHT: 20px">
									<input type="button" value="新增" name="add" class="button"  onClick="addjxrw()">
									<input type="submit" value="保存" name="save" class="button" disabled>
								</td>
							</tr>
						</table>
					</td>
					<input type="hidden" name="xnxq" value="<%=xnxq%>">
					<input type="hidden" name="hbbj">
					<input type="hidden" name="cddw">
					<input type="hidden" name="kcid">
					<input type="hidden" name="jcyqap" value='0000000000000000000000000000000000000000000000000'>
					<input type="hidden" name="kclb">
					<input type="hidden" name="kclb1">
					<input type="hidden" name="khfs">
				</tr>
				<tr>
					<td valign="top" align="center" height="26" colspan="2"><DIV id="theHead" style='WIDTH:100%'></DIV>
					</td>
				</tr>
			</form>
			<tr>
				<td align="center" colspan="2">
					<iframe name="frm" src="" style="DISPLAY:none;WIDTH:0px;HEIGHT:0px"></iframe>
					<iframe name=main  src="Set_KCJXRW_rpt.aspx?yxflag=0&xnxq=<%=xnxq%>" width="100%" height="98%" frameborder=1 >
					</iframe>
				</td>
			</tr>
		</table>
	</body>
</HTML>
