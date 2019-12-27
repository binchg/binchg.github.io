<%@ Page language="c#" Codebehind="Set_LessTea.aspx.cs" AutoEventWireup="false" Inherits="JWNET.ZNPK.TJKCJS" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>设置课程→任课/指导教师</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../include/scr/ind_HTML_hr.js"></script>
		<script language="javascript">
			function selon(theID)
			{
				if(theID.value=='1')
				{
				theID.value='0';
				window.Layer1.style.display='';}
				else
				{theID.value='1';
				window.Layer1.style.display='none';}
			}

			function letKC()
			{
				var theURL;
				if(Form1.chk1.disabled==true)
				{Form1.chk1.disabled=false;
				 Form1.chk1.value='0';}
				theURL='Set_LessTea_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag='+Form1.chk1.value+'&vxnxq='+Form1.xnxq.value+'&kcmc='+Form1.kcmc.value;
				main.location.href=theURL;
			}

			function letJS(theID)
			{
				var theURL;
				document.all.kccddw.value=theID.value;
				Form1.method='post';
				Form1.action='Set_TeaInfo.aspx';
				Form1.target='showjs';
				Form1.submit();
			}

			function sellesson(theID)
			{
				var theURL;
				if(theID.checked==true){
					theURL='Set_LessTea_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag=1'+'&vxnxq='+Form1.xnxq.value;   
				}else{
					theURL='Set_LessTea_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag=0'+'&vxnxq='+Form1.xnxq.value;  
				}
				main.location.href=theURL;
			}

			function SelectChk(){
				try{
					var s=false,sn=0,strurl,idval='',radval='',j;             //s用来记录是否存在被选中的复选框       
					var sn=Form1.gs.value;                                    //返回复选框的数量
					if(document.all.kcdm.value==''){         
      					alert('需选定课程！');return false;
					}
					else{
						for(j=1;j<=sn+1;j++){
							if(eval("showjs.document.all.chkKC"+j+".checked")){
								idval=eval("showjs.document.all.chkKC"+j+".value");
	  	   						if(s==false){radval=idval;s=true;}
								else{radval=radval+";"+idval;}
     						}
						}
						strurl='Set_LessTea_Save.aspx?idval='+radval;   
						if(!s){alert("需选定教师！");return false;}
						if(confirm('是否保存记录？')){
							Form1.action=strurl;Form1.submit();}
						else{
							Form1.method='post';
							document.all.kccddw.value=Form1.sel_ssbm.value;
							Form1.action='Set_TeaInfo.aspx';
							Form1.submit();
							return false;}
					}
				}catch(e){}
			}

			function movdiv()
			{
			 
				if(window.document.all.movdivflag.value=='1')
				{
					var mousex,mousey;
					var divwidth,divheight;
					var div_left,div_right;
					var div_top,div_bottom;
					var divx,divy;
					try{    
   						divwidth=250;     //window.Layer1.style.width;
						divheight=130;     ///window.Layer1.style.height;
   						mousex=window.event.x;
						mousey=window.event.y;
						
						div_left=window.Layer1.style.left;
						div_right=window.Layer1.style.right;
						div_top=window.Layer1.style.top;
						div_bottom=window.Layer1.style.bottom;
						
						divx=(div_right-div_left)/2;
						divy=(div_top-div_bottom)/2;
						
						if(divx>divwidth/2){window.Layer1.style.left=divx+Math.abs(mousex-divx);}	
						if(divy>divheight/2){window.Layer1.style.top=divy+Math.abs(mousex-divy);} 
					}catch(e){}
				}
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  
	onmouseup=" document.all.movdivflag.value='0';" leftMargin="0" topMargin="0" marginwidth="1" marginheight="0">
		<form name="Form1" action="set_kcjssd_save.asp" method="post" target="showjs">
			<table height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
				<tr>
					<td vAlign="top" align="center" colSpan="2">
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>设置课程→任课/指导教师</b></td>
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
					<td vAlign="top" align="center" width="100%" height="28px">
						<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
							<tr>
								<td align="left" width="32%" height="28" >承担单位&nbsp;<select id="sel_cddw" style="WIDTH: 150px" runat="server"></select></td>
								<td align="left" width="34%" height="28" >课程名称&nbsp;<input title="可进行模糊检索" style="WIDTH: 155px" name="kcmc"></td>
								<td align="right" width="35%" height="28" ><input id="chk1" disabled onclick="sellesson(this)" type="checkbox" name="chk1">限未确定教师课程
									<input id="chk" onclick="selon(this)" type="checkbox" value="0" name="chk">隐藏教师列表</td>
							</tr>
							<tr>
								<td align="right" width="100%" colSpan="3" height="28px"><input class="button" onclick="letKC()" type="button" value="检索">
									<input class="button" onclick="return SelectChk()" type="submit" value="保存" name="btn_search">
								</td>
							</tr>
							<tr>
								<td vAlign="top" align="center" colSpan="3" height="5%">
									<DIV id="Head" style="WIDTH: 100%"></DIV>
								</td>
							</tr>
					    </table>
						<div onmouseup="document.all.movdivflag.value='0';" onmousemove="movdiv()" onmousedown="document.all.movdivflag.value='1';" style="CURSOR: hand" 
						id="Layer1" style="BORDER-RIGHT: 1px; BORDER-TOP: 1px; Z-INDEX: 1; BORDER-LEFT: 1px; WIDTH: 250px; BORDER-BOTTOM: 1px; POSITION: absolute; TOP: 120px; HEIGHT: 60px">
							<table cellSpacing="0" borderColorDark="#ffffff" cellPadding="0" width="100%" bgColor="#f4fffb" borderColorLight="#89bfa7" border="1" >
								<tr  height="10%">
									<td colSpan="2">所属部门&nbsp;<select id="sel_ssbm" style="WIDTH: 160px" onchange="letJS(this)" name="sel_ssbm" runat="server"></select></td>
								</tr>
								<tr>
									<td id="theKC" colSpan="2">课程：</td>
								</tr>
								<tr>
									<td id="theHead" colSpan="2">&nbsp;</td>
								</tr>
								<tr height="90%">
									<td colSpan="2"><iframe name="showjs" src="Set_TeaInfo.aspx" frameBorder="0" width="100%" height="100%"></iframe>
									</td>
								</tr>
								<tr>
									<td width="55%"><input style="VISIBILITY: hidden" onclick="if(Form1.theDQDRS.disabled==true){Form1.theDQDRS.disabled=false;}else{Form1.theDQDRS.disabled=true;}"
											type="checkbox" value="0"><!--待定教师人数-->
										<input style="VISIBILITY: hidden" type="hidden" value="0" name="DQDRS"><br>
									</td>
									<td width="45%">已确定教师人数<input id="theYQDRS" style="BACKGROUND-COLOR: silver" readOnly type="text" size="2"></td>
								</tr>
							</table>
						</div>
						<input type="hidden" name="js"> <input type="hidden" name="kcdm"> <input type="hidden" name="kccddw">
						<input type="hidden" name="jsid"> <input type=hidden  value="<%=xnxq%>" name=xnxq> <input type="hidden" name="gs"> <input type="hidden" value="0" name="movdivflag">
						<input type="hidden" value="0" name="yqdjsrs">
					</TD>
				</TR>
				<tr>
					<td vAlign="top" align="center" height="95%">
						<iframe name="frmsubmit" src="" style='DISPLAY:none;WIDTH:0px;HEIGHT:0px'></iframe>
						<iframe name="main" src="Set_LessTea_rpt.aspx?flag=0" width="99%" height="98%" frameborder="0">
						</iframe>
					</td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
