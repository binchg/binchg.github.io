<%@ Page %>
<script language=C#>
Session.CodePage=936;
</script>
<html>

<head>
<title></title>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../_style/Styles_Rpt.css" type="text/css">
<script language="JavaScript" src='../include/scr/ind_PRINT_Fun.js'></script>
</head>

<body oncontextmenu=window.event.returnValue=false ondragstart=window.event.returnValue=false onsource=window.event.returnValue=false leftmargin="0" topmargin="0">

<DIV id=theHead state='ok' style='display: none;width:100%;'></DIV>

<DIV id=TheRptDIV name=TheRptDIV style='width:100%;height:100%'></DIV>

</body>
</html>

<script language="javascript">
function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}
function MouseOut(arg){arg.style.color='blue';}

function openWin(theURL,w,h,scr,res,tit)
{ 
if(scr=='') scr='no';
if(res=='') res='no';
if(tit=='') tit='winKPT';
pop=window.open(theURL,tit,"width="+w+",height="+h+",scrollbars="+scr+",resizable="+res);
pop.moveTo((screen.Width-w)/2,(screen.Height-h)/2);
}
</script>
