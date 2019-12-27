<%@ Page language="c#" Codebehind="Set_SYJXRW.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_SYJXRW" %>

<html>
  <head>
    <title>设置学期实验教学任务</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
   <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="JavaScript">
		function chkon(theID)           //限未设置完课程→上课班级
		{ 
			var theURL;
			if(theID.checked==true)
 				{theURL='1';}                 //
			else
				{theURL='0';}                 //未设置完课程→上课班级
			window.main.location.href='Set_SYJXRW_rpt.aspx?flag='+theURL+'&xnxq='+form1.xnxq.value;
		}

		function addjxrw()               //新增实验项目
		{
			var vURL;
			vURL='Set_SYJXRW_ZZ.aspx?theflag=addsyxm&theval1='+document.all.xnxq.value;
			window.frm.location.href=vURL;  
		}

		function deljxrw()                //删除实验项目
		{
			var theURL;
			if(document.all.chk.checked==true){theURL='1';}else{theURL='0';}
			if (confirm('是否删除当前实验任务？')){
				window.form1.action="Set_SYJXRW_rpt.aspx?p=del&flag="+theURL;
				window.form1.method="post";
				window.form1.target="main";
				window.form1.submit();
				return true;
			}else{
				return false;
			}
		}
		
		function chkval()
		{
			var theURL;
			if(document.all.chk.checked==true){theURL='1';}else{theURL='0';}
			if(confirm('是否保存当前实验任务？')){
				window.form1.action="Set_SYJXRW_rpt.aspx?p=add&flag="+theURL;
				window.form1.method="post";
				window.form1.target="main";
				window.form1.submit();
				return true;
			}else{
				return false;
			}
		}
		
		function selwszsyxm(theID)        //未设置实验项目
		{
			var vStr,temp,b="",vURL;
			if (theID.selectedIndex==-1){
			}
			else{
				vStr=theID.options[theID.selectedIndex].value;
				if(vStr=="Nothing"){
				}
				else{
					if(document.all.p.value=='del'){
					}
					else{
						b=vStr;
						document.all.p.value='add';
						if(document.all.lsjc.value!=''){document.all.save.disabled=false;}
						document.all.del.disabled=true;
						vURL='Set_SYJXRW_ZZ.aspx?theflag=wszsyxm&theval='+b+'&theval1='+document.all.xnxq.value+'&theval2='+document.all.skbj.value+'&theval3='+document.all.syxm.value;
						window.frm.location.href=vURL;
					}
				}
			}
		}
		function seldqsyxm(theID)             //当前实验项目
		{  
			var vStr,temp,b="";
			if (theID.selectedIndex==-1){     //下拉框中无信息
			}
			else{
				vStr=theID.options[theID.selectedIndex].value;
				if(vStr=="Nothing"){          //下拉框中无效值 
				}
				else{
					if(document.all.p.value=='add'){  //新增
						b=vStr;
						if(theID.options.length==1){
							document.all.p.value='';
							document.all.save.disabled=true;
							document.all.del.disabled=true;}
						else{
							document.all.p.value='add';
							document.all.save.disabled=true;
							if(document.all.lsjc.value!=''){document.all.save.disabled=false;}
							document.all.del.disabled=true;}
						vURL='Set_SYJXRW_ZZ.aspx?theflag=dqsyxm1&theval='+b+'&theval1='+document.all.xnxq.value+'&theval2='+document.all.skbj.value+'&theval3='+document.all.syxm.value;
						window.frm.location.href=vURL;
					}
					else if(document.all.p.value=='del'){  //删除
							b=vStr;
							document.all.p.value='';
							document.all.save.disabled=true;
							document.all.del.disabled=true;
							vURL='Set_SYJXRW_ZZ.aspx?theflag=dqsyxm2&theval='+b+'&theval1='+document.all.xnxq.value+'&theval2='+document.all.ExpeItemSkbj.value+'&theval3='+document.all.syxm.value;
							window.frm.location.href=vURL;
					}
				}
			}
		}
		function selyszsyxm(theID)      //已设置实验项目
		{
			var vStr,temp,b="";
			if (theID.selectedIndex==-1){
			}
			else{
				vStr=theID.options[theID.selectedIndex].value;
				if(vStr=="Nothing"){
				}
				else{
					if(document.all.p.value=='add'||document.all.p.value=='del'){
					}
					else{
					    
						b=vStr;
						document.all.p.value='del';
						document.all.del.disabled=false;
						document.all.save.disabled=true;
						vURL='Set_SYJXRW_ZZ.aspx?theflag=yszsyxm&theval='+b+'&theval1='+document.all.xnxq.value+'&theval2=&theval3='+document.all.syxm.value;
						window.frm.location.href=vURL;
					}
				}
			}
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
  </head>
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<table width="665px" border=0 cellspacing="0" cellpadding="0" height="100%" align="center" >

			<tr><td valign="top" align="center" colspan=2 height="26px">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>设置学期实验教学任务</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
				</table>   
			</td></tr> 
			
			<form name="form1" action="Set_SYJXRW_rpt.aspx" method="post" target="main" >
			<tr ><td align="center" height="200px" width="100%">
				<table width="99%" border=1 cellspacing="0" cellpadding="0" align="center" height="100%" bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
					<tr>
						<td  width="100%" align="left" height="20px" colspan=2 nowrap>
							&nbsp;课程代码&nbsp;<input type="text" size="10" name="user_kcid"  style="background-color:#e8e8e8;" readonly>
							课程名称&nbsp;<input type="text" size="33" name="kcmc"  style="background-color:#e8e8e8;" readonly>
							学分&nbsp;<input type="text" name="zxf" style="width:40px;background-color:#e8e8e8;" readonly >
							总学时&nbsp;<input type="text" size="4" name="zxs"style="background-color:#e8e8e8;"  readonly >
							实验学时&nbsp;<input type="text" size=3 style="background-color:#e8e8e8;" name="syxs" readonly >
						</td>
					</tr>
					<tr>
						<td width="71%" align="left" height="95%">
							<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%" bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
								<tr><td width="100%" align="left" height="100%">     
									<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%">
										<tr>
											<td width="50%">
												<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%">
													<tr><td width="100%" align="left" height="18px" style="height:13px" nowrap >&nbsp;未设置的实验项目</td></tr>
								    				<tr><td width="100%" height="90%" align="center"><span id="theList"><select multiple size="10" style="width:228px;" name="wszsyxm" id="wszsyxm" ondblclick='selwszsyxm(this)'></select></span></td></tr></table>
											</td>
											<td width="50%">
												<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%">
													<tr><td width="100%" align="left" style="height:13px" nowrap>当前实验项目</td></tr>
													<tr><td width="100%" align="left" height="40%"><span id="theListDQSYXM"><select multiple id="dqsyxm" name="dqsyxm" size="4" style="width:228px"  ondblclick='seldqsyxm(this)'></select></span></td></tr>
													<tr><td width="100%" align="left" style="height:13px" nowrap>已设置实验项目</td></tr>
								    				<tr><td width="100%" align="left" height="40%"><span id="theListYSZSYXM"><select multiple id="yszsyxm" size="4" style="width:228px" name="yszsyxm" ondblclick='selyszsyxm(this)'></select></span></td></tr></table>    
											</td>
										</tr></table>
								</td></tr>
							</table>
						</td>
						<td width="29%" align="center" height="100%">
							<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="100%" bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
								<tr><td width="100%" align="left" height="10%" >
									&nbsp;上课班号&nbsp;<input type="text" size="4" name="skbh" readonly style="background-color:#e8e8e8;">
									上课人数&nbsp;<input type="text" size="3" name="skrs" readonly style="background-color:#e8e8e8;"></td>
								</tr>
								<tr><td width="100%" align="center" height="70%" ><span id="theListXZBJ"><select multiple name="xzbj" id="xzbj" size="9" style="width:182px" ></select></span></td></tr>
								<tr><td width="100%" align="left" height="10%">
									&nbsp;实验时数&nbsp;<input type="text" size="3" name="t_ycs" style="background-color:#e8e8e8;" readonly value=0>
									连上节次&nbsp;<select name="lsjc" style="width:35px;" onChange="if(document.all.p.value=='add'&&this.value!=''){document.all.save.disabled=false;}else{document.all.save.disabled=true;}">
									<option value=""></option><option value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option></select></td>
								</tr>
						</table>
						</td>
					</tr>
					
				</table>
			</td></tr>
			
			<tr ><td align="center" height="26px">
				<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
					<tr><td width="40%" align="left"><input type="checkbox" name="chk" onClick="chkon(this)">限未设置完课程→上课班级</td>
					<td width="60%" align="right"><input type="button" value="新增" name="add" class=button disabled onclick="addjxrw()"> 
												 <input type="submit" value="保存" name="save" class=button disabled onclick="return chkval()">
												 <input type="button" value="删除" name="del" class=button disabled onClick="deljxrw()">&nbsp;</td></tr>
				</table>
			</td></tr>
				<input type="hidden" name="xnxq" value="<%=vXNXQ%>">
				<input type="hidden" name="kcdm" >
				<input type="hidden" name="skbj" >
				<input type="hidden" name="p" value="">
				<input type="hidden" name="syxm" value="">
				<input type="hidden" name="ExpeItemSkbj" value="">
			</form>
		    
			<tr ><td valign="top" align="center" height="3%">
				<DIV id=theHead style='display: none_;width:99%;'></DIV>
			</td></tr> 
			
			<tr ><td align="center">
				<iframe name="frm" src="" style="display:none;width:0px;height:0px"></iframe>
				<iframe name="main"  src="Set_SYJXRW_rpt.aspx?flag=0&xnxq=<%=vXNXQ%>" width=99% height=99% frameborder=1></iframe>
			</td></tr>
		</table>
	</body>
</html>
