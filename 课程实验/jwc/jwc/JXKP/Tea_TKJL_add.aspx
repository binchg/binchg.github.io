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
string vHTML="",vPJLC="",vZJ_FLAG="",vLB="",vKCLB="";
string[] vPV=new string[8]{"","","","","","","",""};
//*******************************************保存*************************************
if (Request.ServerVariables["REQUEST_METHOD"] == "POST")
{
	try{s=Request.Form["txts"].ToString();}catch(Exception){s="";}
	try{vKC=Request.Form["txtKCHJ"].ToString();}catch(Exception){vKC="";}
	try{vJS=Request.Form["txtJSDM"].ToString();}catch(Exception){vJS="";}
	try{vXN=Request.Form["xn"].ToString();}catch(Exception){vXN="";}
	try{vXQ=Request.Form["xq"].ToString();}catch(Exception){vXQ="";}
	try{vSKDDStr=Request.Form["Sel_SKJS"].ToString();}catch(Exception){vSKDDStr="";}
	try{vKCLB=Request.Form["txtkclb"].ToString();}catch(Exception){vKCLB="";}
	try{vPJLC=Request.Form["txtPJLC"].ToString();}catch(Exception){vPJLC="";}
	try{vZJ_FLAG=Request.Form["txtZJ"].ToString();}catch(Exception){vZJ_FLAG="";}
	try{vLB=Request.Form["txtlb"].ToString();}catch(Exception){vLB="";}
	vSKDD=vSKDDStr.Split('|')[0];
	vSKBJ=vSKDDStr.Split('|')[1];
	
	try{vSKSJ=Request.Form["sksj"].ToString();}catch(Exception){vSKSJ="";}
	vSKSJ=PubObj.FormatDate(vSKSJ,"8");
	try{vCDRS=Request.Form["cdrs"].ToString();}catch(Exception){vCDRS="";}
	try{vZTRS=Request.Form["ztrs"].ToString();}catch(Exception){vZTRS="";}
	try{vJLPJ=Request.Form["jlpj"].ToString();}catch(Exception){vJLPJ="";}
	vJLPJ=PubObj.RequestSafeValue(vJLPJ);
	try{vYJ=Request.Form["yjjy"].ToString();}catch(Exception){vYJ="";}
	vYJ=PubObj.RequestSafeValue(vYJ);
	try{USER_ID=Request.Form["txtid"].ToString();}catch(Exception){USER_ID="";}
	vTKCS="1";
	pSub.SaveValueWSKPJSP_TK(vTKCS,vXN,vXQ,vJS,vKC,vSKBJ,vSKSJ,vSKDD,vCDRS,vZTRS,vJLPJ,vYJ,USER_ID,false,vLB,vZJ_FLAG,vPJLC);
	
	vHTML="<a href=javascript:void(0) onclick=MM_openBrWindow(\"Tea_TKJL_view.aspx?xnxq="+vXN+vXQ+"&id="+USER_ID+"&kcdm="+vKC+"&jsdm="+vJS+"&kclb="+vKCLB+"&lb="+vLB+"&zj_flag="+vZJ_FLAG+"&pjlc="+vPJLC+"\",\"winKPT\",\"width=580,height=400,scrollbars=yes\") title=查看评分>查看</a>";
	Response.Output.Write ("<script language=javascript>opener.document.all.chk"+s+".innerHTML='"+vHTML+"';window.close();</script>");
	Response.End();
	
}

//*******************************************end**************************************

