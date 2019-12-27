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
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
//string userid="1992037";
%>

<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">

function doPrint(){
//t = new ActiveXObject("WScript.Shell"); 
//t.RegWrite("HKCU\\Software\\Microsoft\\InternetExplorer\\PageSetup\\header",""); 
//t.RegWrite("HKCU\\Software\\Microsoft\\InternetExplorer\\PageSetup\\footer",""); 

document.all.theHead.style.display='none';
frmRpt.headstr.style.display='';
frmRpt.document.execCommand("Print", true);
wb.execwb(8,1); 
}

function printsetup(){ 
wb.execwb(8,1); 
}

function ChkValue(theID){ 
	if(document.all.sel_kc.value==''){
		alert('请选择一门课程');
		document.all.sel_kc.focus();
		return false;
	}
	if(document.all.sel_bj.value!=''&& document.all.sel_skbj.value!=''){
		alert('行政班级或上课班级只能选其一');
		//document.all.sel_bj.focus();
		return false;
	}else{
		if(document.all.sel_bj.value=='' && document.all.sel_skbj.value==''){
			alert('请选择一个班级或上课班级');
			//document.all.sel_bj.focus();
			return false;
		}
	}
  return true;
}
</script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看学生成绩</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<form name="form1" method="post" action="Tea_kcbjcj_rpt.aspx" target="frmRpt" onSubmit="return ChkValue(this)">              
<tr><td valign="top" align="center" height="5%" width="100%">
  <table width=660 border=0 cellspacing=0 cellpadding=0 align=center height=26>
	   <tr>
	   <td id="Layer"></td>
	   <td nowrap height=26 width=500>
	    <%=SelObj.SetValue("xnxqkcbj",USER_ID)%>
	   </td>
	    <td align="right" valign="bottom">
		 <div align=left border=0 cellspacing=0 cellpadding=0 style="height:26px;" >
        	<input type="radio" value="0" name="radCx" id="radCx1" onclick="divgs.style.display='none'">原始成绩	
		    <input type="radio" value="1" checked name="radCx" id="radCx2" onclick="divgs.style.display=''">有效成绩		
		</div>
		<div align=left id=divgs style='display:_none'>
	        <input type="radio" value="2" name="gs" checked id="gs1" >格式一	
	        &nbsp;&nbsp;<input type="radio" value="3" name="gs" id="gs2">格式二
		</div>
	    </tr>
	    <tr><td colspan=3 align=right>
	    <input type=hidden name=hid_userid value=<%=USER_ID%>>
		<input type="submit" name="btn_search" value="检索" class=button>&nbsp;
		<input type="button" name="button" id="print"  value="打印" class=but20 onclick='doPrint()' disabled></td>
	    </td></tr>
	    </table>
          
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none;width:100%;'></DIV>
</td></tr>  

<tr><td valign="top" align="center" height="100%" width="100%">
<iframe name=frmRpt src="Tea_kcbjcj_rpt.aspx" width=100% height=98% frameborder=0></iframe>
</td></tr>
</table>
</body>

<object id="wb" style="display:none" width=0 height=0 
classid="clsid:8856F961-340A-11D0-A96B-00C04FD705A2" VIEWASTEXT>
</object>