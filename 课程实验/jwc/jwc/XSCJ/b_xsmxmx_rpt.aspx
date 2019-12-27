<%@ Import NameSpace="System.Web" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System" %>
<%@ Import NameSpace="DAL.XSCJ" %>
<%@ Import NameSpace="BLL.XSCJ" %>


<Script Language="VB" Runat="Server">
dim  DataObj as DAL.XSCJ.DAL_MXXX =new DAL_MXXX()
dim PubObj as BLL.XSCJ.BLL_subPrivate_XSCJ=new BLL_subPrivate_XSCJ(Page)
dim vstr1,vstr2,vstr3,vTitle
dim vYX,vCDDW,CUR_XNXQ,vRpt
dim rs as SqlDataReader
dim HeadOld,Old1,Old2,Old3,cddwkcrs,vGrp,i

dim ThePer() as String={"7%","25%","5%","8%","15%","15%","5%","8%","12%"}
dim TheAlign() as String={"center","left","center","right","center","","center","right","left"}
dim TheHeadStr() as String={"序号","免修课程/环节","学分","免修<br>人数","学号","姓名","性别","成绩","免修原因"}


Sub Page_Load(Obj As Object, e As EventArgs)
	dim n
	vstr1="":vstr2="":vstr3="":i=1	
	vTitle="学生免修明细"
	response.write ("<HTML>")
	response.write ("<HEAD>")
	response.write ("<title></title>")
	response.write ("<meta http-equiv='Content-Type' content='text/html; charset=gb2312'>")
	response.write ("<link rel='stylesheet' href='../_style/styles_rpt.css' type='text/css'>")
	response.write ("</HEAD>")
	response.write ("<body  topmargin='0' leftmargin='0'>")
	response.write ("<center>")
		
	vRpt=Request.Form("radCx")
	vYX=Request.Form("sel_yx")
	vCDDW=Request.Form("sel_cddw")
	CUR_XNXQ=Request.Form("sel_xnxq")

	dim ThePer1() as String={"5%","5%","15%","10%","10%","5%","25%","5%","8%","12%"}
	dim TheAlign1() as String={"center","center","left","center","","center","","center","right","left"}
	dim TheHeadStr1() as String={"序号","年级","专业","学号","姓名","性别","免修课程/环节","学分","成绩","免修原因"}


		
	IF Request.ServerVariables("REQUEST_METHOD") = "POST" THEN 	
		if vRpt<>"1" then
			redim ThePer(9),TheAlign(9),TheHeadStr(9)
			for n=0 to ubound(ThePer1)
				ThePer(n)= ThePer1(n)
				TheAlign(n)=TheAlign1(n) 
				TheHeadStr(n)=TheHeadStr1(n)
			Next
		end if
		rs=DataObj.GetRptDataReader(trim(vYX),trim(vCDDW),CUR_XNXQ,vRpt)
		HeadOld=""
		Old1="":Old2="":Old3=""
		cddwkcrs=0
		
		IF rs.HasRows THEN
			rs.read():Headstr(vRpt) 
			CALL NEWDrawHead()   
			if vRpt="1" then HeadOld=rs("cddw_id") else HeadOld=rs("yx_id")

			Response.Write ("<table width='100%' id=tableReportMain border=1 ID='ID_Table' CELLPADDING=0 CELLSPACING=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'>")
			vGrp=1
			do
				Call Grpsub(vRpt)
				CALL NEWDrawMain()
				vGrp=vGrp+1
				i=i+1
			Loop while(rs.read())
			Response.Write ("</table>")
		END IF
	end if
	response.write ("</center>")
	response.write ("</border>")
end Sub 

Sub Headstr(vID)
	dim rs1 as SqlDataReader
	dim cddwmc,yxmc
	if vID="1" then
	
		rs1=DataObj.GetRptHeadDataReader(trim(rs("cddw_id")),vID)
		if rs1.HasRows then 
			rs1.read()
			cddwmc=rs1(0)
			vstr1="&nbsp;承担单位："&cddwmc
			vstr2="免修课程/环节数："&Getkcs(rs1(1),vID)
			vstr3="课程/环节->免修学生人数："&cddwkcrs
		end if
		rs1.close()
		vGrp=1
	else
		rs1=DataObj.GetRptHeadDataReader(trim(rs("yx_id")),vID)
		if rs1.HasRows then 
			rs1.read()
			yxmc=rs1(0)
			vstr1="&nbsp;院(系)/部："&yxmc
			vstr2="免修学生人数："&Getkcs(rs1(1),vID)
			vstr3="学生->免修课程/环节数："&cddwkcrs
		end if
		rs1.close()
		vGrp=1
	end if 
end Sub  

