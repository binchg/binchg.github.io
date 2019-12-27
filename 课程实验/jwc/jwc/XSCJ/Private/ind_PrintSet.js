document.write ("<OBJECT classid='CLSID:8856F961-340A-11D0-A96B-00C04FD705A2' height=0 id=wb name=wb width=0></OBJECT>");

//打印页面预览
function PrintPreview(){
	try{
	 	wb.execwb(7,1);
	}catch(e){}
}

//打印
function Print(){
	try{
		//if(confirm('是否打印？'))
		//wb.execwb(6,6); 
		window.print();
	}catch(e){}
}

//设置页眉页脚
function printsethb()
{
	var hkey_root="HKEY_CURRENT_USER";
        var hkey_path="\\Software\\Microsoft\\Internet Explorer\\PageSetup";
  	var hkey_key="";
  	try{
  		RegWsh =new ActiveXObject("WScript.Shell"); 
		try{
		
			hkey_key="\\header"; 
			RegWsh.RegWrite(hkey_root+hkey_path+hkey_key,"");
			hkey_key="\\footer";
			RegWsh.RegWrite(hkey_root+hkey_path+hkey_key,"");
			
		}catch(e){alert("系统无法自动设置页眉页脚！请单击“页面设置”进行设置！")}
	}catch(e){}
}

//页面设置
function PrintSetup(){
	try{
	 	wb.execwb(8,1); 
	 }catch(e){}
}

//关闭窗口
function CloseWin(){
	try{
	 	wb.execwb(45,1); 
	 }catch(e){}
}

//打印说明
function HidPrintText(Object){
	var ObjectValue;
	ObjectValue=Object.value;
	if(ObjectValue=="show"){
		Object.innerHTML="显示打印说明";
		Object.value="hidden";
		window.printtext.style.display='none';
	}else{
		Object.innerHTML="隐藏打印说明";
		Object.value="show";
		window.printtext.style.display='';
	}	
}

//导出数据
function Export(){
	var i,j,k;
	var Len=1;
	var tables=window.document.all.tags("table");
	if(tables.length>0){
		var xlApp;             //存放Excel对象 
		var xlBook;            //存放Excel工件簿文件 
		var xlSheet;           //存放Excel活动工作表 
		try{ 
			xlApp = new ActiveXObject("Excel.Application");//创建Excel对象
			xlBook = xlApp.Workbooks.Add();  //创建Excel工作簿文件 
			xlSheet = xlBook.ActiveSheet;    //激活Excel工作表 
			xlApp.Visible = true;            //设置Excel对象可见
			for(i=0;i<tables.length;i++){
				if(tables[i].name=="theExportData")
				{
					var rowLen;
					var colLen;
					rowLen=tables[i].rows.length;                //table对象的行数
					for(j=0;j<rowLen;j++){
						colLen=tables[i].rows(j).cells.length;   //table对象的列数 
						for(k=0;k<colLen;k++){                    //为Excel表的单元格赋值 
							try{
								xlSheet.Cells(Len+j+1,k+1).value=new String(tables[i].rows(j).cells(k).innerText);
							}catch(e){}
						}
					}
					Len+=rowLen;
				}
			}
		}catch(e){ 
			alert("请启用ActiveX控件设置！"); 
			return;
		} 
	}
}
//加载页面时自动设置页眉页脚
printsethb();

