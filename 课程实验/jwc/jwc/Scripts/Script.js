//=====================.net客户段验证2.0===========================

//导出数据函数
function Export(WindowObject){
	var i,j,k;
	var Len=1;
	var tables=WindowObject.document.all.tags("table");
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
			alert("请在IE选项中启用ActiveX控件设置！"); 
			return;
		} 
	}
}

function ck(http)
{
  var IP="http://HJF/NetWeb/"+http;
  window.top.main.location.href=IP;
  dh('Home','Operation','Stock','Storage','Report','Sys','Help');
}

function fob(n, d)
{
   var p,i,x;if(!d) d=document;
   if((p=n.indexOf("?"))>0&&parent.frames.length) 
   {
       d=parent.frames[n.substring(p+1)].document;
       n=n.substring(0,p);
   }
   if(!(x=d[n])&&d.all) 
   x=d.all[n];
   for (i=0;!x&&i<d.forms.length;i++) 
   x=d.forms[i][n];
   for(i=0;!x&&d.layers&&i<d.layers.length;i++) 
   x=fob(n,d.layers[i].document); 
   return x;
} 	   

function cb()
{
   var a=cb.arguments;
   var name=fob(a[0]);
   e=document.forms(0).elements;
   if (name.checked==true)
   {
      for (i=0;i<e.length;i++)
      {
         e[i].checked=true;
      }
   }
   else
   {
      for (i=0;i<e.length;i++)
      {
         e[i].checked=false;
      }
   }
}

