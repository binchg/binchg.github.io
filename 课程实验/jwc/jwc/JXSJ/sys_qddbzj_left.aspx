<%@ Page %>
<%@ Import NameSpace="BLL.JXSJ"%>
<%@ Import NameSpace="BLL.include"%>
<HTML>
	<HEAD>
		<title>毕业设计安排</title>
<%
BLL.JXSJ.BLL_jxsj pSub=new BLL.JXSJ.BLL_jxsj(this);
string USER_ID=pSub.USER_ID;
string USER_ZH=pSub.USER_ZH;
string USER_NAME=pSub.USER_NAME;
string USER_LVID=pSub.USER_LVID;
string USER_BJID=pSub.USER_BJID;
string USER_LEVEL=pSub.USER_LEVEL;
string USER_OPTYX=pSub.USER_OPTYX;
string USER_OPTDW=pSub.USER_OPTDW;
string nj=Request["nj"];
string dw=Request["dw"];
BLL.JXSJ.jxzy_zsj jxzy=new BLL.JXSJ.jxzy_zsj();
	//Response.Write(dw);
	//Response.End();
	Response.Output.Write(jxzy.Draw_qdbdzj(nj,dw));
%>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		<script language="JavaScript" src='../include/scr/ind_HTML_hr.js'></script>
		</head>
  <body MS_POSITIONING="GridLayout" onselectstart=window.event.returnValue=false>
	
    <form id="Form1" method="post" runat="server">

     </form>
	
  </body>
</html>
<script language="javascript">
function SelectUser(theID,vK)
{
var PivID,PivColor,vColor;
var fyww;var dw;
arr=theID.value.split('$');
if((chkC.value=='')&&(chkI.value=='')){
   chkC.value=eval(vK+".style.backgroundColor");
   chkC1.value=eval(vK+".style.color");
   chkI.value=vK;
   eval(vK+".style.backgroundColor='#89bfa7'");
   eval(vK+".style.color='white'");

}else{
   if(chkI.value!=vK){
       eval(chkI.value+".style.backgroundColor='"+chkC.value+"'");
	   eval(chkI.value+".style.color='"+chkC1.value+"'");
       chkI.value=vK;
       chkC.value=eval(vK+".style.backgroundColor");
       eval(vK+".style.backgroundColor='#89bfa7'");
	   eval(vK+".style.color='white'");
	  
   }
}
//alert(theID.value);
zy=arr[0];dw=arr[1];
//alert('zy='+zy);
//alert('dw='+dw);
//alert('xz='+arr[2]);
parent.document.all.hiddenZY.value=zy;
parent.document.all.hiddenXZ.value=arr[2];//alert(parent.document.all.hiddenXZ.value);
parent.document.all.tops.src="sys_qddbzj_top.aspx?zy="+zy+"&dw="+dw+"&nj="+parent.document.all.nj.value+"&xz="+arr[2];
parent.document.all.downs.src="sys_qddbzj_down.aspx?zy="+zy+"&dw="+dw+"&nj="+parent.document.all.nj.value+"&xz="+arr[2];
}
</script>