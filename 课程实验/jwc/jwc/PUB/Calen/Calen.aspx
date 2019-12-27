<%@ Page Language="C#"%>
<HTML>
	<HEAD>
		
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK href="./Calen.css" rel=Stylesheet type=text/css>
<SCRIPT language=javascript Src="./Calen.js"></SCRIPT>

		<SCRIPT language="javascript">
		var bgcTD='snow',fntTD='#163a54';
		var bgcTDin='#008080',fntTDin='white';
		var bgcTDsel='darkblue',fntTDsel='white';
		var lastDayID='';

		function calenMouse(theID){
			if(theID.innerText=='') return false;
			
			if(theID.style.backgroundColor==bgcTDin)
			theID.style.backgroundColor=bgcTD;
			else if(theID.style.backgroundColor!=bgcTDsel)
			theID.style.backgroundColor=bgcTDin;
			
			if(theID.style.color==fntTDin)
			theID.style.color=fntTD;
			else theID.style.color=fntTDin;

			if(theID.style.backgroundColor==bgcTDsel) theID.style.color=fntTDsel;
		}

		function calenClick(theID){
			if(theID.innerText=='') return false;
			if(lastDayID=='') lastDayID=theID;
			
			lastDayID.style.backgroundColor=bgcTD;
			lastDayID.style.color=fntTD;
			lastDayID=theID;

			theID.style.backgroundColor=bgcTDsel;
			theID.style.color=fntTDsel;

			window.day.value=theID.innerText;
			window.lastDate.value=window.year.value+'-'+window.month.value+'-'+window.day.value;
			
			var sHTML;	
			sHTML=GetCalenStr(window.year.value,window.month.value-1,window.day.value);
			parent.divDayNote.innerHTML=sHTML;
		}
		</SCRIPT>
		<SCRIPT language="vbscript"><!--
			dim cal(6,7)

			function GetDate()
			dim yy,mm,dd,theday
			yy = window.year.value 
			mm = window.month.value 
			dd = window.day.value
			theday =CStr(dateserial(yy,mm,dd))
			GetDate=theday
			end function

			sub ret()
				if window.event.srcElement.innerText = "" then exit sub
				call calenClick(window.event.srcElement)	
				set cal(6,7) = nothing	
			end sub

			sub draw()
			dim yy,mm,dd,theday
			yy = window.year.value 
			mm = window.month.value 
			dd = 1
			theday = dateserial(yy,mm,dd)

			set cal(1,1) = t10:set cal(1,2) = t11:set cal(1,3) = t12:set cal(1,4) = t13:set cal(1,5) = t14:set cal(1,6) = t15:set cal(1,7) = t16
			set cal(2,1) = t20:set cal(2,2) = t21:set cal(2,3) = t22:set cal(2,4) = t23:set cal(2,5) = t24:set cal(2,6) = t25:set cal(2,7) = t26
			set cal(3,1) = t30:set cal(3,2) = t31:set cal(3,3) = t32:set cal(3,4) = t33:set cal(3,5) = t34:set cal(3,6) = t35:set cal(3,7) = t36
			set cal(4,1) = t40:set cal(4,2) = t41:set cal(4,3) = t42:set cal(4,4) = t43:set cal(4,5) = t44:set cal(4,6) = t45:set cal(4,7) = t46
			set cal(5,1) = t50:set cal(5,2) = t51:set cal(5,3) = t52:set cal(5,4) = t53:set cal(5,5) = t54:set cal(5,6) = t55:set cal(5,7) = t56
			set cal(6,1) = t60:set cal(6,2) = t61:set cal(6,3) = t62:set cal(6,4) = t63:set cal(6,5) = t64:set cal(6,6) = t65:set cal(6,7) = t66

			for i = 1 to 6 
				for j = 1 to 7
				cal(i,j).innertext = ""

				cal(i,j).style.fontsize = "9pt" '" normal small-caps 8pt serif"
				if cal(i,j).style.backgroundColor="darkblue" then 
				cal(i,j).style.backgroundColor="snow" 
				cal(i,j).style.color="#163a54"
				end if
				next
			next
			  
			cal(1,cint(datepart("w",theday))).innertext = 1
			theday = theday + 1
			i = 1  'the line
			do until datepart("d",theday) = 1
				if datepart ("w",theday) = 1 then i = i + 1
				cal(i,cint(datepart("w",theday))).innertext = datepart("d",theday)
				if CStr(theday)=CStr(window.lastDate.value) then calenClick(cal(i,cint(datepart("w",theday))))
				theday = theday + 1
			loop  
			end sub 

			sub up()
				if window.month.value = 12 then 
				if window.year.value<2005 then window.year.value = window.year.value + 1
				window.month.value = 1
				else 
				window.month.value  = window.month.value  + 1
				end if
				draw()
			end sub

			sub down()
				if window.month.value = 1 then 
				if window.year.value>2004 then window.year.value = window.year.value - 1
				window.month.value = 12
				else 
				window.month.value  = window.month.value  - 1
				end if
				draw()  
			end sub
			-->
		</SCRIPT>
		<SCRIPT language="vbscript"><!--
		Sub year_onchange
		draw()
		End Sub

		Sub month_onchange
		draw()
		End Sub

		sub init()
		aa = date()
		window.year.value = datepart("yyyy",aa)
		window.month.value = datepart("m",aa)
		draw()  
		end sub
