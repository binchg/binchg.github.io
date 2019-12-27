document.write ("<input type=hidden PivColor='Noting' PivFontColor='Noting' ValueID='' name='PSTemp' value=''>")

//选中某列变颜色
function SelectUser(theID){	
	var PivID,PivColor,vColor,PivFontColor
	vColor='#89bfa7'												//定义颜色
	PivID=document.all.PSTemp.ValueID

	PivColor=document.all.PSTemp.PivColor							//得到上一个被选中的颜色
	PivFontColor=document.all.PSTemp.PivFontColor					//得到上一个被选中的字体颜色

	if (PivColor=="Noting" ){										//第一次被选中
		document.all.PSTemp.PivColor=theID.style.backgroundColor;	//保存被选中行先前的颜色
		document.all.PSTemp.PivFontColor=theID.style.color
		document.all.PSTemp.ValueID=theID.id;
		theID.style.backgroundColor=vColor;							//让被选中的行变色
		theID.style.color="white";
		return true;												//选中时的操作
	}
	else if(PivID==theID.id){										//如果选中同一行不做任何操作
		return false;	
	}
	else{															//不是第一次选择的操作
		eval(PivID+".style.backgroundColor='"+PivColor+"';");		//将上一个选中的行还原原色
		eval(PivID+".style.color='"+PivFontColor+"';");		
		document.all.PSTemp.PivColor=theID.style.backgroundColor;	//保存被选中行先前的颜色
		document.all.PSTemp.PivFontColor=theID.style.color		
		document.all.PSTemp.ValueID=theID.id;
		theID.style.backgroundColor=vColor;							//让被选中的行变色
		theID.style.color="white";
		return true;												//选中时的操作
	}
}

