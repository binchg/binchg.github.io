<%@ Page language="c#" Codebehind="SET_BGSQ_NewAddRpt_Rpt.aspx.cs" AutoEventWireup="false" Inherits="KingosoftFrame.JXJH.SET_BGSQ_NewAddRpt_Rpt" %>
<script language='javascript'>  
   
   function getZxsClickValue(user_kcid,kcid,ZXF,i,Object){ //i序号
		try{
			var reStr;
			var kcdm=kcid;
			var user_kcdm=user_kcid;
			var kcmc=Object.kcmc;
			var xf=ZXF;	
			var theValue="";
			var keyValues="";
			if(Object.checked==true){
				var url='./KKJH_KKBG_SetZzxsFrame.aspx?p=setZzxs&pj='+i+'&kcdm='+kcid+'&user_kcdm='+user_kcid+'&kcmc='+kcmc+'&xf='+ZXF;
				reStr=window.open(url,'no','width=380,height=140');
				reStr.moveTo((window.screen.width-400)/2,(window.screen.height-140)/2);
			}else{
				keyValues=parent.document.all.hidKeyStr.value;
				theValue=Object.oldvalue;
				var keyArr=keyValues.split(";");
				if(keyArr.length>0)
				{  
					var theIndexInt=keyValues.indexOf(theValue);
					if(theIndexInt>-1)
					{  if(theIndexInt==0)                   
						{  if(keyArr.length>1)
							{  keyValues=keyValues.replace(theValue+';',''); }
							else{   keyValues=''; }
						}else{ keyValues=keyValues.replace(';'+theValue,''); }
					}
				}
				parent.document.all.hidKeyStr.value=keyValues;
				Object.checked=false; 
			}			  
			Object.checked=false; 
		}catch(e){alert(e);}	
	}
	
	//非培养方案中的课程信息ID：kcid@kclb1@kclb2@khfs@zzxs;kcid@kclb1@kclb2@khfs@zzxs
	 function AddNewLessonInfo(i){	
			try{
				var obj;
				var kcdm;
				var kclb1;
				var kcbl2;
				var khfs;
				var zzxs;	
				try{
					if(i==0)
					{
						obj=document.all.checkBoxId[i];	
						kcdm=obj.value;
					}
					else
					{
						obj=document.all.checkBoxId[i-1];	
						kcdm=obj.value;
					}	
				}catch(e){
					obj=document.all.checkBoxId;
					kcdm=obj.value;	
				}
					
				eval("kclb1=document.all.hidKCLB1"+i+".value");				
				eval("kclb2=document.all.hidKCLB2"+i+".value");
				eval("khfs=document.all.hidKHFS"+i+".value");
				eval("zzxs=document.all.hidZXS"+i+".value");	
						
				var keyValues=parent.document.all.hidKeyStr.value;
				var theValue=obj.value+"@"+kclb1+"@"+kclb2+"@"+khfs+"@"+zzxs;
				var keyArr=keyValues.split(";");						
				var valueFlag=false;
				for(var i=0;i<keyArr.length;i++)
				{
					var keykcdm=keyArr[i].substring(0,6);
       				if(keykcdm==kcdm)valueFlag=true;
                }
                //选定
				if(obj.checked)
				{
					if(!valueFlag)
					{   if(keyValues.length==0)
						{   keyValues=theValue;   }
						else{ keyValues+=";"+theValue; }						
					}
					obj.oldvalue=theValue;
				}
				parent.document.all.hidKeyStr.value=keyValues;			
			}catch(e){alert(e);}
	}	
</script>
<asp:Literal ID="pageRpt" Text="" Runat="server" />
