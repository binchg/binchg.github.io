function chkALL(theKG)
{
	var iR=0;
	try{iR=frmRpt.window.TheTable.rows.length;}catch(err){iR=0;}
	if(iR<1) return false;
	if(theKG.value=="1")
	{
		for(i=1;i<=iR;i++) 
			frmRpt.document.all.item("rad"+i)(0).checked=true; 
	}
	else
	{
		for(i=1;i<=iR;i++) 
			frmRpt.document.all.item("rad"+i)(1).checked=true; 
	}
}

function disChkAll(theID)
{
	if(theID.checked)
	{
		document.all.item("selall")(0).disabled=false;
		document.all.item("selall")(1).disabled=false;
	}
	else
	{
		document.all.item("selall")(0).disabled=true;
		document.all.item("selall")(1).disabled=true;
	}
}

function chkboxALL(theKG)
{
	var iR=0;
	try{iR=frmRpt.window.TheTable.rows.length;}catch(err){iR=0;}
	if(theKG.checked)
	{
		for(i=1;i<=iR;i++) 
		   frmRpt.document.all("chk"+i).checked=true; 
	}
	else
	{
		for(i=1;i<=iR;i++) 
		   frmRpt.document.all("chk"+i).checked=false; 
	}
}

function ChkValue()
{
	if(isNaN(document.all.txt_Fme.value))
	{
		alert("请用数字输入空余名额区段！");
		document.all.txt_Fme.focus();
		return false;
	}
	if(isNaN(document.all.txt_Tme.value))
	{
		alert("请用数字输入空余名额区段！");
		document.all.txt_Tme.focus();
		return false;
	}
	return true
}