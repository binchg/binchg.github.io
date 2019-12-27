function showLay1(divId){ 
var objDiv;
if(divId.innerHTML=="查看"){divId.innerHTML="隐藏";}else{divId.innerHTML="查看";}
eval("objDiv=document.all.theMemo"+divId.id); //alert(objDiv.name);
if(objDiv.style.display=='none'){objDiv.style.display='';
}else{objDiv.style.display='none';}}

function showLay2(divId){
if(divId.innerHTML=="查看"){divId.innerHTML="隐藏";}else{divId.innerHTML="查看";}
eval("objDiv=document.all.theMemo"+divId.id);
if(objDiv.style.display=='none'){
	objDiv.style.display=''; //alert(window.frmJXJH.location.href);
	if(eval("window.frm"+divId.id+".location.href.substring(0,11)=='about:blank'"))
	eval("window.frm"+divId.id+".location.href='"+divId.value+"'");
}else{objDiv.style.display='none';}}
