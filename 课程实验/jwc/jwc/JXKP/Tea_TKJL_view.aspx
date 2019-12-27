<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="BLL.JXKP" %>
<%@ Page %>
<% 
BLL.JXKP.BLL_subPrivate_JXKP PubObj =new BLL_subPrivate_JXKP(this);
BLL.JXKP.BLL_jxkp pSub=new BLL_jxkp();
int R=0;
string vXNXQ="",vKC="",vJS="",USER_ID="",vSKDDStr="",vSKBJ="",s="",vXN="",vXQ="",vTKCS="";
string vSKDD="",vSKSJ="",vCDRS="",vZTRS="",vJLPJ="",vYJ="";
string vHTML="",vSubmit="",vTKCSstr="",vPJLC="",vLB="",vKCLB="";
string[] vPV=new string[7]{"","","","","","",""};

//***********************************************保存**************************************

if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{vKC=Request.Form["txtKCHJ"].ToString();}catch(Exception){vKC="";}
	try{vJS=Request.Form["txtJSDM"].ToString();}catch(Exception){vJS="";}
	try{vXN=Request.Form["xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["xq"].ToString();}catch(Exception){vXQ="";}
	try{vTKCS=Request.Form["txtcs"].ToString();}catch(Exception){vTKCS="";}
	try{vSKBJ=Request.Form["txtSKBJ"].ToString();}catch(Exception){vSKBJ="";}
	try{vSKSJ=Request.Form["sksj"].ToString();}catch(Exception){vSKSJ="";}
	try{vSKDD=Request.Form["Sel_SKJS"].ToString();}catch(Exception){vSKDD="";}
	try{vCDRS=Request.Form["cdrs"].ToString();}catch(Exception){vCDRS="";}
	try{vZTRS=Request.Form["ztrs"].ToString();}catch(Exception){vZTRS="";}
	try{vJLPJ=Request.Form["jlpj"].ToString();}catch(Exception){vJLPJ="";}
	try{vPJLC=Request.Form["txtPJLC"].ToString();}catch(Exception){vPJLC="";}
	try{vLB=Request.Form["txtlb"].ToString();}catch(Exception){vLB="";}
	vJLPJ=PubObj.RequestSafeValue(vJLPJ);
	try{vYJ=Request.Form["yjjy"].ToString();}catch(Exception){vYJ="";}
	vYJ=PubObj.RequestSafeValue(vYJ);
	try{USER_ID=Request.Form["txtid"].ToString();}catch(Exception){USER_ID="";}
	
	pSub.SaveValueWSKPJSP_TK(vTKCS,vXN,vXQ,vJS,vKC,vSKBJ,vSKSJ,vSKDD,vCDRS,vZTRS,vJLPJ,vYJ,USER_ID,true,vLB,"",vPJLC);
	Response.Output.Write ("<script language=javascript>window.close();</script>");
}
//***********************************************end***************************************

try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vKC=Request.QueryString["kcdm"].ToString();}catch(Exception){vKC="";}
try{vJS=Request.QueryString["jsdm"].ToString();}catch(Exception){vJS="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}

try{vPV=pSub.GetTKJL(vXNXQ,vJS,vKC,USER_ID,vKCLB,vLB,vPJLC);
}catch(Exception){}
if(vXNXQ!="")
{
	vXN=vXNXQ.Substring(0,4);
	vXQ=vXNXQ.Substring(4,1);
}

%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>查看听课记录表</title>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language=javascript>
function selchk()
{
return ChkValue()
}

function ChkValue()
{
  var r; 
 if (Form1.thesksj.value == "") 
    { alert('须录入上课时间！');
      Form1.thesksj.focus();
      return false; }
 if (Number(Form1.ztrs.value) != Form1.ztrs.value) 
    { alert('需用数字录入学生早退人数！');
      Form1.ztrs.focus();
     return false; 
	 }
 if (Number(Form1.cdrs.value) != Form1.cdrs.value) 
    { alert('需用数字录入学生迟到人数！');
      Form1.cdrs.focus();
      return false ;}
return true;
 }
 </script>
</head>
<center>
<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" >
<tr><td valign=top align=center> 
		<table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>查看听课记录</b><br><script language="JavaScript" >Draw_HR('99.5%')</script>
		</td></tr>
		</table>  
</td></tr>

<Form method="post" name="Form1" Action="Tea_TKJL_view.aspx"  onsubmit='return ChkValue(this)'>
<tr><td width=100% align="center" >
<table border="0" width="100%" height="170" CELLPADDING=0 CELLSPACING=0 >
 <tr>
	      <td width="100%" height="20" colspan="4" nowrap class=buttom><%=vPV[7]%></td>
  </tr>
  <tr class=B >
	<td  nowrap>上&nbsp;课&nbsp;时&nbsp;间&nbsp;</td>
	<td >
	   <input type="hidden" align="Right" readonly name="sksj" value=<%=vPV[6]%> >
	  
	   <input type="text" align="Right" readonly name="thesksj" value=<%=PubObj.FormatDate(vPV[6],"10")%> >
    </td>
	<td nowrap>上&nbsp;课&nbsp;地&nbsp;点&nbsp;</td>
	<td ><input type="text" align="Right" readonly style="width:220px" name="SKdd"value=<%= vPV[0]%> >
	</td>
  </tr>
  
   <tr class=B >
	<td nowrap>学生迟到人数</td>
	<td >
	  <input type="text" align="Right"  name="cdrs" maxlength="3" value=<%=vPV[1]%>>
	</td>
	<td  nowrap>学生早退人数</td>
	<td >
	  <input type="text" align="Right"  name="ztrs" maxlength="4" style="width:220px" value="<%=vPV[2]%>">
	</td>
  </tr> 
  
  <tr class=H height="40">
	<td width="12%" height="20" colspan="4">听课记录及评语</td> 
  </tr>

  <tr class=B height="100">
	<td align="" width="100%" class=BT height="80" colspan="4">
	  <textarea name="jlpj" id="jlpj" wrap="soft" rows="6" cols="74"><%=vPV[3]%>
	  </textarea>
	</td>
  </tr>

  <tr class=H >
    <td width="12%" height="20" colspan="4">意见与建议</td>  
  </tr>

  <tr class=B >
    <td align="" width="80%" height="80" colspan="4">
	  <textarea name="yjjy" wrap="soft" rows="6" cols="74"><%=vPV[4]%>
	  </textarea>
	</td>
  </tr>

<tr><td colspan="4" align=center><input type="submit" name="btn_search" value="提交" class=but20>&nbsp;&nbsp;&nbsp;<input type="button" name="back" value="返回" onclick=window.close() class=but20></td></tr>

  <input type="hidden" name="txtKCHJ" value=<%=vKC%>>
  <input type="hidden" name="txtJSDM" value=<%=vJS%>>
  <input type="hidden" name="txtid" value=<%=USER_ID%>>
  <input type="hidden" name="xn" value=<%=vXN%>>
  <input type="hidden" name="xq" value=<%=vXQ%>>
  <input type="hidden" name="txtSKBJ" value=<%=vSKBJ%>>
  <input type="hidden"  name="Sel_SKJS"value=<%=vPV[5]%> >
  <input type="hidden" name="txtcs" value=<%=vTKCS%>>
  <input name="txtlb" type="hidden"  value="<%=vLB%>">
  <input name="txtPJLC" type="hidden" value="<%=vPJLC%>">
  <input type="hidden" name="btn_search" value="保">
  </Form>
</table>
</body>
</html>