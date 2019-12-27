<%@ Page language="c#" Codebehind="stu_xsyx_rpt.aspx.cs" AutoEventWireup="false" Inherits="JWNET.WSXK.stu_xsyx_rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>预选</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../_Style/styles_Rpt.css" type="text/css" rel="stylesheet">
		<script language="JavaScript" type="text/JavaScript">
		function openWin(theID,vT)
		{	
		
			var theURL,w,h,Tform;
			if(vT=='kc'){w=480,h=300;
			eval("Tform='width="+w+",height="+h+"'");
				theURL = '../JXJH/INFO_KC.aspx?id='+theID.value;
			}
			else if(vT=='js'){w=450,h=380;
			eval("Tform='width="+w+",height="+h+"'");
				theURL = '../JXZY/INFO_Teacher.aspx?id='+theID.value;
			}
			pop=window.open(theURL,'winKPT',Tform);	
		}

		function MM_openBrWindow(theURL,winName,features) { //v2.0
		window.open(theURL,winName,features);
		}
		function JSChooseTeacher(theID)
		{
			var vURL;
			var vStr;
			var JsLen;
			vURL=theID.value;
			j=theID.id;
			JsLen=vURL.length;
			vStr=eval("FormAdd.chkKC"+(j)+".value");
			eval("document.all.Teacher"+j+".value=vURL");
			
			i=vStr.indexOf("T");
			k=vStr.indexOf("U");
			if((i>-1)&&(k>-1)){
				mStr=vStr.substr(0,i+1)+vURL+vStr.substr(k,vStr.length-k);
				eval("FormAdd.chkKC"+j+".value=mStr");
			}
		}
		
		function ChkValue(theObj){
			var strurl;
			var strid="TTT",s=false;
			var N
			var s1=theObj.value;
			N=FormAdd.chkCount.value;
			if(s1=="提交预选"){
				for (i=1;i<=N;i++){
				if(eval("FormAdd.chkKC"+(i-1)+".checked==true")&&eval("FormAdd.chkKC"+(i-1)+".disabled==false")){
				    if(eval("FormAdd.yxtj"+(i-1)+".checked")){yxtj="1"}else{yxtj="0"}
					strid=strid+","+eval("FormAdd.chkKC"+(i-1)+".value")+"#"+yxtj;
					s=true;
					}
				}
				FormAdd.id.value=strid;
				if (!s)return false;
				if (!confirm('是否提交记录？'))return false;
				strurl="stu_xsyx_rpt.aspx?func=1";
				FormAdd.action=strurl;FormAdd.submit();
			}  
		}
		</script>
	</HEAD>
	<body  onselectstart=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false 
	 leftMargin="0" topMargin="0" marginheight="0" marginwidth="0">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
	</body>
</HTML>
