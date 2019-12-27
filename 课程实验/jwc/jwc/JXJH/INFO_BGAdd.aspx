<%@ Page %>
<%@Import NameSpace="BLL.JXJH"%>
<%
BLL.JXJH.private_JXJH pSub=new BLL.JXJH.private_JXJH(this);
%>
<script language="C#" runat="server">
string TheTitle="",KC_HJ="课程", getnj="",getzy="",getxnxq="",getkctype="",vZYname="";
private void Page_Load(object sender,System.EventArgs e)
{	//Define-Data
	string vcddw="";
	string [] rs=new string[2]{"",""};
	//Rquest-Data
	try{ getnj=Request.QueryString["nj"].ToString().Trim();}catch(Exception){}
	try{ getzy=Request.QueryString["zy"].ToString().Trim();}catch(Exception){}
	try{ getxnxq=Request.QueryString["xnxq"].ToString().Trim();}catch(Exception){}
	try{ getkctype=Request.QueryString["kclb"].ToString().Trim();}catch(Exception){}
	try{ vcddw=Request.QueryString["sel_cddw"].ToString().Trim();}catch(Exception){}
	
	if(getkctype=="1") KC_HJ="环节";
	try{
		rs=(new private_JXJH()).LIST_SETBG_SpecialityInfo(getzy);
	}catch(Exception ex){
		Response.Output.Write(ex.Message.ToString());
	}
	vZYname=rs[1];
	TheTitle="增开"+getnj+"年级"+vZYname+"专业"+KC_HJ;	
}
</script>
<html>
<head>
<title>增开<%=KC_HJ%></title>
<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
<meta name="CODE_LANGUAGE" Content="C#">
<meta name="vs_defaultClientScript" content="JavaScript">
<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/styles_Qry.css" type="text/css">
<script language="JavaScript" src='../include/Scr/ind_HTML_hr.js'></script>
<script language="JavaScript">
 function ChkValue(theForm){
    var i,addstr; var strID='',vkcid,vkclb2,vkclb1,vkhfs,vzxs;
    try{iR=window.frmRpt.ID_Table.rows.length;}catch(e){alert("请先查询相应课程");return false;}
   if(iR==1){
	if(window.frames["frmRpt"].chkKC.checked){
        vkcid=window.frames["frmRpt"].chkKC.value;
        if(window.document.all.getkctype.value=='0' & window.document.all.rad2.checked){
    		vkclb2=window.frames["frmRpt"].D1.value;
    		vkclb1=window.frames["frmRpt"].D2.value;
    		vkhfs=window.frames["frmRpt"].D3.value;
    		vzxs=window.frames["frmRpt"].zxs.value;

        	if ((vkclb1=='') || (vkclb2=='') || (vkhfs=='') || (vzxs=='')){
        	alert('课程类别、考核方式、周学时均不能为空！')
       		return false;}
                if(strID=='') eval('strID=window.frames["frmRpt"].chkKC.value+","+window.frames["frmRpt"].D1.value+","+window.frames["frmRpt"].D2.value+","+window.frames["frmRpt"].D3.value+","+window.frames["frmRpt"].zxs.value');
    		else eval('strID=strID +";"+window.frames["frmRpt"].chkKC.value+","+window.frames["frmRpt"].D1.value+","+window.frames["frmRpt"].D2.value+","+window.frames["frmRpt"].D3.value+","+window.frames["frmRpt"].zxs.value');
             }
    	else
          {if(strID=='')eval('strID=window.frames["frmRpt"].chkKC.value');
          else eval('strID=strID +";"+window.frames["frmRpt"].chkKC.value');}   
        }
      }
  if(iR!=1){ 
    for(i=0;i<window.frames["frmRpt"].chkKC.length;i++){  
    if(window.frames["frmRpt"].chkKC(i).checked){
       	vkcid=window.frames["frmRpt"].chkKC(i).value;
        if(window.document.all.getkctype.value=='0' & window.document.all.rad2.checked){
    	vkclb2=window.frames["frmRpt"].D1(i).value;
    	vkclb1=window.frames["frmRpt"].D2(i).value;
    	vkhfs=window.frames["frmRpt"].D3(i).value;
    	vzxs=window.frames["frmRpt"].zxs(i).value;
        if ((vkclb1=='') || (vkclb2=='') || (vkhfs=='') || (vzxs=='')){
        alert('课程类别、考核方式、周数均不能为空！')
        return false}
       if(strID=='') eval('strID=window.frames["frmRpt"].chkKC(i).value+","+window.frames["frmRpt"].D1(i).value+","+window.frames["frmRpt"].D2(i).value+","+window.frames["frmRpt"].D3(i).value+","+window.frames["frmRpt"].zxs(i).value');
       else eval('strID=strID +";"+window.frames["frmRpt"].chkKC(i).value+","+window.frames["frmRpt"].D1(i).value+","+window.frames["frmRpt"].D2(i).value+","+window.frames["frmRpt"].D3(i).value+","+window.frames["frmRpt"].zxs(i).value');
       }
      else
      {if(strID=='') eval('strID=window.frames["frmRpt"].chkKC(i).value');
      else eval('strID=strID +";"+window.frames["frmRpt"].chkKC(i).value');}   
     }
     } 
}

  if (strID == "") { 
      alert('请选择相应课程！')
      return false ;
    }
    else{
     document.all.thePOST.value=strID; 
    if (confirm('你确信要继续吗?')) {
    window.form1.submit();   
    //window.close();
    //window.setInterval("Farbe()",500);
    }
    }
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="100%" >
<form name="form1" method="post" action="INFO_BGAdd_rpt.aspx" target="frmRpt">              
<tr><td valign="top" align="center" co>
      <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">
        <tr><td valign="bottom" align="center"><b><%=TheTitle%></b></td></tr>
	<tr><td valign="bottom" align="center"><script language="JavaScript" >Draw_HR('99.5%')</script>
	</td></tr>
      </table>   
</td></tr>
     <tr><td valign="middle" align="center" height="5%">
        <table width="100%" border=0 cellspacing="0" cellpadding="0" align="center" height="26">

          <tr><td colspan=2 align=left> 
	  <table border=0 cellspacing="0" cellpadding="0" align="left" height="26"><tr>
            <td align="left">承担单位&nbsp;
             <select id="sel_cddw" name="sel_cddw" style="width:180"  >
              <%=(new private_JXJH()).SetValue("cddw",pSub.USER_OPTDW)%>
             </select></td> 
            <td align="left"><%=KC_HJ%>&nbsp;<input name="kc" type="text" value="" size="32"   maxlength=10>
             <input type="hidden" name="get_zy" id="get_zy"  value="<%=getzy.Substring(0,4)%>" style="width:5">
             <input type="hidden" name="get_nj" id="get_nj"  value="<%=getnj%>" style="width:5">
             <input type="hidden" name="get_xnxq" id="get_xnxq"  value="<%=getxnxq%>" style="width:5">
             <input type="hidden" name="kc_type" id="kc_type" value="<%=getkctype%>" style="width:100">               
           </td>
          </tr>
	  </td></tr>
	  </table>
      <tr> 
        <td widht=80% align="" height="13">
			<table widht=100% border=0 cellpadding=0 cellpadding=0 >
			<tr><td>
				<table border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
				<tr><td>
					<input type="radio" value="0"  name="radType" id="rad0">培养方案中已开的<%=KC_HJ%>         
					<input type="radio" value="1"  name="radType" id="rad1" >培养方案中未开的<%=KC_HJ%> 
					<input type="radio" value="2"  name="radType" id="rad2" checked>非培养方案中的<%=KC_HJ%>
				</td></tr>
				</table>
            </td><td> 
				   <table width="100" border="1" cellpadding="0" cellspacing="0"  bordercolorlight=#75A7AE bordercolordark=#FFFFFF>
					<tr><td><input type="checkbox" name="zx_flag" value="1" checked>主修&nbsp;<input type="checkbox" name="fx_flag" value="1">辅修
					</td></tr></table>									     
            </td></tr>
            </table>
	    </td>
        <td width="20%" align='right'>                
            <input type="submit" name="btn_search" value="检索" class=button >   
	        <input type="button" name="btn_OK" value="保存" onclick=ChkValue(this) class=button>
	        <input type="button" name="btn_cannel" value="返回" onclick=window.close() class=button>
            <input type="hidden" id="getkctype" value="<%=getkctype%>">
        </td></tr>
        </table>     
</td></tr>
<input type=hidden name="thePOST">
</form>

<tr><td valign="top" align="center" height="5%"><br>
<DIV id=theHead style='display: none_;width:100%;'></DIV>
</td></tr> 
<tr><td valign="top" align="center" height="100%">
<iframe name=frmRpt src="INFO_BGAdd_rpt.aspx?kc_type=<%=getkctype%>" width=100% height=96% frameborder=0></iframe>
</td></tr> 
</table>
</body>  
</html>