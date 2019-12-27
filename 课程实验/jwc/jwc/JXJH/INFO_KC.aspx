<%@ Import NameSpace="BLL.JXJH"%>
<%@ Page Language="C#" %>
<script language="C#" runat="server">
string[] info;
private void Page_Load(object sender,System.EventArgs e)
{
	string vKC="";
	try{ vKC=Request.QueryString["id"].ToString().Trim();}catch(Exception){}
	try{
		info=(new private_JXJH(this)).INFO_KC(vKC);
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
}
</script>

<script language=javascript src="../sys/DisabledTheKey.js"></script>

<html>
<head>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>课程信息</title>
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false topmargin='0' leftmargin='0'>
<table border="0" width="100%" height="100%">

<tr><td valign="top" align="center" height="95%">
<table border="0" width="100%" height="100%" align="center" CELLPADDING=0 CELLSPACING=0 bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
<tr><td valign=middle align=center>
<table border="1" width="470" height="100" align="center" CELLPADDING=0 CELLSPACING=0 bordercolorlight="#75A7AE" bordercolordark="#FFFFFF">
  <tr align=center height="20" class=T>    
    <td width="100%" colspan="4" >课程信息</td>
  </tr>  
  <%try{%>
  <tr class=B height="20">
    
    <td width="12%">课程代码</td>
    <td width="38%" class=BT><%=info[0]%><br></td>
    <td width="12%" >承担单位</td>
    <td width="38%" class=BT><%=info[8]%><br></td>
  </tr>
  <tr class=H height="20">
    
    <td width="12%" >课程名称</td>
    <td width="38%" class=BT><%=info[1]%><br></td>
    <td width="12%" >英文名称</td>
    <td width="38%" class=BT><%=info[10]%><br></td>
  </tr>
  <tr class=B height="20">
    
    <td width="12%">学 &nbsp;&nbsp;&nbsp;分</td>     
    <td width="38%" class=BT><%=info[2]%><br></td>
    <td width="12%" >总 学 时</td> 
    <td width="38%" class=BT><%=info[3]%><br></td>
  </tr>
  <tr class=H height="20">
    
    <td width="12%">讲授学时</td>
    <td width="38%" class=BT align=top><%=info[4]%><br></td>
    <td width="12%">实验学时</td>
    <td width="38%" class=BT align=top><%=info[5]%><br></td>
  </tr>
  <tr class=B height="20">
    
    <td width="12%">上机学时</td>
    <td width="38%" class=BT align=top><%=info[6]%><br></td>
    <td width="12%">其他学时</td>
    <td width="38%" class=BT align=top><%=info[7]%><br></td>
  </tr>
  <tr class=H height="100">    
    <td width="12%" >内容简介</td>
    <td width="88%" colspan="3" align=top style="height:100">
    <div style="overflow:auto;height:110;width:100%"><%=info[9]%></div><br></td>
  </tr>
  <%}catch(Exception ex){ Response.Output.Write("系统发生严重错误！<br>"+ex.Message.ToString());}%>
<tr align=center height="20" class=T>    
    <td width="100%" colspan="4" ><br></td>
  </tr>  

</table>
</td></tr>
</table>
</td></tr>

<tr><td valign="bottom" align="center" height="17">
<p align="center"><a href='' onclick=top.close()>【关闭窗口】</a></p>
</td></tr>
</table>

</body>
</html>
