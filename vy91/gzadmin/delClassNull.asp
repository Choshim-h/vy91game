<!--#include file="conn.asp"-->
<%
set rs=server.CreateObject("ADODB.RecordSet")
sql="SELECT * FROM class WHERE name is null"
rs.Open Sql,Conn,3,3
do while not rs.eof
id=rs("id")
classid=rs("classid")
	response.write id&" "&classid&"<br>"
	rs.delete

rs.movenext
loop

rs.close

%>



