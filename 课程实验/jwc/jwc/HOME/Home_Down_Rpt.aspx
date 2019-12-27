<%@ Page language="c#" Codebehind="Home_Down_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.HOME.Home_Down_Rpt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" > 

<html>
  <head>
    <title>Home_Down_Rpt</title>
    <meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" Content="C#">
    <meta name=vs_defaultClientScript content="JavaScript">
    <meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
  <link rel="stylesheet" href="../_style/styles_Rpt.css" type="text/css">
    <script language="javascript">
		function getadd(){
			try{
				var url='./Home_Down_Rpt.aspx?type=add';
				document.location.href=url;
			}catch(e){alert(e);}
		}
		function ChkALL(theObj){
		try{
			var i,iR;
			//window.TheTable.rows.length-1
			try{iR=document.all.count.value;}catch(err){iR=0;}
			if(iR<1) return false;
			if(iR>1000) window.status="正在进行全选处理……请稍等片刻";
			if(theObj.title=='全选'){
				theObj.title='撤销全选';
				theObj.src='../images/button/rc/ChkAll_2.gif';
				for(i=1;i<=iR;i++){
					if(eval("document.all.Chk"+i+".disabled")==false)
						eval("document.all.Chk"+i+".checked=true"); 
				}
			}else{
				theObj.title='全选';
				theObj.src='../images/button/rc/ChkAll_1.gif';
				for (i=1;i<=iR;i++){
				 if(eval("document.all.Chk"+i+".disabled")==false)
				  eval("document.all.Chk"+i+".checked=false");
				}  
			}
			window.status=""
			}catch(e){alert(e);}
		}
		function getval(){
		 try{	
			var i,R,str='';
			try{R=document.all.count.value;}catch(e){R=0;}
			for(i=1;i<=R;i++)
			{ 
				if(eval("document.all.Chk"+i+".disabled")==false){
   					if(eval("document.all.Chk"+i+".checked")==true)
					{
					 if(str=='')
						{str=eval("document.all.Chk"+i+".value");}
					 else
						{str=str+';'+eval("document.all.Chk"+i+".value");}
					}  
				}
			}
			if(str==''){alert("请选择要删除的记录!"); return false;}
			else{
				if(confirm('是否删除?')){
					var url='./Home_Down_Rpt.aspx?type=del&ChkDel='+str;
					document.location.href=url;
				}
			}
		  }catch(e){alert(e);}
		}
		function ChkSave(){
			try{
				if(document.all.titleName.value==''){
					alert('请输入标题！');
					document.all.titleName.focus();
				}else if(document.all.filePath.value==''){
					alert('请选择上传文件！');
					document.all.filePath.focus();
				}else if(document.all.selTypeName.value==''){
					alert('请选择服务身份！');
					document.all.selTypeName.focus();
				}else {
					if(document.all.hidcode.value=="")
						document.all.Form1.encoding="multipart/form-data";
					else
						document.all.Form1.encoding="application/x-www-form-urlencoded";
					window.Form1.action="./Home_Down_Rpt.aspx?type=save";
					window.Form1.method="post";
					window.Form1.submit();
				}
			}catch(e){alert(e);}
		}
		function ChkReturn(){
			try{
					document.location.href="./Home_Down_Rpt.aspx";
			}catch(e){alert(e);}
		}
    </script>
  </head>
  <body topmargin="0" leftmargin="0">
    <form id="Form1" method="post" runat="server">
		<asp:Panel ID="pageRpt" Runat="server"></asp:Panel>
		
     </form>	
  </body>
</html>