<%@ Page %>
<%@ Import NameSpace="DAL.JXJH" %>
<%@ Import NameSpace="BLL.JXJH" %>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
pSub.JXJH_TimeArea(this,"JH_DW_KCHJXX");
pSub.DoorOnOff(this,"JH_DW_KCHJXX");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>录入环节信息</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
			<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
			<script language="VBScript">
			sub Chkxf(theID)
			theID.value=formatnumber(theID.value,1,-1)
			end sub 
			</script>
			<script language="JavaScript">
				function ChkValue(theForm){
				var str,vID;
				if (theForm.value!='保存') return true;

				try{vID=document.all.form1.cddw.options[document.all.form1.cddw.selectedIndex].value;}catch(e){vID='';}
				if(vID==""){ alert('须选定承担单位！');document.all.form1.cddw.focus();return false;}

				if(document.all.form1.zwmc.value == "")
				{ alert('须录入中文名称！');document.all.form1.zwmc.focus();return false;}

				vStr=document.all.form1.zxf.value;
				if(vStr=='')
				{ alert('须录入学分！');document.all.form1.zxf.focus();return false;}
				else if(isNaN(vStr))
				{ alert('学分须为数字！');document.all.form1.zxf.select();return false;}
				else if(parseInt(vStr)<=0)
				{ alert('学分须大于0！');document.all.form1.zxf.select();return false;}
				else if(vStr>20)
				{alert('学分须小于20！');document.all.form1.zxf.select();return false;}


				vStr=document.all.form1.zxs.value;
				if(vStr=='')
				{ alert('须录入周数！');document.all.form1.zxs.focus();return false;}
				else if(isNaN(vStr))
				{ alert('周数须为数字！');document.all.form1.zxs.select();return false;}
				else if(parseInt(vStr)<=0)
				{ alert('周数须大于0！');document.all.form1.zxs.select();return false;}

				if (confirm('是否保存记录?'))return true;
				else return false;
				}

				function TestValue(theObj)
				{var i,bReg,vStr=theObj.value;

				bReg=isNaN(vStr); //bReg=vStr.match(/(\d)+/)!=null;
				if(vStr!='') if(bReg){ //alert('必须为数字！');
				theObj.value=vStr.substring(0,vStr.length-1);
				theObj.focus();return false;}
				}


				function getCode(theID){
				var s; try{s=document.all.cddw.options[document.all.cddw.selectedIndex].value;}catch(e){s='';}
				window.frmCDDW.location.href='../include/PublicSetVar.aspx?p=kcdm&id='+s;
				document.all.kcdm.value=window.top.menu.k_JWVar;
				}

				function BtnAdd(){
				var PivID,PivColor,PivFontColor;

					resetobj();
					document.all.cddw.focus();
					try{
					PivID=main.document.all.PSTemp.ValueID
					PivColor=main.document.all.PSTemp.PivColor
					PivFontColor=main.document.all.PSTemp.PivFontColor
					}catch(e){return false}
					try{
					eval("main."+PivID+".style.backgroundColor='"+PivColor+"';");
					eval("main."+PivID+".style.color='"+PivFontColor+"';")
					}catch(e){return false};		
				}


				function resetobj(){
				selval("hjlb");
				getCode("4324");
				document.all.hidselected.value="";
				document.all.btndel.disabled=true;
				document.all.kcdm.value='';
				document.all.zwmc.value='';
				document.all.ywmc.value='';
				document.all.zxf.value='';
				document.all.zxs.value='';
				document.all.lrjj.value='';
				}

				function selval(objname){
				document.all(objname).selectedIndex=0;
				}
			</script>
	</head>
	<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" method="post" action="ADD_HJ_Rpt.aspx" target="main">
	<table width="100%" align="center" border="0" cellpadding="0" cellpadding="0" height="100%">
		<tr><td>
			<table width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align=center>
				<TBODY>
					<tr>
						<td valign="top" align="center">
							<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
								<tr>
									<td valign="bottom" align="center"><b>录入环节信息</b></td>
								</tr>
								<tr>
									<td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<!--查询区域-->
					<tr id="Dis1" style='DISPLAY: none'>
						<td valign="top" align="center" height="5%" width="100%">
							<table width="475" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
								<tr height="20">
									<td width="50%" nowrap>
										承担单位&nbsp;&nbsp;<select name="sel_cddw" style='WIDTH:200px'>
											<%Response.Output.Write(pSub.SetValue("cddw",pSub.USER_OPTDW));%>
										</select></td>
									<input type="hidden" name="hidselected">
									<td width="50%" nowrap>实践环节代码(名称)&nbsp;<input name="kc" type="text" size="25" maxlength="20"></td>
								</tr>
							</table>
						</td>
					</tr>
					<!--录入区域-->
					<tr ><td  align="center" style="height:3px"></td></tr>
					<tr id="Dis2">
						<td valign="top" align="center" height="5%">
							<fieldset>
							<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="110">
								<tr class="B" height="20">
									<td width="9%" align=center>承担单位</td>
									<td width="31%"  class="BT">
										<iframe name="frmCDDW" src='' style='WIDTH: 0px;HEIGHT: 0px'></iframe>
										<select name="cddw" id="cddw" style='WIDTH:202px' onchange=if(document.all.hidselected.value==""){}>
											<%Response.Output.Write((new BLL.JXJH.private_JXJH()).SetValue("cddw",pSub.USER_OPTDW));%>
										</select></td>
									<td width="9%" align=center >环节代码</td>
									<td width="18%" class="BT">
										<input type="text" name="kcdm" size="15" val="">
										<input type="hidden" name="kcid" value="">
									</td>
									<td width="9%"  align=center >环节类别</td>
									<td width="13%" align="left" class="BT"><select name="hjlb" style="width:84px"><%Response.Output.Write((new BLL.JXJH.private_JXJH()).SetValue("hjlb",""));%></select></td>
									<td width="5%"  align=center>学分</td>
									<td width="6%" align="center" class="BT" height="20"><input type="text" name="zxf" size="3" value='0' val='0' onkeyup="TestValue(this)" onblur="Chkxf(this)" maxlength="4"></td>
								</tr>
								<tr class="H" height="20">
									<td width="9%" align=center>中文名称</td>
									<td width="31%" class="BT"><input type="text" name="zwmc" size="27" maxlength="25"></td>
									<td width="9%" align=center>英文名称</td>
									<td width="40%" class="BT" colspan=3 ><input type="text" name="ywmc" size="36" maxlength="50"></td>
									<td width="5%" align="center" >周数</td>
									<td width="6%" align="center" class="BT" height="20"><input type="text" name="zxs" size="3" value='0' val='0' onkeyup="TestValue(this)" maxlength="4"></td>
								
								</tr>
								
								<tr class="H">
									<td width="9%" height="20" align=center>教学大纲</td>
									<td width="91%" colspan="7" class="BT" align="left" height="20" nowrap><textarea rows="3" name="lrjj" cols="82" maxlength="10000" style="OVERFLOW:auto;"></textarea></td>
								</tr>
							</table>
							</fieldset>
						</td>
					</tr>
					<!--控制区域-->
					<tr>
						<td valign="top" align="center" height="5%">
							<table width="99%" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
								<TR>
									<td width="50%" valign="bottom" id="theCount"></td>
									<td width="20%" valign="bottom" align="left" id="radState" value='0'></td>
									<td width="30%" valign="middle" align="right">
										<input type="submit" value="检索" name="submit" id="seacher" class="button" onclick="resetobj()">
										<input type="button" value="新增" name="reset" id="reset" class="button" onclick="BtnAdd()">
										<input type="submit" value="保存" name="submit" id="btnsel" class="button" onclick='return ChkValue(this)'>
										<input type="submit" value="删除" name="submit" id="btndel" class="button" disabled onclick='return confirm("你确信要继续吗?")'></td>								</TR>
							</table>
						</td>
					</tr>
			</TBODY>
			</table>
		</td></tr>
		<tr>
				<td valign=bottom align="center" height="5%">
					<DIV id="theHead" style='WIDTH: 99%'></DIV>
				</td>
			</tr>
			<tr>
				<td valign="top" align="center" height="95%">
					<iframe name="main" src="ADD_HJ_Rpt.aspx" width="99%" height="98%" frameborder="0"></iframe>
				</td>
			</tr>
	</table>
	</form>
	</body>
</html>
