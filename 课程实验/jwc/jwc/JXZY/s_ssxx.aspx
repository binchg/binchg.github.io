<%@ Page %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>教学场地信息</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../_style/styles_Qry.css" type="text/css" rel="stylesheet">
	<script language=C# runat=server>
		public string htmla;
		public string htmlb;
		public string htmlc;
		public string strJava;
		private void Page_Load(object sender, System.EventArgs e)
		{
			BLL.JXZY.jxzy yxb=new BLL.JXZY.jxzy(this);
			// 在此处放置用户代码以初始化页面
			if(!IsPostBack)
			{
				htmla=yxb.DrawSelect();	
				htmlb=yxb.DrawSelect_XQ();
				htmlc=yxb.st_jxl("%");				
			}
		}
	</script>
	<script language="JavaScript" src="./../include/Scr/ind_HTML_hr.js"></script>
	<script language="JavaScript">
		function LetInnerXML(thisID,vP,vT)
				{ 
					var vXML,vWd,vID=thisID.value;
					eval("vWd=document.all.the"+vP+".width");
				
					vURL='../JXZY/Private/list_'+vP+'.asp?id='+vID+'&wd='+vWd; 
					vXML=getXMLHTTP(vURL,vID); 
					eval("document.all.theXQJXL.innerHTML=vXML"); 
					var ret=window.getXMLHTTP('../sys/xml/SetCodePage.asp','');//alert(vXML);
				}
				function getXMLHTTP(pURL,pStr)
				{
					try
						{
							var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    						xmlhttp.Open("POST", pURL, false);
							xmlhttp.Send("<root>"+pStr+"</root>");
							var sendXML=xmlhttp.ResponseText; //alert(sendXML);
							return sendXML;
						}
						catch(e){return e.description}
				}
		function submit_Click()
				{
					zylb=document.all.zylb.value;
					xq=document.all.sel_xq.value;
					lf=document.all.Sel_jxl.value;
					jslx=document.all.jslx.value;		
					main.document.location.href="..//JXZY//s_ssxx_rpt.aspx?flag=select1&zylb="+zylb+"&xq="+xq+"&lf="+lf+"&jslx="+jslx;
				}
		function SelCD (theForm) 
		{
			if(document.all.zylb.options[document.all.zylb.selectedIndex].value=='0')
				{
					 window.Layer1.style.display="";
					 window.Layer2.style.display="";
					// window.Layer3.style.display="";
				}
   
		   if(document.all.zylb.options[document.all.zylb.selectedIndex].value=='1')
				{
					window.Layer1.style.display="";
					window.Layer2.style.display="none";
				    //window.Layer3.style.display="";
				}
   
		  if(document.all.zylb.options[document.all.zylb.selectedIndex].value=='2')
               {
					window.Layer1.style.display="none";
					window.Layer2.style.display="none";
					//window.Layer3.style.display="none";
				}
   
		if(document.all.zylb.options[document.all.zylb.selectedIndex].value=='3')
				{window.Layer1.style.display="";
				 window.Layer2.style.display="none";
				//window.Layer3.style.display="none";
				}
		}
		</script>
</HEAD>
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
		
			<table  height="100%" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
				<tr >
					<td vAlign="top" align="center" colSpan="3">
					
						<table height="26" cellSpacing="0" cellPadding="0" width="660" align="center" border="0">
							<tr>
								<td vAlign="bottom" align="center"><b>教学场地信息</b></td>
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
					<td id="objCx" vAlign="top" align="center" height="4%">
					<form name="form1" method="post" action="s_ssxx_rpt.aspx" target="main" >
						<table id="tblJbcx" height="100%" cellSpacing="0" cellPadding="0" width="660" align="center"	border="0">
							<tr>
								<td style="WIDTH: 160px" width="160" height="20">场地类别<select id="zylb" name="zylb" onchange=SelCD(this) style="WIDTH: 100px" size="1" >
										<option value="0" selected >教室</option>
										<option value="1">实验室</option>
										<option value="2">实习基地</option>
										<option value="3">体育场馆</option>
									</select><input id="flag" name=flag type="hidden" value="select">
								</td>
								<td width=135 height=20>
								<div id='Layer1'  ;??>								
								<table border=0 cellpadding=0 cellspacing=0><tr>
								<td width="280"><%=htmlc%><FONT face="宋体"></FONT></td></tr></table>
								</div>
								</td>
								<td width=175>
								<div id='Layer2'  ;??>
								<table border=0 cellpadding=0 cellspacing=0><tr>
								<td width="55">教室类型</td>
								<td width="125">
									<%=htmla %>
								</td>
								</tr>
								</table>
								</div>
								</td>
								<td align="right"><input class="button" type="submit" value="检索" name="submit" ></td>
							</tr>
						</table></form>
					</td>
				</tr>
				<tr><td valign="top" align="center" height="3%"><br>
					<DIV id=theHead style='WIDTH: 99%'></DIV>
				</td></tr> 
				<tr>
					<td id="ifr" vAlign="top" align="center" height="100%">
					<iframe name="main" src="s_ssxx_rpt.aspx?flag=firstload" frameBorder="0" width="99%" height="98%"></iframe>
					</td>
				</tr>
			</table>		
	</body>
</HTML>
