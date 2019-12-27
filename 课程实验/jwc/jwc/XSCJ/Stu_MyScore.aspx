<%@ Page %>
<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%
BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
string USER_ID=SelObj.USER_ID;
SelObj.DoorOnOff(this,"CJ_CJFB");
string FBflag="";
FBflag=(new BLL.admin.BLL_SetDoor()).Get_Fbcj_Door();
%>
<html>
<head>
<title>[学生成绩]—我的成绩</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
function Dissel(theID)
{
	if(theID.value=="0")
	{
		document.all.sel_xn.disabled=true;
		document.all.sel_xq.disabled=true;
	}
	else if(theID.value=="1")
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=true;
	}
	else
	{
		document.all.sel_xn.disabled=false;
		document.all.sel_xq.disabled=false;
	}
}
/*function doPrint(){
   main.document.execCommand("Print",true);
}*/
</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看成绩</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="Stu_MyScore_rpt.aspx" target="main" >              
      <tr><td valign="top" align="center" height="5%">
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
          <tr> 
            <td width="30%" align="" height="26" id=vis_xnxq>
			<%=SelObj.SetValue("CJFBXNXQ",USER_ID)%>
            <td width="50%" align="" height="26">
				<table border=0 cellpadding=0 cellspacing=0><tr>
					<%if(FBflag=="0"){%>
						<td><input type="radio" value="0" name="SJ" checked ></td><td width=55>原始成绩</td>	
						<td><br></td><td><br></td>		
					<%}else if(FBflag=="1"){%>
						<td><input type="radio" value="1" checked name="SJ" ></td><td>有效成绩</td>
						<td><br></td><td width=55><br></td>	
					<%}else{%>
						<td><input type="radio" value="0" name="SJ" ></td><td width=55>原始成绩</td>	
						<td><input type="radio" value="1" checked name="SJ" ></td><td>有效成绩</td>		
					<%}%>
				</tr></table>
            </td>          
            <td align="right" height="26">
            <input type="submit" name="btn_search" value="检索" class=button>
            <!--input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' -->
            </td>            
          </tr>
		  <tr>
		  	<td colspan="3" align="left" >
		  	<table border=0 cellspacing="0" cellpadding="0" align="left"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  	<tr><td width=190>
		  		<table border=1 width=172 align="left" cellspacing="0" cellpadding="0"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  		<tr><td>
		  			<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>入学以来</td>	
	    			<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>学年</td>
					<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>学期</td>
					</tr></table>
					<input type=hidden name="txt_xm" value=<%=USER_ID%>>
				</td></tr>
				</table>
			</td><td>
				<table border=1 width=100 align="left" cellspacing="0" cellpadding="0"  bordercolorlight="#89bfa7" bordercolordark="#FFFFFF">
		  		<tr><td>
		  			<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="zfx_flag" checked ></td><td>主修</td>
	    			<td><input type="radio" value="1" name="zfx_flag" ></td><td>辅修</td>
	    			</tr></table>
				</tr></td>
				</table>
			</td></tr>
			</table>
		  </tr>
        </table>     
</td></tr>
</form>

<tr><td valign="top" align="center"><br>
<DIV id=theHead style='display: none;width:99%;'></DIV>
</td></tr>   

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="Stu_MyScore_rpt.aspx" width=100% height=99% frameborder=0></iframe>
</td></tr> 
</table>

</body>
</html>