try{vXNXQ=Request.QueryString["xnxq"].ToString();}catch(Exception){vXNXQ="";}
try{vKC=Request.QueryString["kcdm"].ToString();}catch(Exception){vKC="";}
try{vJS=Request.QueryString["jsdm"].ToString();}catch(Exception){vJS="";}
try{USER_ID=Request.QueryString["id"].ToString();}catch(Exception){USER_ID="";}
try{s=Request.QueryString["s"].ToString();}catch(Exception){s="";}
try{vPJLC=Request.QueryString["pjlc"].ToString();}catch(Exception){vPJLC="";}
try{vZJ_FLAG=Request.QueryString["zj_flag"].ToString();}catch(Exception){vZJ_FLAG="";}
try{vLB=Request.QueryString["lb"].ToString();}catch(Exception){vLB="";}
try{vKCLB=Request.QueryString["kclb"].ToString();}catch(Exception){vKCLB="";}
vXN=PubObj.Left(vXNXQ,4);
vXQ=PubObj.Right(vXNXQ,1);
try{
	vPV=pSub.GetKC_BJ(vXNXQ,vJS,vKC,vKCLB);
	vSKDDStr=pSub.WRT_theSKDD(vXNXQ,vJS,vKC,vPV[7]);
}catch(Exception){}
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<title>提交听课记录表</title>
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
</head>
<script language="JavaScript">
function ChkValue(theForm)
{

 //alert(theForm.action);
 var r; 
 if (theForm.txtKCHJ.value == ""  || theForm.txtKCHJ.value=="Nothing") 
    { alert('没有课程信息！')
      return false; }
 if (theForm.txtJSDM.value == "" || theForm.txtJSDM.value=="Nothing") 
    { alert('没有任课教师信息！');
      return false; }
 if (theForm.Sel_SKJS.value == "" || theForm.Sel_SKJS.value=="Nothing") 
    { alert('须选定上课地点！');
      return false; }
 if (theForm.sksj.value == "") 
    { alert('须录入上课时间！');
      theForm.sksj.focus();
      return false; }
 else
    {
	  if(datamsg.Msg!=""){	  
	  alert(datamsg.Msg);
	  theForm.sksj.focus();
	  return false;
	  }
    	
	}
 if (Number(theForm.tkcs.value) != theForm.tkcs.value) 
    { alert('需用数字录入听课次数！');
      theForm.tkcs.focus();
      return false; }
 if (Number(theForm.ztrs.value) != theForm.ztrs.value) 
    { alert('需用数字录入学生早退人数！');
      theForm.ztrs.focus();
      return false; }
 if (Number(theForm.cdrs.value) != theForm.cdrs.value) 
    { alert('需用数字录入学生迟到人数！');
      theForm.cdrs.focus();
      return false; }
  return true;    
}
 </script>
 
 <script language=vbscript>
 Sub BoolisData(theV)
	if not isDate(theV) then
		datamsg.Msg="需录入正确的日期格式！"
	else
		datamsg.Msg=""
	end if
 End Sub
 </script>
 
<center>


<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" >
 <tr><td valign="top" align="center" >
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>提交听课记录表</b><br><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
<Form method="post" Action="Tea_TKJL_add.aspx" name="Form" onsubmit='return ChkValue(this)'>
<tr><td width=100% align="center" >
 <table border="0" width="100%" height="170" CELLPADDING=0 CELLSPACING=0 >
 <tr>
	      <td width="100%" height="20" colspan="4" nowrap class=buttom><%=vPV[6]%></td>
  </tr>
  <tr class=B>
	<td id=datamsg  nowrap Msg='输入的日期格式不正确！'>上&nbsp;课&nbsp;时&nbsp;间&nbsp;</td>
	<td >
	   <input type="text" value="0000-00-00" align="Right" name="sksj" onblur=vbscript:BoolisData(document.all.sksj.value)>
    </td>
	<td nowrap>上&nbsp;课&nbsp;地&nbsp;点&nbsp;</td>
	<td >
	  <%=vSKDDStr%>
	</td>
  </tr>
  
   <tr class=B >
	<td nowrap>学生迟到人数</td>
	<td >
	  <input type="text" align="Right" value="0" name="cdrs" maxlength="3">
	</td>
	<td  nowrap>学生早退人数</td>
	<td >
	  <input type="text" align="Right" value="0" name="ztrs" maxlength="4" style="width:210px">
	</td>
  </tr> 
  
  <tr class=H height="40">
	<td width="12%" height="20" colspan="4">听课记录及评语</td> 
  </tr>

  <tr class=B height="100">
	<td align="" width="100%" class=BT height="80" colspan="4">
	  <textarea name="jlpj" id="jlpj" wrap="soft" rows="7" cols="74"></textarea>
	</td>
  </tr>

  <tr class=H>
    <td width="12%" height="20" colspan="4">意见与建议</td>  
  </tr>

  <tr class=B>
    <td align="" width="80%" height="80" colspan="4">
	  <textarea name="yjjy" wrap="soft" rows="7" cols="74"></textarea>
	</td>
  </tr>

<tr><td colspan="4">&nbsp;</td></tr>
  <tr>
    <td align="center"  colspan="4">
      <input type="submit" value="保存" class="but20" name="submit"> 	
      <input type="button" value="返回" class="but20" name="submit" onclick="javascript:top.close();return false;">                
	</td>
  </tr>
  </table>
</td></tr>
  <input type="hidden" name="txtKCHJ" value=<%=vKC%>>
  <input type="hidden" name="txtJSDM" value=<%=vJS%>>
  <input type="hidden" name="txtid" value=<%=USER_ID%>>
  <input type="hidden" name="txts" value=<%=s%>>
  <input type="hidden" name="xn" value=<%=vXN%>>
  <input type="hidden" name="xq" value=<%=vXQ%>>
  <input type="hidden" name="txtSKBJ" value=<%=vSKBJ%>>
  <input type="hidden"  value="<% =vTKCS %>" name="tkcs" maxlength="2">
  <input name="txtlb" type="hidden"  value="<%=vLB%>">
  <input name="txtPJLC" type="hidden" value="<%=vPJLC%>">
  <input name="txtZJ" type="hidden" value="<%=vZJ_FLAG%>">
  <input type=hidden name="txtkclb" value=<%=vKCLB%>>
  </Form>
</table>
</body>
</html>
