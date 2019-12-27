
function disrad(theID)
{
	var val=theID.value
	var vBK=val.split("|")[1]
	if(vBK=="2")
	{
		try{
			document.all.radwj.disabled=false;
			document.all.radtk.disabled=false;
		}catch(e){}
	}
	else
	{
		try{
			document.all.radwj.disabled=true;
			document.all.radtk.disabled=true;
		}catch(e){}
	}
}