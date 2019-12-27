jQuery(function($) { 

$("#floading").ajaxStart(function(){
     $(this).html('<img name="" src="images/floading.gif" alt="正在查找，请稍等...    by firste"/>正在查找，请稍等...');
       });
$("#floading").ajaxStop(function(){
      $(this).html("");
       }); 
//showcity(调用id,下拉列表名称后的数字,默认选择id,下拉列表的名称)	   
showcity(0,1,0,"fcity");
});

function showcity(f_id,fnum,snum,fcity){
$.ajax({
				type:"post",
				url:"f_city.asp",
				// timeout: 2000,
				data:"fid="+f_id+"&fnum="+fnum+"&snum="+snum+"&fn="+fcity,
				cache:false, 
				success:function(html){
				 	if(fnum==2){
				 	var fn =fnum+1;
				  	$("#f"+fn).remove(); 
				 	}
					$("#f").append("<span id='f"+fnum+"'></span>");
					$("#f"+fnum).html(html);
				},
				error:function(){
					$("#ferr").html("服务器错误！"); 
					return false;
				}					
			});

}