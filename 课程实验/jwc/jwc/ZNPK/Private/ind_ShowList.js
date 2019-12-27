
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

function LetInnerXML(thisID,vP,vT){ 
var vXML,vWd,vID=thisID.value;
alert();
eval("vWd=document.all.the"+vP+".width");
vURL='../ZNPK/Private/list_'+vP+'.aspx?id='+vID+'&wd='+vWd; 
alert(vURL);
vXML=getXMLHTTP(vURL,vID); 
eval("document.all.the"+vP+".innerHTML=vXML"); 
var ret=window.top.banner.getXMLHTTP('../sys/xml/SetCodePage.aspx','');
}

function showListZNPK(thisID,vP,vT){
var vID=thisID.value;
if(vP=='xqjxl') //校区教学楼
{vURL='../include/list_xqjxl.aspx?id='+vID+'&s='+vT;}
else 
{vURL='../include/list_'+vP+'.aspx?id='+vID;} 
eval("window."+vP+".document.location.href='"+vURL+"'");
}
function showJXRWJXL(theID)
{
var vURL;
vURL=theID.value;
window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_JXRW_JXL.aspx?id='+vURL;
}
function showJXRWCLASS(theID,vT)
{
var vURL;
vURL=theID.value;
if(vT.substr(vT.search("#")+1)=='KCSZ'){
window.frmZNPKCLASS.document.location.href='../ZNPK/Private/LIST_JXRW_CLASS.aspx?id='+vURL+'&id1='+Form1.selJSLX.value;}
else
{window.frmZNPKCLASS.document.location.href='../ZNPK/Private/LIST_JXRW_CLASS.aspx?id='+vURL+'&id1='+parent.Form1.selJSLX.value;}

}
function showListkbjssjsd(theID)
{
var vURL;
vURL=theID.value;
vURL='../include/'+theID.href+'.aspx?id='+vURL
window.frmList.document.location.href=vURL;
}
function showListBJ(theID)
{
var vURL;
vURL=theID.value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL
window.frmList.document.location.href=vURL;
}
function showListZNPKJS(theID)
{
var vURL;
vURL=theID.value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL
window.frmList.document.location.href=vURL;
}
function showZNPKJXL1(theID)
{
var vURL;
vURL=theID.value;
window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_ZNPK_JXL1.aspx?id='+vURL;
}
function showZNPKJXL(theID)
{
var vURL;
vURL=theID.value;
window.frmZNPKJXL.document.location.href='../ZNPK/Private/LIST_ZNPK_JXL.aspx?id='+vURL;
}

function showZNPKCLASS(theID,vp)
{
var vURL;
vURL=theID.value;
if (vp=='ZNPK_CLASS'){
window.frmZNPKCLASS.document.location.href='../../ZNPK/Private/LIST_ZNPK_CLASS.aspx?id='+vURL;}
else if(vp=='ZNPK_CLASS1'){
window.frmZNPKCLASS.document.location.href='../../ZNPK/Private/LIST_ZNPK_CLASS1.aspx?id='+vURL;}
else if(vp=='JXRW_CLASS'){
window.frmZNPKCLASS.document.location.href='../../ZNPK/Private/LIST_JXRW_CLASS.aspx?id='+vURL;}

else{
window.frmZNPKCLASS.document.location.href='../../ZNPK/Private/LIST_ZNPK_EXPRCLASS.aspx?id='+vURL;}
}


function showListKBRKZJJS(theID)
{
var vURL;
vURL=theID.value;
vURL='../include/'+theID.href+'.aspx?id='+vURL
window.frmList.document.location.href=vURL;
}
function showListKC(theID)
{
var vURL;
vURL=theID.value;
if(theID.href=='list_kc'){
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL}
else{
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL+'&id1='+form1.SelXN.value;}

window.frmList.document.location.href=vURL;
}
function showListSYXM(theID)
{
var vURL;
vURL=theID.value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL;
window.frmList.document.location.href=vURL;
}
function showZNPKKKYXJS(theID)
{
var vURL;
vURL=theID.options[theID.selectedIndex].value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL+'&id1='+form1.SelXN.value+'&SFSQ='+form1.sel_sqzt.value;
window.frmList.document.location.href=vURL;
}
function showZNPKKKYXKCBH(theID,vT)
{
var vURL;
vURL=theID.options[theID.selectedIndex].value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL+'&id1='+form1.SelXN.value+'&id2='+vT;
window.frmList.document.location.href=vURL;
}
function showZNPKKKYXKCBH1(theID,vT)
{
var vURL;
vURL=theID.options[theID.selectedIndex].value;
vURL='../ZNPK/Private/LIST_ZNPK_KKYXBH.aspx?id='+vT+'&id1='+form1.SelXN.value+'&id2='+vURL;
alert(vURL);
window.frmList.document.location.href=vURL;
}


function showZNPKJXL(theID,vP)
{
var vURL=theID.value;
if(vP=='jxl'){window.frmZNPKJXL.location.href='../ZNPK/Private/LIST_ZNPK_JXL.aspx?id='+vURL;}
else{window.frmZNPKJXL.location.href='../ZNPK/Private/LIST_ZNPK_JXL1.aspx?id='+vURL;}
}

function showZNPKCLASS(theID,vp)
{
var vURL=theID.value;
if (vp=='ZNPK_CLASS'){
window.frmZNPKCLASS.location.href='../../ZNPK/Private/LIST_ZNPK_CLASS.aspx?id='+vURL;}
else if(vp=='ZNPK_CLASS1')
{window.frmZNPKCLASS.location.href='../../ZNPK/Private/LIST_ZNPK_CLASS1.aspx?id='+vURL;}
else{window.frmZNPKCLASS.location.href='../../ZNPK/Private/LIST_ZNPK_EXPRCLASS.aspx?id='+vURL;}
}

function LetInnerHTML(thisID,vP,vT){
var vXML,vWd,vID=thisID.value;
eval("vWd=document.all.the"+vP+".width");
vURL='../ZNPK/Private/'+thisID.href+'.aspx?id='+vID+'&wd='+vWd;
if(vP=='KC'){vURL=vURL+'&xnxq='+form1.SelXN.value;}
if(vP=='BJ'){vURL=vURL+'&xnxq='+form1.SelXN.value;}
if(vP=='VJS'){vURL=vURL+'&xnxq='+form1.sel_xnxq.value;}
if(vP=='VSKBJ'){vURL=vURL+'&xnxq='+form1.sel_xnxq.value;}
if(vP=='CDDWKC'){vURL=vURL+'&xnxq='+form1.sel_xnxq.value+'&cddw_id='+form1.sel_cddw.value;}
eval("window.thefrmRpt.location.href='"+vURL+"';");
//alert(eval("window.thefrmRpt.location.href='"+vURL+"';"));
}

function showListZNPKJS(theID)
{
var vURL;
vURL=theID.value;
vURL='../ZNPK/Private/'+theID.href+'.aspx?id='+vURL;
window.frmZNPKJS.document.location.href=vURL;
}