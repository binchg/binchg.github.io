<%@ Page %>
<html>
<head>
<title>日历控件_显示部分</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT LANGUAGE="jscript.encode" src="./Calendar_Input.js"></SCRIPT>
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" >
<input type="text" readonly size="4" maxlength="4" name="txt_year"  style="width:30px; height:21px; border-right:none">
<input type="text" readonly size="2" maxlength="2" name="txt_month" style="width:17px; height:21px; border-left:none;border-right:none">
<input type="text" readonly size="2" maxlength="2" name="txt_day"   style="width:34px; height:21px; border-left:none" >

<div style="position:absolute; width:10px; height:21px; z-index:1; left: 30px; top: 1px"><img src="images/line.gif" width="10" height="20" ondragstart="return false;"></div>
<div style="position:absolute; width:10px; height:21px; z-index:1; left: 54px; top: 1px"><img src="images/line.gif" width="10" height="20" ondragstart="return false;"></div>
<div style="position:absolute; width:16px; height:18px; z-index:2; left: 80px; top: 2px"><img src="images/click.gif" width="16" height="18" onclick="doClick()" ondragstart="return false;"></div>
</body>

</html>


