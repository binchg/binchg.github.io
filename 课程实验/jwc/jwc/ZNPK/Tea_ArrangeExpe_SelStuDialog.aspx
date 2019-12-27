<%@ Page language="c#" Codebehind="Tea_ArrangeExpe_SelStuDialog.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Tea_ArrangeExpe_SelStuDialog" %>

<HTML>
	<HEAD>
		<title>安排学生</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language=javascript>
			function ChkValue()
			{
				var i;
				var checkBoxNum;
				var object;
				var objectvalue="";
				//是否检测学生时间冲突
				var checkTimeFlag;
				//安排时间
				var arrangetime;
				//星期
				var arrangetime_xq;
				//节次
				var arrangetime_jc;
				var arrangetime_wz;
				var errorinfo="";
				checkBoxNum=window.frmRpt.document.all.stunum.value;
				checkTimeFlag=document.all.checkTimeFlag.checked;
				arrangetime=document.all.time.value;
				if(arrangetime.length>=5){
					arrangetime_xq=parseInt(arrangetime.substring(arrangetime.indexOf("K")+1,arrangetime.indexOf("K")+2));
					arrangetime_jc=parseInt(arrangetime.substring(arrangetime.indexOf("K")+2,arrangetime.indexOf("K")+3));
					arrangetime_wz=(arrangetime_xq-1)*7+arrangetime_jc-1;
					for(i=1;i<=checkBoxNum;i++){
						var strid
						var checkedflag;  //选中标志
						var arrangeflag;　//是否已安排
						var stuid;        //学生学号
						var stuxm;        //学生姓名
						var time;         //学生可排节次信息
						eval("object=window.frmRpt.document.all.chk"+i);
						arrangeflag=object.flag;
						stuid=object.stuid;
						stuxm=object.stuxm;
						time=object.time;
						
						
						//获取＂选中但未安排的学生＂和＂未选中但安排的学生＂信息
						strid=arrangeflag+'@'+stuid+'@'+time;
						if(object.checked==true)
							checkedflag="1";
						else 
							checkedflag="0";
						strid=checkedflag+'@'+strid;
						if(object.checked==true&&arrangeflag=="0")
						{
							//检测学生时间冲突
							if(!checkTimeFlag){
								if(time.substring(arrangetime_wz,arrangetime_wz+1)=="1"){
									errorinfo+=stuxm+"；";
								}else{
									if(objectvalue=="")
										objectvalue=strid;
									else 
										objectvalue+="|"+strid;
								}
							}else{
								if(objectvalue=="")
									objectvalue=strid;
								else 
									objectvalue+="|"+strid;
							}
						}else if(object.checked==false&&arrangeflag=="1"){
							if(objectvalue=="")
								objectvalue=strid;
							else 
								objectvalue+="|"+strid;
						}
					}
					if(objectvalue==""&&errorinfo==""){
						alert('没有可提交的安排信息！');
					}else{
						if(errorinfo!=""){
							alert("以下学生时间冲突：\n"+errorinfo);
						}else{
							if(confirm("是否保存？")){
								document.all.stu.value=objectvalue;
								form1.target='frmRpt';
								form1.action='Tea_ArrangeExpe_SelStuDialog_rpt.aspx?flag=update';
								form1.submit();
							}
						}
					}
				}else{
					alert('未能获取安排时间，安排终止。');
				}
			}
		</script>
	</HEAD>
	<body 
		leftMargin="0" topMargin="0" marginheight="0" marginwidth="0" scroll="no">
		<form name="form1" target="frmRpt" action="Tea_ArrangeExpe_SelStuDialog_rpt.aspx" method="post" >
		<table width="98%" height="99%" border="0" cellpadding="0" cellspacing="0" align="center">
			<tr>
				<td width="100%" style="HEIGHT:5px" nowrap></td>
			</tr>
			<tr>
				<td width="100%" style="HEIGHT:5px"><script language="JavaScript" >Draw_HR('100%')</script>
				</td>
			</tr>
			<tr>
				<td width="100%" height="28px" align=left valign=top>
					<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" align="center">
						<tr><td align=left>
							实验容量：&nbsp;<u>20</u>
							&nbsp;分班人数&nbsp;<input name="GroupRs" type=text size=4 style="height:20px">
						</td>
						<td align=right>
							<input type=checkbox name="checkTimeFlag" >允许学生时间冲突
						</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td width="100%" valign=bottom >
					<div style="height:3%;width:100%" id="theHead" ></div>
				</td>
			</tr>
			
			<tr>
				<td width="100%" align="left"  height="95%">
					<iframe name=frmRpt src="Tea_ArrangeExpe_SelStuDialog_rpt.aspx" width=100% height=99% frameborder=1></iframe>
				</td>
			</tr>
			
			<tr>
				<td width="100%" valign="top" style="HEIGHT:20px" align="right" nowrap >
					<input type="button" class="but20" id="savebut" value="保存" onclick="ChkValue()" disabled>
					<input type="button" class="but20" id="closebut" value="返回" onclick="window.close();">
					<input type=hidden name=xn value='<%=vXN%>'>
					<input type=hidden name=xq value='<%=vXQ%>'>
					<input type=hidden name=expeitemskbj_xh value='<%=vExpeitemskbj_xh%>'>
					<input type=hidden name=syrl value='20'>
					<input type=hidden name=time value='<%=vTime%>'>
					<input type=hidden name=stu value=''>
				</td>
			</tr>
		</table>
		</form>
	</body>
</HTML>
<script language=javascript>window.form1.submit();</script>
