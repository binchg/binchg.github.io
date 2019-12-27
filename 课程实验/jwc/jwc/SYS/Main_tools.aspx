<%@ Import NameSpace="BLL.Sys"%>
<%@ Page Language="C#" %>
<html>
<head>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../_style/styles_menu.css" rel=Stylesheet type=text/css>
<title>工具栏</title>
<object id=hhctrl type='application/x-oleobject' 
classid='clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11' VIEWASTEXT>
<param name='Command' value='minimize'></object>
<script language="javascript" src="./Main_tools.js"></script>
</head>
<body background="../images/_menu/Buttonback.gif"  topmargin="0" leftmargin="0" oncontextmenu=window.event.returnValue=false onselectstart=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false  >

<table border=0 width="100%" height="20" cellpadding="0" cellspacing="0" id=menu state=''>
<tr height=20>
<td width=120px align=left>
	<table border=0 height="20" cellpadding="0" cellspacing="0"><tr>
	<td align=center id='W' width=50px> 
	<img id='PW' src='../images/_menu/push.gif' border=0 state='0' tag='push' title="隐藏主控菜单" onclick="onhide1(this)">
	</td><td align=center id='W' width=70px> 
	<img id='PU' src='../images/_menu/blank.gif' border=0 state='0' tag='' title="" onclick="onhide2(this)">
	</td></tr></table>
</td>

<td valign="middle" align=center height=20 width=100%>
<MARQUEE id=theInfo style="width:100%" onmouseover=this.stop() onmouseout=this.start()  scrollAmount=1 scrollDelay=50 direction=left height=20 >
<%try{%>
<%=(new FrameSysControl()).getPublicMSG(Page.Server.MapPath("../_data/XMLDOM/PublicMSG.xml"))%>
<%}catch(Exception ex){ Response.Output.Write(ex.Message.ToString());}%>
</MARUEE>
</td>

<td valign="top" align=right nowrap>
<table border=0 cellpadding="0" cellspacing="0" width=296 ><tr>
<!--td><img src='../images/_menu/B1.gif' border=0></td-->
    
<td align=center>
<img id=T6 src='../images/_menu/home.gif' border=0 state='0' alt='back' title='首页' 
onmouseover=DoMouse(this) onmouseout=DoMouse(this) onclick="openWinHome('../','winHome',790,425)"></td>

<td align=center>
<img id=T1 src='../images/_menu/back.gif' border=0 state='0' alt='back' title='后退' 
onmouseover=DoMouse(this) onmouseout=DoMouse(this) onclick="try{parent.frmbody.frmMain.history.go(-1)}catch(goErr){}"></td>

<!--td align=center> 
<img id=T2 src='../images/_menu/forward.gif' border=0 state='0' alt='forward' title='前进'
onmouseover=DoMouse(this) onmouseout=DoMouse(this) onclick="try{parent.frmbody.frmMain.history.go(1)}catch(goErr){}"></td-->

<td align=center >
<img id=T3 src='../images/_menu/fresh.gif' border=0 state='0' alt='fresh' title='刷新'
onmouseover=DoMouse(this) onmouseout=DoMouse(this) onclick=Fresh()></td>

<td align=center > 
<img id=T4 src='../images/_menu/help.gif' border=0 state='0' alt='help' title='帮助' 
onclick=Help() onmouseover=DoMouse(this) onmouseout=DoMouse(this)></td>

<td align=center > 
<img id=T5 src='../images/_menu/close.gif' border=0 state='0' alt='close' title='注销' value=''
onclick="LogOut();" onmouseover=DoMouse(this) onmouseout=DoMouse(this) accesskey='c'></td>

<!--td ><img src=../images/_menu/B3.gif></td-->
</tr></table>
<iframe name=Rpt style="display:none" frameborder=0></iframe>
<input type=hidden name=typeName value=<%=Session["TypeName"].ToString()%>>
</td></tr>

</table>
</body> 
</html>

<script language="javascript">
try{if(window.screen.width>800) 
document.all.theInfo.width=window.screen.width-350;
}catch(err){}
function Help()
{
	var TypeName="";
	TypeName=document.all.typeName.value;
	TypeName=TypeName.substring(0,3);
	//alert(TypeName);
	if(TypeName=="ADM")
	  openWinX('../_help/master/index.htm',437,543);
	else if(TypeName=="SYS")
	  openWinX('../_help/admin/index.htm',437,543);
	else if(TypeName=="TEA")
	  openWinX('../_help/teacher/index.htm',437,543);
	else if(TypeName=="STU")
	  openWinX('../_help/student/index.htm',437,543);
}
</script>