function vdf() 
{
   var i,j,name,value,message,length,type,a=vdf.arguments,cb_name;
   for (i=0; i<(a.length-2); i+=3) 
   {
       if (a[i].indexOf('#')!=-1)
       {
           name=fob(a[i].substr(0,a[i].indexOf('#')));
           cb_name=fob(a[i].substr((a[i].indexOf('#')+1),a[i].length));
       }
       else
       {
          name=fob(a[i]); // 控件名称
       }
       message=a[i+1]; // 提示信息
       type=a[i+2]; // 类型
       if (type!="r_time")
       {
          value=name.value.replace(/ +/g, ""); // 控件值
       }
       else
       {
          value=name.value;
       }
   
       if (name) 
       {
          
       // ===============判断复选框是否选中================ //
          if (type=="r_cb")
          {      
             e=document.forms(0).elements;
             var flag=false;
             for (i=0;i<e.length;i++)
             { 
                if (e[i]!=cb_name)
                {
                   if (e[i].checked==true)
                   {
                       flag=true;
                       break;
                   }
                }
                if (i==e.length-1)
                {
                    break;
                }
             }
             if (flag==false)
             {
                alert(message+"!\n"); //为空时出现的提示
                return false;
             }
          }
          
          // ===============判断下拉框是否选择================ //
          if (type=="r_sl")
          {
            if (name.selected==false)
            {
                 alert(message+"!\n"); //为空时出现的提示
                 return false;
            }
          }
          
          // ===============不能为空的判断================ //
          if (type=="r") 
          {
             if (value=="") // 判断是否为空
             {
                 alert(message+"!\n"); //为空时出现的提示
                 name.focus();
                 name.select();
                 return false;
             }
          }
          
          // ===============不能为空的判断,但不获得焦点================ //
          if (type=="o_r") 
          {
             if (value=="") // 判断是否为空
             {
                 alert(message+"!\n"); //为空时出现的提示
                 return false;
             }
          }
         // ===============只能输入中文================ //
         if (type=="r_china")
         {
             if (value.search(/^[\u4e00-\u9fa5]+$/)==-1) 
             {
                  alert(message+"!\n"); // 判断不能为空
                  name.focus();
                  name.select();
                  return false;
             }
         }
         
         // ===============不能为空,必须是数字或者字符判断================ //
         if (type=="r_num_char")
         {
             if (value=="")
             {
                  alert(message+"!\n"); //为空时出现的提示
                 name.focus();
                 name.select();
                 return false;
             }
             if (value.search(/^[0-9a-zA-Z]+$/)==-1) 
             {
                  alert(message+"!\n"); //为空时出现的提示
                 name.focus();
                 name.select();
                 return false;
             }
          }
          
          // ===============可以为空，不为空时，填数字================ //
         if (type=="num")
         {
             if (value.search(/^[0-9]+$/)==-1 && value!="") 
             {
                  alert(message+"!\n"); // 判断不能为空
                  name.focus();
                  name.select();
                  return false;
             }
         }
         
         // ===============不能为空,必须是数字判断================ //
         if (type=="r_num")
         {
             if (value=="")
             {
                  alert(message+"!\n");
                  name.focus();
                 name.select();
                  return false;
             }
             if (value.search(/^[0-9]+$/)==-1) 
             {
                  alert(message+"!\n"); // 判断不能为空
                  name.focus();
                 name.select();
                  return false;
             }
          }
          
          // ===============必须输入小于n的数字================ //
          if (type.indexOf("r_num<")!=-1)
          {
              length=type.substring((type.indexOf('<')+1),type.length); // 获得rn<后面的数 
   
              if (value=="") // 为空做的提示
              {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
              }
              if (value.search(/^[0-9]+$/)==-1)  // 不是数字做的提示
              {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
              }
              if (value.length>length)  // 限制数字长度做的限制
              {
                 alert(message+"!\n");
                 name.focus();
                 name.select();
                 return false;
              }
          }
          
          // ===============必须输入大于n的数字================ //
          if (type.indexOf("r_num>")!=-1)
          {
	         length=type.substring((type.indexOf('>')+1),type.length); // 获得rn<后面的数
             if (value=="") // 为空做的提示
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
             if (value.search(/^[0-9]+$/)==-1)  // 不是数字做的提示
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
             if (value.length<length)  // 限制数字长度做的限制
             {
                alert(message+"!\n");
                name.focus();
                name.select();
                return false;
             }
          }
          
          // ===============必须输入a-b位之间的数字================ //		  
	      if (type.indexOf("r_num#<>")!=-1)
	      {
              length=type.substr((type.indexOf('>')+1),type.length);
              length=length.substr(0,length.lastIndexOf("-"));
	          length1=type.substring((type.indexOf('-')+1),type.length) // 获得rn<后面的数
              if (value=="") // 为空做的提示
	          {
		         alert(message+"!\n");
		         name.focus();
				 name.select();
				 return false;
			  }
			  if (value.search(/^[0-9]+$/)==-1) // 不是数字做的提示
			  {
				 alert(message+"!\n");
				 name.focus();
				 name.select();
				 return false;
			  }
			  if (value.length<length || value.length>length1)  // 限制数字长度做的限制
			  {
				 alert(message+"!\n");
				 name.focus();
				 name.select();
				 return false;
			  }
		  }
		  // ===============不能为空,必须是float类型================ //
         if (type=="r_float")
         {
             if (value=="")
             {
                  alert(message+"!\n");
                  name.focus();
                  name.select();
                  return false;
             }
             if (value.search(/^[0-9]+$/)!=-1 || value.search(/^([0-9]+)|([0-9]+\.[0-9]*)|([0-9]*\.[0-9]+)$/)!=-1) 
             {
                return true;
             }
             else
             {
                alert(message+"!\n"); // 判断不能为空
                  name.focus();
                  name.select();
                  return false;
             }
          }
		  
		  // ===============判断email,不一定输入================ //	
	      if (type.indexOf("email")!=-1)
	      {
	         if (name.value!="")
	         {
	             if (value.search(/^[_\.a-z0-9]+@[a-z0-9]+[\.][a-z0-9]{2,}$/i)==-1)
		         {
		             alert(message+"!\n");
     	    	     name.focus();
		             name.select();
		             return false;
		         }
	          }
	       }

	       // ===============判断email,一定输入================ //
			if (type.indexOf("r_email")!=-1)
			{
				if (name.value=="")
				{
				alert(message+"!\n");
				name.focus();
				name.select();
				return false;
				}
				if (value.search(/^[_\.a-z0-9]+@[a-z0-9]+[\.][a-z0-9]{2,}$/i)==-1)
				{
				alert(message+"!\n");
     	    			name.focus();
				name.select();
				return false;
				}
			}
	  
	   // ===============判断日期,比如2000-12-20================ //
          if (type=="r_date")
          {
              flag=true; 
              getdate=value;         
              if (getdate.search(/^[0-9]{4}-(0[1-9]|[1-9]|1[0-2])-((0[1-9]|[1-9])|1[0-9]|2[0-9]|3[0-1])$/)==-1) // 判断输入格式时候正确
              {
                   flag=false;
               }
               else
               {
                    var year=getdate.substr(0,getdate.indexOf('-'))  // 获得年
                    // 下面操作获得月份
					var transition_month=getdate.substr(0,getdate.lastIndexOf('-')); 
					var month=transition_month.substr(transition_month.lastIndexOf('-')+1,transition_month.length);
					if (month.indexOf('0')==0)
					{
					month=month.substr(1,month.length);
					}
					// 下面操作获得日期
					var day=getdate.substr(getdate.lastIndexOf('-')+1,getdate.length);
					if (day.indexOf('0')==0)
					{
					day=day.substr(1,day.length);
					}
					//alert(month);
					//alert(day)
					//return false;
                    if ((month==4 || month==6 || month==9 || month==11) && (day>30)) // 4,6,9,11月份日期不能超过30
                    {
                    flag=false; 
                     }
					if (month==2)  // 判断2月份
					{
						if (LeapYear(year))
						{
							if (day>29 || day<1){ flag=false; }
						}
						else
						{
							if (day>28 || day<1){flag=false; }
						}
					}
					else
					{
					flag=true;
					}
			   }
          if (flag==false)
          {
              alert(message+"!\n"); //为空时出现的提示
              name.focus();
              name.select();
              return false;
          }
        }
        
        
        // ===============判断日期,比如2000-12-20================ //
          if (type=="r_time")
          {
              flag=true; 
              getdate=value;
              if (getdate.search(/^[0-9]{4}-(0[1-9]|[1-9]|1[0-2])-((0[1-9]|[1-9])|1[0-9]|2[0-9]|3[0-1]) ((0[1-9]|[1-9])|1[0-9]|2[0-4]):((0[1-9]|[1-9])|[1-5][0-9]):((0[1-9]|[1-9])|[1-5][0-9])$/)==-1) // 判断输入格式时候正确
              {
                   flag=false;
               }
               else
               {
                    var year=getdate.substr(0,getdate.indexOf('-'))  // 获得年
                    // 下面操作获得月份
					var transition_month=getdate.substr(0,getdate.lastIndexOf('-')); 
					var month=transition_month.substr(transition_month.lastIndexOf('-')+1,transition_month.length);
					if (month.indexOf('0')==0)
					{
					month=month.substr(1,month.length);
					}
					// 下面操作获得日期
					var day=getdate.substr(getdate.lastIndexOf('-')+1,getdate.length);
					if (day.indexOf('0')==0)
					{
					day=day.substr(1,day.length);
					}
                    if ((month==4 || month==6 || month==9 || month==11) && (day>30)) // 4,6,9,11月份日期不能超过30
                    { 
                        flag=false; 
                     }
					if (month==2)  // 判断2月份
					{
						if (LeapYear(year))
						{
							if (day>29 || day<1){ flag=false; }
						}
						else
						{
							if (day>28 || day<1){flag=false; }
						}
					}
					else
					{
					flag=true;
					}
			   }
          if (flag==false)
          {
              alert(message+"!\n"); //为空时出现的提示
              name.focus();
              name.select();
              return false;
          }
        }
        //判断是否闰年
//参数		intYear 代表年份的值
//return	true: 是闰年	false: 不是闰年
function LeapYear(intYear) {
	if (intYear % 100 == 0) 
	{
		if (intYear % 400 == 0) { return true; }
	}
	else {
		if ((intYear % 4) == 0) { return true; }
	}
	return false;
}

      // ===============判断电话，可以为空================ //
	  if (type.indexOf("tel")!=-1)
	  {
	     if (name.value!="")
	     {
                 if (value.search(/^(\([0-9]{3}\)|[0-9]{3}-)[0-9]{8}$/)==-1 && value.search(/^(\([0-9]{4}\)|[0-9]{4}-)[0-9]{7}$/)==-1)
		 {
		    alert(message+"!\n");
     	    	    name.focus();
		    name.select();
		    return false;
		  }
	     }
	  }
	  
	  // ===============判断电话，不能为空================ //
	  if (type.indexOf("r_tel")!=-1)
	  {
	     if (name.value=="")
	     {
		    alert(message+"!\n");
		    name.focus();
		    name.select();
		    return false;
	     }
	     if (value.search(/^(\([0-9]{3}\)|[0-9]{3}-)[0-9]{8}$/)==-1 && value.search(/^(\([0-9]{4}\)|[0-9]{4}-)[0-9]{7}$/)==-1)
	     {
	        alert(message+"!\n");
     	    name.focus();
		    name.select();
		    return false;
	     }
	  }
	  
	  // ===============判断手机，可以为空================ //
	  if (type.indexOf("mod")!=-1)
	  {
	     if (name.value!="")
	     {
                if (value.search(/^[0-9]{11}$/)==-1)
		{
		   alert(message+"!\n");
     	    	   name.focus();
		   name.select();
		   return false;
		}
	     }
	   }
	   
	   // ===============判断手机，不能为空================ //
	   if (type.indexOf("r_mod")!=-1)
	   {
	      if (name.value=="")
	      {
		  alert(message+"!\n");
		  name.focus();
		  name.select();
		  return false;
	       }
	      if (value.search(/^[0-9]{11}$/)==-1)
	      {
		 alert(message+"!\n");
     	    	 name.focus();
		 name.select();
		 return false;
	       }
	   }
	   
	   // ===============判断街道================ //
	   if (type.indexOf("city")!=-1)
	   {
	      if (name.value!="")
	      {
            	 if (value.search(/^.{1,}(市|镇|乡).{1,}(路|街|道).{1,}号.{0,}$/)==-1)
		 {
		     alert(message+"!\n");
     	    	     name.focus();
		     name.select();
		     return false;
		  }
	       }
	   }
	   
	   // ===============判断街道，不能为空================ //
	   if (type.indexOf("r_city")!=-1)
	   {

	       if (name.value=="")
	       {
		  alert(message+"!\n");
		  name.focus();
		  name.select();
		  return false;
	       }

	       if (value.search(/^.{1,}(市|镇|乡).{1,}(路|街|道).{1,}号.{0,}$/)==-1)
	       {
		  alert(message+"!\n");
     	    	  name.focus();
		  name.select();
		  return false;
	       }
	   }
        }
    }
}




// ------------------本系统函数--------------------
function dh()
{
	var a=dh.arguments;
	var i;
	for (i=0;i<a.length;i++)
	{
	    eval("window.top.nav.document."+a[i]+ ".src='Images/Top/btn_"+a[i]+".jpg'");
	}
}
// ＝＝＝颜色＝＝＝
var main_tr_onmouseover="#E4EFFC"; // 主题main的tr鼠标移动onmouseover上来时的颜色

// ＝＝＝打印功能＝＝＝
var gLoadFinished = true; // 检测页面加载标记
var gDataGridName = "id"; // 要打印的内容的名称
var Title="s";
			// 打开JustPrint(TM) 打印服务窗口
function OpenJustPrintDlg()
{
	window.open('JustPrintService.aspx','_blank',"left=0,top=0,width=520,height=350,status=yes,resizable=no,directories=no,location=no,menubar=no,scrollbars=no,titlebar=no,toolbar=no");
				
}


