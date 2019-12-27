<%@ Import NameSpace="BLL.JXSJ"%>
<html>
<head>
<title>录入毕业设计题目</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language='javascript'>
 function BtnAdd(){
	document.all.form1.tm_id.value='';
	document.all.form1.tm.value='';
	document.all.form1.nryq.value='';
	document.all.form1.bz.value='';
	document.all.form1.del.disabled=true;
	document.all.form1.savesub.disabled=false;
	document.all.tm.focus();
 }


 function ChkValue(){
    if (document.all.form1.tm.value==''){
	  alert('须输入毕业设计题目！');
	  document.all.tm.focus();
	  return false;	
	} 
	//parent.document.all.add.disabled=false;
	return true;
 }

 
  function changed(){
      document.all.form1.save.disabled=false; 
    }
</script>

<script language="C#" runat="server">
	protected string vXNXQ,vXNXQStr;
	private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.JXSJ.ind_subPrivate_JXSJ pubPri=new BLL.JXSJ.ind_subPrivate_JXSJ();
				
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				txtYXZY.Text=pubPri.SetValue("YXZY",myPage.CUR_UserInfo.USER_OptYX).ToString();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_yxdozytobysjtm");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else
					DoorOnOff("SJ_YX_ZY-BYSJTM");
			}catch(Exception ex){
				myPage.ExceptionOutputStr(ex);
			}
		}
	private void DoorOnOff(string PramName)
	{
		string t="",DoorValue="";
		BLL.include.ind_subPublic_TheSYSDoor pSub=new BLL.include.ind_subPublic_TheSYSDoor();
		t=pSub.TheSYSDoor("load","");
		try
		{
			DoorValue=pSub.TheSYSDoor("Get",PramName);
		}
		catch(Exception)
		{}
		if (DoorValue.Trim()!="1")  
			Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
	}
	</script>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<table align="center" width="660" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">
<tr><td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">

<tr><td valign="top" align="center">
      <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>录入毕业设计题目</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>

<iframe name=frmSXJD src='' style='display:none;width:0;height=0'></iframe>

   <form name="form1" method="post" action="d_set_bjsj_rpt.aspx" target="main" >  
	<tr>
      <td valign="top" align="center" colspan="2">
	  <table width="660" border=0 cellspacing="0" cellpadding="0" height="107">
          <tr> 
            <td colspan="2" ><table width="660" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="513"><asp:Literal ID="txtYXZY" Runat="server" Text=""/></td>
                  <td width="147" align="center"><div align="right">
                      <input type="submit" value="检索" class=button>
                    </div></td>
                </tr>
              </table>
		</td>
       </tr>
	            
          <tr> 
            <td width="46%" height="26">题 目 
              <input name="tm" type="text" size="35" onkeyup='changed()'></td>
            <td  width="54%">内容与要求 
              <input name="nryq" type="text" size="38" onkeyup='changed()'></td>
          </tr>
          <tr> 
            <td height="26" colspan="2" >备 注 
              <input name="bz" type="text" size="86" onkeyup='changed()'></td>
          </tr>
          <tr> 
            <td align="right" colspan="2" > 
			  <input type="hidden" name="tm_id" value="">
			  <input name="add" type="button"  value="新增"  class=button onClick=BtnAdd()> 
              <input  type="submit" name="save" id="savesub" value="保存" disabled onClick="if(confirm('是否保存记录？')){return ChkValue(this);}else{return false;}"  class=button> 
              <input type="submit"  name="save" id="del" value="删除"  class=button disabled  onClick='return confirm("是否删除选定记录？")'> 
            </td>
          </tr>
        </table></td>
    </tr>
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:99%;'></DIV>
</td></tr>

<tr><td valign="top" align="center" height="100%">
<iframe name=main src="d_set_bjsj_rpt.aspx" width=99% height=98% frameborder=0></iframe>
</td></tr> 
</table>
</td></tr>
</table>
</body>
</html>
