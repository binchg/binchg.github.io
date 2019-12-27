<%@ Page language="c#" Codebehind="ADD_SYSSYXM.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.ADD_SYSSYXM" %>
<HTML>
	<HEAD>
		<title>提交实验室→实验项目</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language=javascript>
			function ShowListLab(ObjectYX,ObjectSYS,Event){
				if(Event=="onkeyup"){
					if(event.keyCode==13)window.frmHid.location.href="ADD_SYSSYXM_sys.aspx?yxid="+ObjectYX.value+"&sysmc="+ObjectSYS.value;
				}else{
					window.frmHid.location.href="ADD_SYSSYXM_sys.aspx?yxid="+ObjectYX.value+"&sysmc="+ObjectSYS.value;
				}
			}
			
			function ShowListExpeItem(theID){
				window.frmRpt.location.href="ADD_SYSSYXM_rpt.aspx?sysdm="+theID.value;
			}
			
			function TestValue(theObj)
			{
				var i,bReg,vStr=theObj.value;
				bReg=isNaN(vStr); //bReg=vStr.match(/(\d)+/)!=null;
				if(vStr!='')if(bReg){ //alert('必须为数字！');
					theObj.value=vStr.substring(0,vStr.length-1);
					theObj.focus();
					return false;
				}else{
					if(parseInt(vStr)>0)
						theObj.value=parseInt(vStr);
					else
						theObj.value='';
				}
			}
			
			function DelValue(){
				var hid_sysdm;
				var hid_syxmdm;
				hid_sysdm=document.all.sysdm.value;
				hid_syxmdm=document.all.syxmdm.value;
				if(hid_sysdm!=""&&hid_syxmdm!=""){
					if(confirm('是否取消？'))
					{
						window.form1.method="post";
						window.form1.target="frmRpt";
						window.form1.action="ADD_SYSSYXM_rpt.aspx?flag=del";
						window.form1.submit();				
					}
				}
			}
			
			function ChkValue(){
				try{
					var hid_sysdm;
					var hid_syxmdm;
					var expeitem_rl;
					expeitem_rl=document.all.expeitem_rl;
					hid_sysdm=document.all.sysdm.value;
					hid_syxmdm=document.all.syxmdm.value;
					if(hid_sysdm=='')
					{ alert('请选择相应的实验室！');return false;}
					if(hid_syxmdm=='')
					{ alert('请选择相应的实验项目！');return false;}
					if(expeitem_rl.value=='')
					{ alert('容量不能为空!');expeitem_rl.focus();return false;}
				
					if(confirm('是否保存？'))
					{
						window.form1.method="post";
						window.form1.target="frmRpt";
						window.form1.action="ADD_SYSSYXM_rpt.aspx?flag=add";
						window.form1.submit();			
					}
				}catch(e){return false;}
			}
			
			function CleanObjectValue(){
				try{
					document.all.syxmdm.value='';
					document.all.syxmmc.value='';
					document.all.user_dm.value='';
					document.all.t_ycs.value='';
					document.all.expeitem_rl.value='';
					document.all.mutex_items.value='';
					document.all.memo.value='';
					
					document.all.savebut.disabled=true;
					document.all.delbut.disabled=true;
					document.all.setbut.disabled=true;
				}catch(e){}
			}
			
			function openWin()
			{	
				var theURL;
				var flag;
				var mutex_item;
				var sysdm;
				var syxmdm;
				sysdm=window.document.all.sysdm.value;
				syxmdm=window.document.all.syxmdm.value;
				mutex_item=window.document.all.mutex_items.value;
				window.document.all.Layer.style.display='';
				theURL='ADD_SYSSYXM_Mutex.aspx?sysid='+sysdm+'&syxm='+syxmdm+'&mutex_item='+mutex_item;
				window.frmMutexRpt.location.href=theURL;
			}
		</script>
	</HEAD>
	
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  onselectstart=window.event.returnValue=false
	 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" id="form1" method="post" action="ADD_SYSSYXM_rpt.aspx">
	<table width="660px" border=0 cellspacing="0" cellpadding="0" height="100%" align="center" >
		<tr><td valign="top" align="center" colspan="2">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>提交实验室→实验项目</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<!--查询区域-->           
		<tr>
		<td valign="top" align="center" height="26px" colspan=2 width="100%" nowrap>
		<table width="99%" border=0 cellspacing="0" cellpadding="0" align="center" height="26px">
			<tr> 
				<td width="40%" align="left">  
					院(系)/部&nbsp;<select name=sel_yx onchange=ShowListLab(this,document.all.SYSMC,'onchange') style='width:200px;' >
					<%=(new BLL.JXJH.private_JXJH().GetYXInfo(USER_OPTYX))%>
					</select>
		        </td>       
				<td width="60%" align="left">&nbsp;实验(分)室名称&nbsp;<input type="text" name="SYSMC" size=25 onkeyup=ShowListLab(document.all.sel_yx,this,'onkeyup') >&nbsp;</td> 
			</tr>
		</table>     
		</td></tr>

		<!--录入区域-->
		<tr>
		<td width=40% align="center" id=theLab height="110px" nowrap>
			<select name="sel_sys" ondblclick=ShowListExpeItem(this) size='9' style="width:260px;font-size:12px;cursor:hand"  multiple ></select>
		</td>
		<td width=60% align="center" height="110px" nowrap>
			<table width="99%" border=0 cellspacing="0" cellpadding="0" valign="center" height="110px"> 
  				<tr height="22">
    				<td >&nbsp;实验项目名称&nbsp;<input type="text" name="syxmmc"  READONLY style="width:308px;background-color:#e8e8e8;"></td>
    			</tr>  

  				<tr height="22">
    				<td>&nbsp;实验项目代码&nbsp;<input type="text" name="user_dm" size="11"  READONLY style="background-color:#e8e8e8;">
    				实验项目时数&nbsp;<input type="text" name="t_ycs" size="6"  READONLY style="background-color:#e8e8e8;">
					容量&nbsp;<input type="text" name="expeitem_rl" style="width:45px;"  maxlength="4" onkeyup=TestValue(this)>
					</td>
					<input type="hidden" name="sysdm" >
   					<input type="hidden" name="syxmdm" >
				</tr>
				
				<tr height="22">
    				<td >
    					&nbsp;互斥实验项目序列&nbsp;<input type="text" name="mutex_items" style='width:238px' READONLY style="background-color:#e8e8e8;">
    					<input type="button" name="setbut" value="设置" class=button  onClick="openWin()" disabled >
    					<div id="Layer" style="position:absolute;width:285px;height:200px;z-index:1;right:115px;top:132px;display:none;"> 
							<iframe name="frmMutexRpt" src="" width="100%" height="100%" frameborder="1"></iframe>
						</div>
    				</td>
				</tr>
				
				<tr >   
					<td  height="22px"  width="100%" align="left" > 
						&nbsp;备注&nbsp;<input type=text name="memo" style="width:356px;" maxlength=100>
					</td>
  				</tr>
			</table>
			<table width="99%" border=0 cellspacing="0" cellpadding="0" align="center" height="26px">
				<tr><td width="45%" id="syxmtd" >&nbsp;实验室→实验项目个数：0</td>
  				<td width="55%" align="right">
  					<input type="button" value="保存" name="savebut" class=button onclick="ChkValue()" disabled>
  					<input type="button" value="取消" name="delbut"  class=button onclick="DelValue()" disabled></td></tr>  
			</table>
		</td></tr>

		<tr><td valign="bottom" align="center" height="3%" colspan="2">
			<DIV id=theHead style='width:100%;'></DIV>
		</td></tr> 

		<tr><td valign="top" align="center" height="70%" colspan="2">
			<iframe name=frmHid src="" style="display:none;width:660px;height:100px" frameborder=1></iframe>
			<iframe name=frmRpt src="ADD_SYSSYXM_rpt.aspx" width=100% height=99% frameborder=1></iframe>
		</td></tr> 
	</table>
	</Form>
</body>
</HTML>
