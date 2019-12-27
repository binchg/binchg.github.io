
function openPrintWin(url,name){
	var w,h;
	try{
		w=window.screen.width-10;
		h=window.screen.height-30;
	}catch(e){}
	pop=window.open(url,name,"width="+w+",height="+h+",toolbar=no,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no;");
	pop.moveTo(0,0);
}
