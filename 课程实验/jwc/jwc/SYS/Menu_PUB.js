function showMenu_WEB()
{
var sTree='';

/*
vListStr ="教务动态;../myweb/hm_look.asp?id=News;|管理规定;../myweb/hm_look.asp?id=Rule;|公共下载;../myweb/hm_look.asp?id=Down;";
vListStr+="|校历;../myweb/hm_look.asp?id=XL;|作息时间;../myweb/hm_look.asp?id=TIME;|机构人员;../myweb/hm_look.asp?id=Person;";
vListStr+="|学科建设;../myweb/hm_look.asp?id=Dept;|问卷调查;../myweb/hm_look.asp?id=WJDC;|课表发布;../myweb/hm_look.asp?id=KBFB;";
sTree+=addLinkGroup("Z01","浏览首页","none",vListStr);
*/

sTree+=addLinkBlock("修改密码;../MyWeb/User_ModPWD.asp;");
sTree+=addLinkBlock("相关限制;../MyWeb/Door_Look.asp;");
sTree+=addLinkBlock("WEB设置;../MyWeb/M_Web.asp;");
sTree+=addLinkBlock("查看日志;../MyWeb/M_Log.asp;");
sTree+=addLinkBlock("常用工具;../MyWeb/M_Tools.asp;");
sTree+=addLinkBlock("用户下载;../MyWeb/M_Down.asp;");

//sTree+=addTempDiv('MyInfo','(null)');
//sTree+=addTempDiv('MyMsg','<hr>您有6条信息<hr>');
return(sTree);
}

function showMenu_BBS()
{
var sTree='';
sTree+=addLinkBlock("论坛首页;../bbs/index_right.asp;");
return(sTree);
}
