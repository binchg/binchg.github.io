<%@ Page language="c#" Codebehind="R_XJDA_CKXSDA.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.XSXJ.R_XJDA_CKXSDA" %>
<%@ Import NameSpace="BLL.XSXJ"%>
<HTML>
	<HEAD>
		<title>查看学生档案</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		<script language="javascript">
			function ShowListValue(theID,vP)
			{
				var vNJ,vYX,vZY,vXZBJ,theURL;
				try{
					if(vP=="YXZY")
					{
						vYX=document.all.Sel_YX.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_WNJYXZY.aspx?yx="+vYX+"&nj="+vNJ+"&w=130";
					}
					else if(vP=="ZYBJ")
					{
						vZY=document.all.Sel_ZY.value;
						vNJ=document.all.Sel_NJ.value;
						if(!document.all.ChkNJ.checked){vNJ="";}
						theURL="./Private/List_W"+vP+".aspx?zy="+vZY+"&nj="+vNJ+"&w=140";
					}else if(vP=="XNXQ_NJ"){
						vXNXQ=document.all.Sel_XNXQ.value;
						theURL="./Private/List_"+vP+".aspx?xnxq="+vXNXQ+"&str=shownj";
					}
					window.frm.location.href=theURL;
				}
				catch(e){}
			}
			
			function ChageValue(theID)
			{
				try{
					if(theID.checked)
					{
						document.all.Sel_NJ.disabled=false;
						document.all.Sel_YX.disabled=false;
						document.all.Sel_ZY.disabled=false;
						document.all.Sel_BJ.disabled=false;
						document.all.Sel_NJ.style.backgroundColor='#ffffff';
						document.all.Sel_YX.style.backgroundColor='#ffffff';
						document.all.Sel_ZY.style.backgroundColor='#ffffff';
						document.all.Sel_BJ.style.backgroundColor='#ffffff';
					}
					else
					{
						document.all.Sel_NJ.disabled=true;
						document.all.Sel_YX.disabled=true;
						document.all.Sel_ZY.disabled=true;
						document.all.Sel_BJ.disabled=true;
						document.all.Sel_NJ.style.backgroundColor='#dcdcdc';
						document.all.Sel_YX.style.backgroundColor='#dcdcdc';
						document.all.Sel_ZY.style.backgroundColor='#dcdcdc';
						document.all.Sel_BJ.style.backgroundColor='#dcdcdc';
					}
				}
				catch(e){}
			}
			
			function ChangeStatus(theID,Name)
			{
				var ObjectName;
				var ObjectCheck;
				try{
					ObjectName=Name;
					ObjectCheck=theID.checked;
					if(theID.checked)
					{
						eval("document.all."+ObjectName+".disabled=false;");
						eval("document.all."+ObjectName+".style.backgroundColor='#ffffff';");
					}
					else
					{
						eval("document.all."+ObjectName+".disabled=true;");
						eval("document.all."+ObjectName+".style.backgroundColor='#dcdcdc';");
					}
				}
				catch(e){}
			}
			
			function ChkValue()
			{
				var vYX,vZY;
				try{
					vYX=document.all.Sel_YX.value;
					vZY=document.all.Sel_ZY.value;
					if(document.all.ChkNJ.checked==true)					
					{
						if((vYX=="")||(vYX=="Nothing"))
						{
							alert('需选定院(系)/部！');return false;
						}
						else{return true;}
					}
				}
				catch(e){}
			}
		</script>
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
		 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form1" action="R_XJDA_CKXSDA_Rpt.aspx" target="frmRpt" method="post" onsubmit='return ChkValue()'>
			<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
				<tr>
					<td vAlign="top" align="center" height="26">
						<table WIDTH="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
							<tr>
								<td vAlign="bottom" align="center"><b>查看学生档案</b></td>
							</tr>
							<tr>
								<td vAlign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="78">
						<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td width="67%" align=left height="26px" >
									学年学期&nbsp;<select name="Sel_XNXQ" style="WIDTH:165px" onchange=ShowListValue(this,"XNXQ_NJ")><%=(new XSXJ_Rpt().GetXNXQInfo())%></select>
								</td>
								<td width="33%" align=left height="26px">
								    <input type=radio name=radio value="0" checked>所有
								    <input type=radio name=radio value="1">在校
								    <input type=radio name=radio value="2">不在校&nbsp;&nbsp;
								     <input class="button" type="submit" name="submit" value="检索">
								  </td>
							</tr>
							<tr>
								<td align="left" colspan=2  height="26px" ><%=(new  XSXJ_Rpt().SetValue("CHKNJYXZYBJ",XNXQ,USER_OPTYX))%></td>
							</tr>
							<tr>
								<td align="left" height="26px">
									<input type=checkbox name=chkxh onclick="ChangeStatus(this,'xh')"   value="1" >学&nbsp;&nbsp;&nbsp;&nbsp;号&nbsp;<input type=text name=xh maxlength=20 style="width:143px;background-color:#dcdcdc" disabled><input type=checkbox name=chkxm onclick="ChangeStatus(this,'xm')"  value="1"  >姓&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;<input type=text name=xm maxlength=30 style="width:147px;background-color:#dcdcdc" disabled>
								</td>
								<td align="left" height="26px">
									 <input type=checkbox name=chksfzh onclick="ChangeStatus(this,'sfzh')"   value="1" >身份证号&nbsp;<input type=text name=sfzh maxlength=30 style="width:144px;background-color:#dcdcdc" disabled>
									
								</td>
							</tr>
							<tr>
								<td align="left" height="26px">
									<input type=checkbox name=chksysf  onclick="ChangeStatus(this,'selsysf')"  value="1" >生源省份&nbsp;<select name="selsysf" style="width:143px;background-color:#dcdcdc" disabled><%=(new XSXJ_Rpt().GetSYSFInfo())%>
									</select><input type=checkbox name=chkxjzt onclick="ChangeStatus(this,'selxjzt')"  value="1" >学籍状态&nbsp;<select name="selxjzt" style="width:147px;background-color:#dcdcdc" disabled><%=(new XSXJ_Rpt().GetXJZTInfo())%></select>
								</td>
								<td align="left" height="26px">
									 <input type=checkbox name=chkbxxs onclick="ChangeStatus(this,'selbxxs')" value="1" >办学形式&nbsp;<select name="selbxxs" style="width:144px;background-color:#dcdcdc" disabled><%=(new XSXJ_Rpt().GetBXXSInfo())%></select>
								</td>
							</tr>
							
						</table>
					</td>
				</tr>
				<tr ><td style="height:5px"><br></td></tr>
				<tr>
					<td valign="bottom" align="center" height="95%">
						<iframe name="frmRpt" src="R_XJDA_CKXSDA_Rpt.aspx" width="99%" height="99%" frameborder="0"></iframe>
						<iframe name=frm  style='display:none;'></iframe>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>