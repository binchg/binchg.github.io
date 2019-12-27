<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>参数获取</title>
</head>

<body>
省：<%= Trim(Request.Form("fcity1")) %><br />
市：<%= Trim(Request.Form("fcity2")) %><br />
县/区：<%= Trim(Request.Form("fcity3")) %>
</body>
</html>