-->
		</SCRIPT>
	</HEAD>
	<BODY onload="init()"onselectstart="window.event.returnValue=false"
		oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false"
		onsource="window.event.returnValue=false" leftMargin="5" topMargin="5" >
		<SELECT id="year" name="year">
		<%
		 int year=DateTime.Now.Year;
		 int oldYear=year-2;
		 for(int i=0;i<7;i++)
		 {
		   string selOk="";
		   int newYear=oldYear+i;
		   if(newYear==year) selOk=" selected ";
		 %>
			<OPTION value="<%=newYear%>"<%=selOk%>><%=newYear%></OPTION>
		 <%}%>		
		</SELECT>
		<SELECT id="month" name="month">
			<OPTION value="1" selected>1月</OPTION>
			<OPTION value="2">2月</OPTION>
			<OPTION value="3">3月</OPTION>
			<OPTION value="4">4月</OPTION>
			<OPTION value="5">5月</OPTION>
			<OPTION value="6">6月</OPTION>
			<OPTION value="7">7月</OPTION>
			<OPTION value="8">8月</OPTION>
			<OPTION value="9">9月</OPTION>
			<OPTION value="10">10月</OPTION>
			<OPTION value="11">11月</OPTION>
			<OPTION value="12">12月</OPTION>
		</SELECT>
		<IMG width="16" height="15" language="vbscript" onclick="down()" src="arrow_r.gif" alt='上一月'>
		<IMG width="16" height="15" language="vbscript" onclick="up()" src="arrow_l.gif" alt='下一月'>
		<input type='hidden' id="day" name="day" value='17'> <input type='hidden' id=lastDate name=lastDate value="<%=DateTime.Today.ToShortDateString()%>">
		<TABLE bgColor="snow" border="0" cellPadding="1" cellSpacing="1" width="169">
			<TBODY>
				<TR bgColor="#ffcc00" calsss="trWeek">
					<TD width="20" align="center">日</TD>
					<TD width="20" align="center">一</TD>
					<TD width="20" align="center">二</TD>
					<TD width="20" align="center">三</TD>
					<TD width="20" align="center">四</TD>
					<TD width="20" align="center">五</TD>
					<TD width="20" align="center">六</TD>
				</TR>
				<%
				for(int i=1;i<7;i++)
				{
					Response.Output.Write("<TR>\n");
					for(int j=0;j<7;j++)
					{
					Response.Output.Write("<TD id=t"+i.ToString()+j.ToString()+" onclick='vbscript:ret()' align='center' onmouseover='javascript:calenMouse(this)' onmouseout='javascript:calenMouse(this)'></TD>\n");
					}
					Response.Output.Write("</TR>\n");
				}
				%>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>
