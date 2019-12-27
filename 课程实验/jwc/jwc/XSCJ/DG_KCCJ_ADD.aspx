<%@ Page %>
<%@ Import NameSpace="CLL" %>
<%@ Import NameSpace="BLL.XSCJ" %>
<%@ Import NameSpace="BLL.include" %>
<%@ Import NameSpace="System.Web.UI.HtmlControls" %>
<%@ Import NameSpace="System.Web.UI.WebControls" %>
<%@ Import NameSpace="System.Web.UI" %>
<%@ Import NameSpace="System.Web.SessionState" %>
<%@ Import NameSpace="System.Web" %>
<%
	BLL.XSCJ.BLL_CJLR GetN=new BLL_CJLR();
	BLL.include.ind_subPublic GetV=new BLL.include.ind_subPublic();
	string vstr="";
	string vXNXQ=GetN.GetXNXQ();
	BLL.XSCJ.BLL_subPrivate_XSCJ SelObj =new BLL_subPrivate_XSCJ(this);
	string USER_ID=SelObj.USER_ID;
	vstr=GetV.GetValue("xnxq",vXNXQ);
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
	<style>
		input.BL{text-align:right;border-style:solid; border-width:1;width:27px;}
	</style>
	<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
	<title>分课程按上课班级录入多个成绩</title>
	<script language="javascript">
		function ChkValue()           
		{
			var psbl,sybl,zkbl,mkbl,sjbl,tlbl,jsbl,llbl;
			try{
 				if((document.all.sel_kc.value=='')||(document.all.sel_kc.value=='Nothing')){alert('请选择课程！');return false;}
				if((document.all.sel_skbj.value=='')||(document.all.sel_skbj.value=='Nothing')){alert('请选择上课班级！');return false;}
 				if((document.all.CJBXXS.value=='')||(document.all.CJBXXS.value=='Nothing')){alert('成绩表现形式不能为空！');return false;}
 				psbl=parseInt(document.all.chkPSBFB.value);
 				sybl=parseInt(document.all.chkSYBFB.value);
 				zkbl=parseInt(document.all.chkZKBFB.value);
 				mkbl=parseInt(document.all.chkMKBFB.value);
 				sjbl=parseInt(document.all.chkSJBFB.value);
 				tlbl=parseInt(document.all.chkTLBFB.value);
 				jsbl=parseInt(document.all.chkJSBFB.value);
 				llbl=parseInt(document.all.chkLLBFB.value);
				if(psbl+sybl+zkbl+mkbl+sjbl+tlbl+jsbl+llbl!=100){alert('非法成绩比例！');return false;}
			}
			catch(e){return false;}
		}

		function OnSel(theID)
		{
			if(isNaN(theID.value)){
				theID.value=0;
				theID.focus;}
			else{
				if(theID.value<0){alert('成绩比例必须大于0!');theID.value=0;theID.focus;}
				if(theID.value==""){theID.value=0;theID.focus;}
			}
		}
	</script>

	<script language=vbscript>
		Sub SubmitDataOnclick()
			rs=cint(frmRpt.document.all("tabRows").value)
			allcj=""
			window.status="正在检查成绩录入情况……请稍后！"
			for ii= 1 to rs
				percj=""
				percj=percj&frmRpt.document.all("chkQMTSQKID"&ii).value
				if frmRpt.document.all("chkPSYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKPSCJ"&ii).value
				if frmRpt.document.all("chkQZYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQZCJ"&ii).value
				if frmRpt.document.all("chkQMYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKQMCJ"&ii).value	
				if frmRpt.document.all("chkSYYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKSYCJ"&ii).value
				if frmRpt.document.all("chkSJYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKSJCJ"&ii).value
				if frmRpt.document.all("chkTLYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKTLCJ"&ii).value
				if frmRpt.document.all("chkJSYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKJSCJ"&ii).value
				if frmRpt.document.all("chkLLYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKLLCJ"&ii).value
				if frmRpt.document.all("chkZHYL"&ii).value="0" then percj=percj&frmRpt.document.all("CHKZHCJ"&ii).value	
				allcj=allcj&percj
				if percj<>"" and frmRpt.document.all("chkQMTSQKID"&ii).value="" then
					if frmRpt.document.all("CHKPSCJ"&ii).value="" and frmRpt.document.all("chkPSYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKPSCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKQZCJ"&ii).value="" and frmRpt.document.all("chkQZYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKQZCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKQMCJ"&ii).value="" and frmRpt.document.all("chkQMYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKQMCJ"&ii).focus()
						exit sub
					end if
					
					if frmRpt.document.all("CHKSYCJ"&ii).value="" and frmRpt.document.all("chkSYYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKSYCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKSJCJ"&ii).value="" and frmRpt.document.all("chkSJYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKSJCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKTLCJ"&ii).value="" and frmRpt.document.all("chkTLYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKTLCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKJSCJ"&ii).value="" and frmRpt.document.all("chkJSYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKJSCJ"&ii).focus()
						exit sub
					end if
					if frmRpt.document.all("CHKLLCJ"&ii).value="" and frmRpt.document.all("chkLLYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						window.status=""
						frmRpt.document.all("CHKLLCJ"&ii).focus()
						exit sub
					end if
					
					if frmRpt.document.all("CHKZHCJ"&ii).value="" and frmRpt.document.all("chkZHYL"&ii).value="0" then
						msgbox "第"&ii&"条成绩记录不完整!",64,"系统提示"
						 window.status=""
						frmRpt.document.all("CHKZHCJ"&ii).focus()
					end if
				end if
			next
			
			window.status=""
			if allcj="" then
				msgbox "没有成绩可以提交!",64,"取消提交："
				exit sub
			end if
			If MsgBox("提交后的成绩将不能被修改！"&vbCrLf&vbCrLf&"你确信提交当前成绩吗？",vbYesNo+vbQuestion+vbDefaultButton2,"警告")=vbYes Then
				frmRpt.form1.submit
			End If
		End Sub
	</Script>
</head>
<body   bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table width="100%" border=0 cellspacing="0" cellpadding="0" height="100%">
		<tr><td valign="top" align="center">
			<table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
				<tr><td valign="bottom" align="center"><b>分课程按上课班级录入多个成绩</b></td></tr>
				<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script></td></tr>
			</table>   
		</td></tr>

		<form name="form1" method="post" action="DG_KCCJ_ADD_rpt.aspx" onSubmit="return ChkValue()" target="frmRpt">
		<tr><td>
			<table width="660" border=0 align="center" cellpadding="0" cellspacing="0"  >
				<tr><td height="24" align=left >学年学期：&nbsp;<%=vstr%></td></tr>
				<tr><td height="24" >
					<table border=0 width="660" align="center" cellpadding="0" cellspacing="0">
						<%Response.Output.Write (" <td height=24  id=bjkc colspan=3 width='60%'>");
						Response.Output.Write  ((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJLRKCSKBJ",vXNXQ,USER_ID));
						Response.Output.Write  ("</td>");
						Response.Output.Write  ("<td height=24  width='26%'>成绩表现形式&nbsp;");
						Response.Output.Write  ("<select id='CJBXXS' name='CJBXXS' style='width:90px;'>");
						Response.Output.Write  ((new BLL.XSCJ.BLL_subPrivate_XSCJ()).SetValue("CJBXXS","",""));
						Response.Output.Write  ("</select></td>");
						%>
						<td  width='14%' align=right>
						<input name=Submit01 type=submit value=检索 class=button>
						<input type=button value=保存 disabled name=SubmitData onclick='SubmitDataOnclick()' class=button>
						</td>
					</td></tr></table>
  				</td></tr>
				<tr><td height="24" >
					<table border=0 width="100%" align="center" cellpadding="0" cellspacing="0"><tr>
						<td height="26" align=left >成绩比例：&nbsp;
							平时&nbsp;<input name="chkPSBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)" class="BL" >%&nbsp;
							中考&nbsp;<input name="chkZKBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							末考&nbsp;<input name="chkMKBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							实验&nbsp;<input name="chkSYBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							上机&nbsp;<input name="chkSJBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							听力&nbsp;<input name="chkTLBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							技术&nbsp;<input name="chkJSBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%&nbsp;
							理论&nbsp;<input name="chkLLBFB" type="text" value=0 maxlength="3" size="3" onBlur="OnSel(this)"  class="BL" >%
							<input type=hidden name=hid_user value='<%=USER_ID%>'>
							<input type=hidden name=hid_xnxq value='<%=vXNXQ%>'>
						</td></tr>
					</table>
				</td></tr>
				</table>
			</td></tr>
		</form>

		<tr><td valign="top" align="center" height="100%">
			<iframe name=frmRpt src="DG_KCCJ_ADD_rpt.aspx" width=99% height=99% frameborder=1></iframe>
		</td></tr>
	</table>
</body>
</html>