
function openWin(theID,PJLB,vT,vP)
{	
        var theURL,w,h,Tform,scr,IsNew;
	scr="yes";//IsNew=window.top.banner.p_JserverInfo.SYS_NEWFORM_ENABLE; //IsNew='0';
	
	w=320,h=390;
	eval("Tform='width="+w+",height="+h+"'");
	theURL = '../JXKP/INFO_KPJG.aspx?lb='+PJLB+'&jsdm='+theID.value+'&kcdm='+vT+'&xnxq='+vP;
//alert(PJLB);
	KingoWin(theURL,w,h,"วเน๛ศํผþ",scr,IsNew); 
}