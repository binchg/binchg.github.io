<%@ Page language="c#" Codebehind="Set_SKBZ.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.ZNPK.Set_SKBZ" %>
<%@ Import NameSpace="BLL.ZNPK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>设置上课班组</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
	<script language="javascript">
		function QryData()
		{
			document.all.canelbutton.disabled=true;
			document.all.setbutton.disabled=true;
			document.all.skbz.value='';
			document.all.kcid.value='';
			document.all.wszskbj.value='';
			document.all.dszskbj.value='';
			document.all.yszcount.value='';
			document.all.wszskbj.value='';
			document.all.dszcount.value='';
			document.all.xtjskbj.value='';
			form.action='Set_SKBZ_Rpt.aspx';
			form.target='frmRpt';
			form.submit();
			form.action='Set_SKBZ_LRpt.aspx';
			form.target='LfrmRpt';
			form.submit();
			form.action='Set_SKBZ_RRpt.aspx';
			form.target='RfrmRpt';
			form.submit();
		}
			
		function MoveLeftData()
		{
			var N;
			var idval;
			var strval;
			var i;
			N=document.all.dszcount.value;
			strval=";"+document.all.dszskbj.value;
			try{
				if((N>0)&&(strval!=""))
				{
					for(i=0;i<N;i++)
					{
						if(eval("window.RfrmRpt.document.all.RCHK"+i+".checked"))
						{
							eval("idval=window.RfrmRpt.document.all.RCHK"+i+".value;");
							if(idval!="")
							{
								idval=idval.replace("K","");
								idval=idval.replace("S","");
								strval=strval.replace(";"+idval,"");
							}
						}
					}
					document.all.dszskbj.value=strval.replace(";","");
					form.action='Set_SKBZ_LRpt.aspx';
					form.target='LfrmRpt';
					form.submit();
					form.action='Set_SKBZ_RRpt.aspx';
					form.target='RfrmRpt';
					form.submit();
				}
			}catch(e){}
		}
			
		function MoveRightData()
		{
			var N;
			var idval;
			var strval;
			var s=false;
			var flag=true;
			var kcstr="";
			var i;
			var j;
			var startindex;
			var endindex;
			var dszskbj;
			var vdszskbj;
			var skbz;
			var skbz_flag;
			var dszskbj;
			skbz=document.all.skbz.value;
			N=document.all.wszcount.value;
			vdszskbj=document.all.dszskbj.value;
			try{
				if(N>0)
				{
					for(i=0;i<N;i++)
					{
						if(eval("window.LfrmRpt.document.all.LCHK"+i+".checked"))
						{
							eval("idval=window.LfrmRpt.document.all.LCHK"+i+".value;");
							if(idval!="")
							{
								startindex=idval.indexOf("K");
								endindex=idval.indexOf("S");
								if(vdszskbj!="")
								{
									var Tstr1=vdszskbj.split(';');
									for(j=0;j<Tstr1.length;j++)
									{
										if(idval.substring(startindex+1,endindex)!=Tstr1[j].substring(0,6)){
											flag=false;
										}
									}
								}
								if((kcstr!="")&&(kcstr!=idval.substring(startindex+1,endindex)))
								{
									flag=false;
								}
								if(s==false){
									strval=idval;
									dszskbj=idval.replace("K","");
									dszskbj=dszskbj.replace("S","");
									s=true;
								}else{
									strval=strval+";"+idval;
									dszskbj=dszskbj+";"+idval.replace("K","")
									dszskbj=dszskbj.replace("S","")
								}
								kcstr=idval.substring(startindex+1,endindex);
								
							}
						}
					}
					
					if(flag==false){
						alert('需选定同一课程下的上课班级！');
					}else{
						if(s==true)
						{
							if(document.all.dszskbj.value!=""){
								document.all.dszskbj.value+=";"+dszskbj;
							}else{
								document.all.dszskbj.value=dszskbj;
							}
							document.all.setbutton.disabled=false;
							form.action='Set_SKBZ_DataOpt.aspx?lx=moveright';
							form.target='vfrmRpt';
							form.submit();
						}
					}
				}
			}catch(e){}
		}
		
		function DelData()
		{
			var skbz;
			var kcid;
			var xnxq;
			var theURL;
			skbz=document.all.skbz.value;
			kcid=document.all.kcid.value;
			xnxq=document.all.xnxq.value;
			if((skbz!="")&&(kcid!="")&&(xnxq!=""))
			{
				form.action='Set_SKBZ_DataOpt.aspx?lx=del';
				form.target='vfrmRpt';
				form.submit();
			}
		}
		
		function AddData()
		{
			var xnxq;
			var theURL;
			var N;
			var idval;
			var strval;
			var s=false;
			var kcid;
			xnxq=document.all.xnxq.value;
			try{
				if(xnxq!="")
				{
					N=document.all.dszcount.value;
					if(N>0)
					{
						for(i=0;i<N;i++)
						{
							eval("idval=window.RfrmRpt.document.all.RCHK"+i+".value;");
							if(idval!="")
							{
								if(s==false){
									kcid=idval.substring(1,7);
									strval=idval;
									s=true;
								}else{
									strval=strval+";"+idval;
								}
							}
						}
					}
					document.all.xtjskbj.value=strval;
					document.all.kcid.value=kcid;
					form.action='Set_SKBZ_DataOpt.aspx?lx=add';
					form.target='vfrmRpt';
					form.submit();
				}
			}catch(e){}
		}
	</script>
    </head>
	<body onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
	leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		<form name="form" method="post" action="TeacherSel_rpt.aspx" ID="Form">
		<table width="662px" align=center border="0" cellspacing="0" cellpadding="0" height="100%">
			<tr>
				<td valign="top" align="center">
					<table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
						<tr><td valign="bottom" align="center"><b>设置上课班组</b></td></tr>
						<tr><td valign="bottom" align="center"><script language="JavaScript">Draw_HR('99.5%')</script></td></tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="28px">
					<table width="660" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="34%">学年学期&nbsp;<select name='Sel_XNXQ'  style='WIDTH:165px'><%=(new Base().SetValue("XNXQ"))%></select></td>
							<td width="56%">课程名称&nbsp;<input type=text name='KCMC' maxlength=35 size=25></td>
							<td width="10%" align="right"><input name="Submit01" type="submit" value="检索" class="button" onclick="QryData()"></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="55%">
					<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="47%" align=left height="20px" id="wsz_rs"  >未设置(0)</td>
							<td width="6%" align=center height="20px">&nbsp;</td>
							<td width="47%" align=left height="20px" id="dsz_rs" >待设置(0)</td>
						</tr>
						
						<tr>
							<td width="47%" align=left height="95%">
								<iframe name="LfrmRpt" src="Set_SKBZ_LRpt.aspx" width="100%" height="100%" frameborder="1"></iframe></td>
							<td width="6%" align=center height="95%">
								<input name="moveright" type="button" value=">>" class="button" onclick="MoveRightData()" ><br><br><br>
								<input name="moveleft" type="button" value="<<" class="button" onclick="MoveLeftData()" ></td>
							<td width="47%" align=right height="95%">
								<iframe name="RfrmRpt" src="Set_SKBZ_RRpt.aspx" width="100%" height="100%" frameborder="1"></iframe>
								
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td align="center" height="26px">
					<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="60%" align=left valign=bottom id="ysz_rs" >已设置(0)</td>
							<td width="40%" align=right>
								<input name="addbutton" type="button" value="新增" class="button" onclick="QryData()">
								<input name="setbutton" type="button" value="设置" class="button" disabled  onclick="AddData()">
								<input name="canelbutton" type="button" value="取消" class="button" disabled onclick="DelData()">
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td align="center" height="16px" valign=bottom>
				<div style="width:100%" id="YSZSKBZHead"  ></div>
			</td>
			</tr>
			
			<tr>
				<td valign="top" align="center" height="37%">
					<iframe name="vfrmRpt" src="" style="display:none;width:0px;height:0px"  frameborder="0"></iframe>
					<iframe name="frmRpt" src="Set_SKBZ_Rpt.aspx" width="100%" height="98%" frameborder="1"></iframe>
				</td>
			</tr>
			<input type="hidden" name="xnxq" value="<%=xnxq%>">
			<input type="hidden" name="skbz" value="">
			<input type="hidden" name="kcid" value="">
			<input type="hidden" name="wszskbj" value="">
			<input type="hidden" name="dszskbj" value="">
			<input type="hidden" name="yszcount" value="">
			<input type="hidden" name="wszcount" value="">
			<input type="hidden" name="dszcount" value="">
			<input type="hidden" name="xtjskbj" value="">
			
		</table>
		</form>
	</body>
</html>

