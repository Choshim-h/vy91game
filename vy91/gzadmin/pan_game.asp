<!--#include File="Conn.asp" -->
<%
flashname=trim(request("game"))
set rs=server.CreateObject("ADODB.RecordSet")
Sql="Select * From flash Where flashname='"&flashname&"'"
Rs.Open Sql,Conn,1,3
if not rs.eof then
response.write "<font color=ff0000><b>"&flashname&"已存在</b></font>"
response.end
else
response.write "<font color=006600><b>"&flashname&"可以添加</b></font>"
response.end
end if
%>
