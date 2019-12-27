<%@ Page language="c#" Codebehind="stu_xszx_rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.stu_xszx_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_Style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" type="text/JavaScript">
			function openWin(theID,vT)
			{	
				var theURL,w,h,Tform;
				if(vT=='kc'){
					w=480,h=300;
					eval("Tform='width="+w+",height="+h+"'");
					theURL = '../JXJH/INFO_KC.aspx?id='+theID.value;
				}else if(vT=='Tea'){
					w=450,h=380;
					eval("Tform='width="+w+",height="+h+"'");
					theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.value;
				}else if(vT=='xkmc'){
					w=650,h=380;
					eval("Tform='width="+w+",height="+h+"'");
					theURL = '../WSXK/j_zxb_bjrs.aspx?id='+theID.value;
				}
				pop=window.open(theURL,'winKPT',Tform);
			}
			
			function openWinDialog(theID,N)
			{
				var Tform;
				var ReturnStr="";
				var jsskbj_str="";
				var jsskbj_val="";
				var w=750,h=300;
				var skbjval="";
				eval("skbjval=document.all.chkSKBJ"+N+".value");
				var url="stu_xszx_chooseskbj.aspx?lx=ZX&id="+theID.value+"&skbjval="+skbjval;
				eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:no;scrollbars=no;help:no'");	
				ReturnStr=window.showModalDialog(url,1,Tform);
				try
				{
					jsskbj_str=ReturnStr.split('@')[0];
					jsskbj_val=ReturnStr.split('@')[1];
					if(ReturnStr.split('@')[0]=="undefined"){jsskbj_str="";}
					if(ReturnStr.split('@')[1]=="undefined"){jsskbj_val="";}
					eval("window.document.all.chkSKBJstr"+N+".value=jsskbj_str;");
					eval("window.document.all.chkSKBJ"+N+".value=jsskbj_val;");
				}catch(e){}
			}
			
			function go(theObj)
			{
				var mFlag=true;
				var mb=false;
				var mcount;
				var m;
				mcount=FormAdd.mcount.value;
				if(mcount>0) {
					for(i=0;i<mcount;i++){
						if(eval("FormAdd.chkKC"+i+".checked==true")&&eval("FormAdd.chkKC"+i+".disabled==false"))
						{
							mb=true;
							if(mb==true)
							{
								if(eval("window.document.all.chkSKBJ"+i+".value==''"))
								{mFlag=false;}
							}
						}
					}
					if(mb==false){
						alert("需选定一门课程！");
						return false;		
					}
					if(mFlag==false){
						alert("需选定上课班号→任课教师！");
						return false;		
					}
					else{
						return ChkValue(theObj);
						return false;
					}
				}
			}

			function ChkValue(theObj)
			{
				var strurl;
				var strid="TTT",s=false;
				var N;
				var s1=theObj.value;
				var jsskbj_str="";
				var jsskbj_array;
				var xyjc;
				N=FormAdd.mcount.value;
				if(s1=="提交正选"){
					for (i=1;i<=N;i++){
						if(eval("FormAdd.chkKC"+(i-1)+".checked==true")&&eval("FormAdd.chkKC"+(i-1)+".disabled==false")){
							eval("jsskbj_str=FormAdd.chkSKBJ"+(i-1)+".value;");
							if(jsskbj_str!=""){
								var jsskbj_array=jsskbj_str.split(";");
								for(j=0;j<jsskbj_array.length;j++){
									strid+=","+jsskbj_array[j]+"A"+eval("FormAdd.chkKC"+(i-1)+".value");
								}
							}
							s=true;
						}
					}
					if (!s)return false;
					if (!confirm('是否提交记录？'))return false;
					
					FormAdd.id.value=strid;
					strurl="stu_xszx_rpt.aspx?func=1";
					FormAdd.action=strurl;FormAdd.submit();
					}  
			}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<form action='stu_xszx_rpt.aspx?func=1' method="post" name="FormAdd">
			<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		</form>
	</body>
</HTML>
