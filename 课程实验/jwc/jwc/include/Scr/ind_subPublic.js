function MouseOver(arg){arg.style.cursor='hand';arg.style.color='red';}

function MouseOut(arg){arg.style.color='#2A7CB1';}

function openWinX(url,name,w,h){ 
	pop=window.open(url,name,"width=" + w + ",height=" + h + ",toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no");
	pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
}




function openWinDialog(url,scr,w,h)
{
	var Tform;
	var theValue;
	eval("Tform='dialogWidth:"+w+"px;dialogHeight:"+h+"px;status:"+scr+";scrollbars=no;help:no'");	
	theValue=window.showModalDialog(url,1,Tform);
	return theValue;
}

function getXMLHTTP(pURL,pStr){try{
	var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    	xmlhttp.Open("POST", pURL, false);
	xmlhttp.Send("<root>"+pStr+"</root>");
	var sendXML=xmlhttp.ResponseText; //alert(sendXML);
	return sendXML;
}catch(e){return e.description}}

function KingoWin(theURL,w,h,titleWord,scr,IsMove)
{ 
	if(IsMove==-1) 
		pop=window.open(theURL,"winKPT","width="+w+",height="+h+",scrollbars="+scr+",resizable=no");
	else 
		pop=window.open(theURL,"winKPT","width="+w+",height="+h+",scrollbars="+scr+",resizable=yes");
		pop.moveTo((screen.Width-w)/2,(screen.Height-h)/2);
}

function openPringWin(url,name,w,h){
	pop=window.open(url,name,"width=" + w + ",height=" + h + ",toolbar=yes,menubar=no,scrollbars=yes,resizable=yes,location=no,status=no");
	pop.moveTo((screen.width-w)/2,(screen.height-h)/2);
}