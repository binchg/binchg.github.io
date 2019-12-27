<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conn_city.asp" -->
<% 
dim fnum,snum,fcity
fnum =Request.Form("fnum")
snum =request.Form("snum")
fcity =request.Form("fn")
if fnum="" then fnum=1
if snum="" then snum="0"
if fcity ="" then fcity="fcity"
 %>
<%
Dim rs__MMColParam
rs__MMColParam = "0"
If (Request.form("fid") <> "") Then 
  rs__MMColParam = Request.form("fid")
End If
%>
<%
Dim rs
Dim rs_cmd
Dim rs_numRows

Set rs_cmd = Server.CreateObject ("ADODB.Command")
rs_cmd.ActiveConnection = MM_conn_city_STRING
rs_cmd.CommandText = "SELECT * FROM firste_city WHERE f_up = ? ORDER BY f_p ASC,fid asc" 
rs_cmd.Prepared = true
rs_cmd.Parameters.Append rs_cmd.CreateParameter("param1", 5, 1, -1, rs__MMColParam) ' adDouble

Set rs = rs_cmd.Execute
rs_numRows = 0
%><% if not rs.eof then %><select name="<%= fcity %><%= fnum %>" id="<%= fcity %><%= fnum %>" <% If (rs.Fields.Item("f_grade").Value)>0 Then %>onChange="showcity(this.value,<%= fnum+1 %>,<%= snum %>,'<%= fcity %>')"<% End If %>><%
If (rs.Fields.Item("f_grade").Value)>0 Then Response.Write("<option value=""-1"">-------请选择-------</option>") 
While (NOT rs.EOF)
%><option value="<%=(rs.Fields.Item("fid").Value)%>" <% If cstr(snum) = cstr(rs.Fields.Item("fid").Value) Then %>selected="selected"<% End If %>><%=(rs.Fields.Item("f_title").Value)%></option><%
  rs.MoveNext()
Wend
If (rs.CursorType > 0) Then
  rs.MoveFirst
Else
  rs.Requery
End If
%></select>
<% End If %>
<%
rs.Close()
Set rs = Nothing
%>
