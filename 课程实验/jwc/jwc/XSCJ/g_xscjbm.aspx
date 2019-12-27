
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
SelObj.DoorOnOff(this,"CJ_CJFB");
string USER_ID=SelObj.USER_ID;
string USER_ZH=SelObj.USER_ZH;
string USER_NAME=SelObj.USER_NAME;
string USER_LVID=SelObj.USER_LVID;
string USER_BJID=SelObj.USER_BJID;
string USER_LEVEL=SelObj.USER_LEVEL;
string USER_OPTYX=SelObj.USER_OPTYX;
string USER_OPTDW=SelObj.USER_OPTDW;
%>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language=javascript src=../include/Scr/ind_subPublic.js></script>
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

function dischk()
{
	if(document.all.chktop.checked)
	{
		document.all.txtmc1.disabled=false;
		document.all.txtmc2.disabled=false;
	}
	else
	{
		document.all.txtmc1.disabled=true;
		document.all.txtmc2.disabled=true;
	}
	
	if(document.all.chkwtg.checked)
	{
		document.all.txtwtg.disabled=false;
	}
	else
	{
		document.all.txtwtg.disabled=true;
	}
}

function ChkValue()
{
	if(document.all.chktop.checked ){
		if(isNaN(document.all.txtmc1.value)||document.all.txtmc1.value==""){
			alert('需用数字录入名次！');
			document.all.txtmc1.focus();
			return false;
		}
		if(isNaN(document.all.txtmc2.value)||document.all.txtmc2.value==""){
			alert('需用数字录入名次！');
			document.all.txtmc2.focus();
			return false;
		}
	}
	if(document.all.chkwtg.checked ){
		if(isNaN(document.all.txtwtg.value)||document.all.txtwtg.value==""){
			alert('需用数字录入未通过课程/环节数！');
			document.all.txtwtg.focus();
			return false;
		}
	}
	return true;
}

function SubmitEvent(theID)
{
	if(theID.name=="searchKC")
	{
		document.all.searchBM.disabled=true;
		form1.action="g_xscjbm_left.aspx";
		form1.target="leftmain";
		form1.submit();
	}
	else
	{
		if(ChkValue())
		{
			SQSet()
			form1.action="g_xscjbm_right.aspx";
			form1.target="rightmain";
			form1.submit();
		}
	}
}

function SQSet(){
	var n,selected=false;
	var strid="'TTTTTTTTTTTTTTTT'";
	try{n=leftmain.window.ID_Table.rows.length;}catch(err){n=0;}
	if(n>1000) window.status="正在处理准备提交的数据……请稍等片刻";
	if (n==0){return false;}
	for(i=1;i<=n;i++){
		if(eval("leftmain.document.all.chk"+i+".checked")){
			selected=true
			strid=strid+",'"+eval("leftmain.document.all.chk"+i+".value")+"'";
		}
	}
	
	window.status=""
	if(!selected){document.all.hid_kc.value="";return false;}
	document.all.hid_kc.value=strid;
}

function SetPM()
{
	var PMstr;
	PMstr=document.all.hid_pm.value;
	PMstr=openWinDialog("./private/set_xscjbm.aspx?hid_order="+PMstr,"no","400","270")
	if(PMstr!=undefined)
	{
		document.all.hid_pm.value=PMstr;
	}
}
</script>


</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>学生成绩排名[有效]</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<form name="form1" method="post" action="" target="leftmain">              
<tr><td valign="top" align="center" height="5%">
	<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
	  <tr><td>
	  <%=SelObj.SetValue("nj_yxzybj",USER_OPTYX)%>
	  </td></tr>
	  <tr><td>
		<table border=0 width=100% cellpadding=0 cellspacing=0><tr>
		<td width=275><%=SelObj.SetValue("CJFBXNXQ","")%></td>
		<td width=210>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#75A7AE bordercolordark=#FFFFFF><tr><td>
					<table border=0 cellpadding=0 cellspacing=0><tr>
					<td><input type="radio" value="0" name="SelXNXQ" onclick=Dissel(this)></td><td>入学以来</td>	
					<td><input type="radio" value="1" name="SelXNXQ" onclick=Dissel(this) ></td><td>学年</td>
					<td><input type="radio" value="2" checked name="SelXNXQ" onclick=Dissel(this) ></td><td>学期</td>
					</tr></table>
				</td></tr></table>
		</td>
		<td> 
			<table border=0 cellpadding=0 cellspacing=0><tr>
			<td><input type=checkbox value=1 name=chktop onclick=dischk()></td><td>取前</td><td><input type=text name=txtmc1 value="" size=4 disabled></td><td>—</td><td><input type=text name=txtmc2 value="" size=4 disabled></td><td>名</td>
			</tr></table>
		</td>
		</tr></table>
	  </td></tr>
	  <tr><td>
		<table border=0 width=100% cellpadding=0 cellspacing=0><tr>
		<td>
			<table border=0 cellpadding=0 cellspacing=0><tr>
			<td><input type=checkbox value=1 name=chkwtg onclick=dischk()></td><td>限未通过课程/环节数>=</td><td><input type=text name=txtwtg value="" size=4 disabled></td>
			</tr></table>
		</td>
		<td align=right>
			<input type=hidden name=hid_kc value="">
			<input type=hidden name=hid_pm value="">
			<input type="button" name="searchKC" value="选定课程/环节" onclick=SubmitEvent(this) style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(../images/button/bgbtn5_0.gif); BORDER-LEFT: medium none; WIDTH: 85px; CURSOR: hand; BORDER-BOTTOM: medium none; FONT-FAMILY: '宋体'; HEIGHT: 20px">
			<input type="button" name="setPM" value="设置排名" onclick=SetPM() class=but40>
			<input type="button" name="searchBM" value="排名" class=but20 onclick=SubmitEvent(this) disabled>
		</td></tr></table>	
	  </td></tr>
	</table>  
</td></tr>
</form>

<tr><td valign="top" align="center" height="100%">
	<table width=100% border=0 cellpadding=0 cellspacing=0 height=100%><tr>
	<td width=30%><iframe name=leftmain src="g_xscjbm_left.aspx" width=100% height=100% frameborder=1></iframe></td>
	<td width=70%><iframe name=rightmain src="g_xscjbm_right.aspx" width=100% height=100% frameborder=1></iframe></td>
	</tr></table>
</td></tr> 

</table>
</body>