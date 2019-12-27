<html>
<head>
<title>分承担单位按环节确定教师</title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
<script language="javascript">
function selon(theID)
{
if(theID.value=='1')
{
 theID.value='0';
 document.all.Layer1.style.display='';}
 else
 {theID.value='1';
 document.all.Layer1.style.display='none';}
}

function letKC()
{
 var theURL;
 if(Form1.chk1.disabled==true)
   {Form1.chk1.disabled=false;Form1.chk1.value='0';}
 theURL='set_kcjssd_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag='+Form1.chk1.value+'&vxnxq='+Form1.xnxq.value;
//alert(theURL);
 main.location.href=theURL;
}

function letJS(theID)
{
 var theURL;
 Form1.method='post';
 Form1.action='set_jsxx.aspx?szbm='+theID.value;
 Form1.target='showjs';
 Form1.submit();
}

function sellesson(theID)
{
 var theURL;
 if(theID.value=='0'){
     theID.value='1';
	 theURL='set_kcjssd_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag=1'+'&vxnxq='+Form1.xnxq.value;   
	 }
 else{
     theID.value='0';
	 theURL='set_kcjssd_rpt.aspx?sel_cddw='+Form1.sel_cddw.value+'&flag=0'+'&vxnxq='+Form1.xnxq.value;  
     }
  main.location.href=theURL;
}

function SelectChk(){
	var s=false,sn=0,strurl,idval='',radval='',j;             //s用来记录是否存在被选中的复选框       
	var sn=Form1.gs.value;             //返回复选框的数量
	if(document.all.kcdm.value==''){         
      	alert('须选定环节!');return false;
	}
	else{
	    for(j=1;j<=sn;j++){
			if(eval("showjs.document.all.chkKC"+j+".checked")){
				idval=eval("showjs.document.all.radKC"+j+".value");
	  	   		if(s==false){radval=idval;s=true;}
				else{radval=radval+";"+idval;}
     		}
		}
		strurl='set_kcjssd_save.aspx?idval='+radval+'&p=upd'; 
		//if(!s){alert("请选择要确定的教师！");return false;}
		
		if(confirm('是否保存记录？')){
			 Form1.action=strurl;Form1.submit();}
		else{
		     Form1.method='post';
			 Form1.action='set_jsxx.aspx?szbm='+Form1.sel_ssbm.value;
			 Form1.submit();
			 return false;}
	}
}
/*var sel_allcddw="";	
sel_allcddw=document.all.sel_cddw.value;
window.main.location.href='../JXSJ/set_kcjssd_rpt.aspx?id='+sel_allcddw;
alert(window.main.location.href);	*/		


</script>
<script language="C#" runat="server">
	protected string vXNXQ;
	private void Page_Load(object sender,System.EventArgs e){
			KingosoftFrame.BasePage myPage=new KingosoftFrame.BasePage();
			try{
				myPage.InitPage(true);
				BLL.JXSJ.BLL_jxsj bllSj=new BLL.JXSJ.BLL_jxsj();
				opYX.Text=bllSj.SetValue("yx",myPage.CUR_UserInfo.USER_OptYX);
				opCDDW.Text=(new BLL.JXJH.private_JXJH()).SetValue("cddw",myPage.CUR_UserInfo.USER_OptDW);
				DAL.JXSJ.Data_jxsj mydata=new DAL.JXSJ.Data_jxsj();
				vXNXQ=mydata.getXNXQofJXSJCtrl("sj_cddwdohjtozdjs");
				if(vXNXQ.Length==0)
					Response.Redirect ("../_help/Sorry.aspx?str=STOP_DOOR");
				else{
					DoorOnOff("SJ_DW_HJ-JS");
				}
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

<body   leftmargin="0" topmargin="0">
<form name="Form1" method="post" action="set_kcjssd_save.aspx" target="showjs" >        
<div id="Layer1" style="position:absolute; width:250px; height:40px; z-index:1; left: 390px; top: 100px; border:1px;display:''" > 
  <table width="100%" bgcolor="#ffffff" border="1" bordercolordark="#FFFFFF" bordercolorlight="#000000" cellpadding="0" cellspacing="0">
	<tr height="10%">
          <td colspan=2>所属部门&nbsp;<select name="sel_ssbm" style="width:160 " onChange="letJS(this)" >
          <asp:Literal ID="opYX" Runat="server" Text=""/>
		  </select></td>
	</tr>
    <tr><td id=theKC colspan=2>环节:</td></tr>
	<tr><td id=theHead1 colspan=2>&nbsp;</td></tr>
	<tr height="90%"><td colspan=2><iframe name="showjs" src="set_jsxx.aspx" width="100%" height="100%" frameborder="0"></iframe></td></tr>
        <tr><td  width="55%" ><input style='Visibility:hidden'type=checkbox value='0' onclick='if(Form1.theDQDRS.disabled==true){Form1.theDQDRS.disabled=false;}else{Form1.theDQDRS.disabled=true;}'>
		<!--待定教师人数-->
                             <select style='Visibility:hidden' id=theDQDRS style='width:35;' disabled onChange="Form1.DQDRS.value=this.value"><option value=''></option>
                              <%for(int i=1;i<11;i++){
								Response.Output.Write("<option value='{0}'>{0}</option>\n",i);
                              }
                              %>
                             </select><input style='Visibility:hidden' name="DQDRS" type="hidden" value=0 ></td>
            <td  width="45%">已确定教师人数<input id=theYQDRS type=text size=2 readonly value=""></td>
        </tr>
</table>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" align="center">  
<tr><td valign="top" align="center" colspan=2>
	  <table width="660" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b>分承担单位按环节确定教师</b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
    </td></tr>   
      <tr><td valign="top" align="center" height="26" width="100%">
        <table width="660" border="0" cellspacing="0" cellpadding="0" align="center" height="26">
		  <tr>
		  <td width="35%">承担单位&nbsp;<select name="sel_cddw" style="width:150px">
		  <asp:Literal ID="opCDDW" Runat="server" Text=""/>
		  </select></td>
		   <td width="35%"><input type="checkbox" id="chk1" name="chk1" value="0" onClick="sellesson(this)" disabled>限未确定教师环节 
		                   <input type="checkbox" id="chk" name="chk" value="0" onClick="selon(this)">隐藏教师列表</td>
		   <td width="15%">&nbsp;</td>
            <td width="15%" align="right" height="26"> 
			<input type="button" value="检索" class=button onclick="letKC()">
            <input type="submit" name="btn_search" value="保存" class=button onclick='return SelectChk()'>   
            </td></tr>
        </table>
		<input name="js" type="hidden" value="">
        <input name="kcdm" type="hidden" value="">
		<input name="kccddw" type="hidden" value="">    
		<input name="jsid" type="hidden" value="">     
		<input name="xnxq" type="hidden" value="<%=vXNXQ%>">
		<input name="gs" type="hidden" value="">
		<input name="yqdjsrs" type="hidden" value=0 >
		
</td></tr>
</form>

<tr><td valign="top" align="center" height="5%" colspan="4"><br>
	<DIV id=theHead style='width:99%;'></DIV>
</td></tr>
			
<tr><td valign="top" align="center" height="100%">
<iframe name="frmsubmit" src=""  style='display:none;width:0px;height:0px'></iframe>
<iframe name="main" src="set_kcjssd_rpt.aspx?flag=0" width=99% height=98% frameborder=0></iframe>
  
</td></tr> 
</table>
</body>
</html>