Sub Grpsub(vID)
	if vID="1" then
		if HeadOld<>rs("cddw_id") and i<>1 then
		response.write ("</table>")
		response.write ("<br>")
		Call Headstr(vRpt)
		CALL NEWDrawHead()
		HeadOld=rs("cddw_id")
		Response.Write ("<table width='100%' id=tableReportMain border=1 ID='ID_Table' CELLPADDING=0 CELLSPACING=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'>")
		end if	
	else
		if HeadOld<>rs("yx_id") and i<>1 then
		response.write ("</table>")
		response.write ("<br>")
		Call Headstr(vRpt)
		CALL NEWDrawHead()
		HeadOld=rs("yx_id")
		Response.Write ("<table width='100%' id=tableReportMain border=1 ID='ID_Table' CELLPADDING=0 CELLSPACING=0  bordercolorlight='#89bfa7' bordercolordark='#FFFFFF'>")
		end if	
	end if         
end sub

Sub NewDrawHead() 	'==报表头
	dim i,theHead
	theHead=""
	theHead="<table width=100% BORDER=0 align=center CELLPADDING=0 CELLSPACING=0><tr align=center>"
	theHead=theHead & "<td width=40% align=left class=noborder valign=bottom>"&cstr(vstr1)&"</td>"
	theHead=theHead & "<td width=30% align=left class=noborder valign=bottom>"&cstr(vstr2)&"</td>"
	theHead=theHead & "<td width=30% align=right class=noborder valign=bottom>"&cstr(vstr3)&"</td></tr></table>"

	theHead=theHead & "<table width=100% BORDER=0 align=left CELLPADDING=0 CELLSPACING=0 bordercolorlight=#89bfa7 bordercolordark=#FFFFFF>"
	theHead=theHead & "<tr align=center valign=middle class=T>" 
	for i=0 to TheHeadStr.length-1
		theHead=theHead & "<td width=" &ThePer(i)& " class=only-bottom>" &TheHeadStr(i)& "</td>"   
	next
	theHead=theHead & "</tr></table>"
	Response.write ("<DIV id=theHead state='ok' style='display: none_;width:100%;'>"&cstr(theHead)&"</DIV>")
	
End Sub

SUB NEWDrawMain()
  dim j
  response.write ("<tr class=")
  if (vGrp mod 2)=0 then response.write ("H>") else response.write("B>")
  response.write ("<td width=" &ThePer(0)& " align="&TheAlign(0)&" class=no-top>" &cstr(vGrp)& "</td>")
  
  for j=1 to TheHeadStr.length-1
		IF vRpt="1" then
			if j=1 then
				if Old1=rs(j-1) then
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>"):j=j+1
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>"):j=j+1
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>")
				else
					Old1=rs(j-1)
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>") 	
				end if
			else
				if j=3 then
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &Getrs(rs(8))& "<br></td>")
				else	
						response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>")
				end if
			end if
	   else 
			if j=1 then
				if Old1=rs(j-1) then
					response.write ("<td width=" &ThePer(j)&" align="&TheAlign(j)&"><br></td>")
				else
					Old1=rs(j-1)
					Old2=rs(j-1+1)	
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>"):j=j+1
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>")
				end if	
			elseif j=2 then
				if Old2=rs(j-1) then
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>")
				else
					Old2=rs(j-1)
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>") 	
				end if
			elseif j=3 then	
				if Old3=rs(j-1) then
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>") :j=j+1
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>") :j=j+1
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&"><br></td>") 
				else
					Old3=rs(j-1)
					response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>") 	
				end if
			else
				response.write ("<td width=" &ThePer(j)& " align="&TheAlign(j)&">" &rs(j-1)& "<br></td>") 
				end if
			end if
		Next 
		Response.write("</tr>")
End SUB 
 
Function Getrs(vID) 
	dim rs1 as SqlDataReader 
	rs1=DataObj.GetRptCountRSDataReader(trim(vID),CUR_XNXQ) 
	if rs1.HasRows then
		rs1.read()
		Getrs=rs1(0) 
	else
		Getrs=0 
	end if 
	rs1.close
End Function 

Function Getkcs(vID,ID) 
	dim rs1 as SqlDataReader 
	rs1=DataObj.GetRptCountKCSDataReader(vID,CUR_XNXQ,ID) 
	if ID="1" then 
		if rs1.HasRows then
			rs1.read() 
			Getkcs=rs1(0) 
			cddwkcrs=rs1(1) 
		else 
			Getkcs=0 
			cddwkcrs=0 
		end if 
	else 
		if rs1.HasRows  then
			rs1.read() 
			Getkcs=rs1(0) 
			cddwkcrs=rs1(1) 
		else 
			Getkcs=0 
			cddwkcrs=0 
		end if 
	end if 
End Function 
</Script>


		