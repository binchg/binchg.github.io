<%@ Page %>
<%@ Import NameSpace="System.Data.SqlClient"%>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="JWNET"%>
<html>
<head>
<title>学籍查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<base target="main">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
</head>
<script language="C#" runat="server">
		public string html_xsxj;
		public string html_bynj;
		public string html_yx;
		public string html_pycc;
		
	
		
		private void Page_Load(object sender, System.EventArgs e)
		{	
		BLL.XSXJ.XSXJ_XSDA xsxj=new BLL.XSXJ.XSXJ_XSDA(this);
		string USER_ID=xsxj.USER_ID;
		string USER_ZH=xsxj.USER_ZH;
		string USER_NAME=xsxj.USER_NAME;
		string USER_LVID=xsxj.USER_LVID;
		string USER_BJID=xsxj.USER_BJID;
		string USER_LEVEL=xsxj.USER_LEVEL;
		string USER_OPTYX=xsxj.USER_OPTYX;
		string USER_OPTDW=xsxj.USER_OPTDW;
			if(!IsPostBack)
			{
				//string term=var.public_term;
			    //string owner=var.public_owner;
				//string THE_APPPUBLIC=owner+"#"+term+"#"+"281";
				//xsxj.App(THE_APPPUBLIC);
				html_xsxj=xsxj.Draw_xnxq();					
				html_bynj=xsxj.draw_bynj("");	
				html_yx=xsxj.SetValue("yxzy",USER_OPTYX);	
				html_pycc=xsxj.Draw_pycc();
			}
		}
</script>

<script language="JavaScript">
function SearchSubmit(){
form1.target="main1";form1.action="h_BYXSLXWL_rpt.aspx";;form1.submit();
form1.target="main2";form1.action="h_BYXSLXYL_rpt.aspx";;form1.submit();
}

function LXSet(){
var snz=main1.document.all.snz.value;
//var SqlStr1=main1.document.all.SqlStr.value
//var SqlStr2=main2.document.all.SqlStr.value
var vStr='',n=0,i;
if (snz==1 && eval("main1.document.all.Chk1.checked==true")){vStr="'"+eval("main1.document.all.Chk1.value")+"'";}
else {if(snz==0){return false;}
	else{
 	 for (i=1;i<=snz;i++){
    	 if (n==0){if (eval("main1.document.all.Chk"+i+".checked==true")){vStr="'"+eval("main1.document.all.Chk"+i+".value")+"'";n=n+1;}} 
    	 else{if (eval("main1.document.all.Chk"+i+".checked==true")){vStr=vStr+",'"+eval("main1.document.all.Chk"+i+".value")+"'";n=n+1;}}}}
}
//alert(vStr);
if(vStr==''){alert("请选择你要离校的学生");return false;}
else{if(confirm('确定对要离校的毕业生执行操作？')){
	main1.form1.action="h_BYXSLXWL_rpt.aspx?vStr="+vStr+"&button=1"
	main2.form1.action="h_BYXSLXYL_rpt.aspx?button=0"
	main1.form1.submit();
	main2.form1.submit();
	}}
}

function QXSet(){
var snz=main2.document.all.snz.value;
var vStr='',n=0,i;

if (snz==1 && eval("main2.document.all.Chk1.checked==true")){vStr="'"+eval("main2.document.all.Chk1.value")+"'";}
else {if(snz==0){return false;}
	else{
 	 for (i=1;i<=snz;i++){
    	 if (n==0){if (eval("main2.document.all.Chk"+i+".checked==true")){vStr="'"+eval("main2.document.all.Chk"+i+".value")+"'";n=n+1;}} 
    	 else{if (eval("main2.document.all.Chk"+i+".checked==true")){vStr=vStr+",'"+eval("main2.document.all.Chk"+i+".value")+"'";n=n+1;}}}}
}
if(vStr==''){alert("请选择你要取消离校设置的学生");return false;}
else{if(confirm('确定对要取消离校设置？')){
	main2.form1.action="h_BYXSLXYL_rpt.aspx?vStr="+vStr+"&button=1"
	main1.form1.action="h_BYXSLXWL_rpt.aspx?button=0"
	main1.form1.submit();
	main2.form1.submit();
	}}
}

</script>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" height="100%">
<tr><td valign="top" align="center" colspan=3>
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>毕业学生离校</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
  <form action="h_BYXSLXWL_rpt.asp" method="post" name="form1" target="main1">
   
   <tr><td valign="top" align="center" height="5%" colspan=3>
    <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
    <tr> 
       <td width=18%>毕业年届&nbsp;<select name=sel_nj><%=html_bynj%></select></td>
	<td><%=html_yx%></td>
	<td align="right"><input type="submit" name="button" value="检索"  onclick='SearchSubmit()' class="button"></td>
    </tr>
   </table>     
   </td></tr>

</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr> 

<tr>

<td valign="top" align="center" height="100%" width=45%>
<iframe name=main1 src="h_BYXSLXWL_rpt.aspx" width=100% height=98% frameborder=1 scrolling="auto"></iframe>
</td>
<td width=10% align=center>
<input type="button" name="Submit" value=">>" class="button" onclick="LXSet()"><br><br><br><br>
<input type="button" name="Submit" value="<<" class="button" onclick="QXSet()"></td>
<td valign="top" align="center" height="100%" width=55%>
<iframe name=main2 src="h_BYXSLXYL_rpt.aspx" width=100% height=98% frameborder=1 scrolling="auto"></iframe>
</td>

</tr> 
</table>
</body>

