<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="add" then
if request("nameadd")<>"" and request("classidadd")<>"" then
name=trim(request("nameadd"))
classid=trim(request("classidadd"))
set rs=server.CreateObject("ADODB.RecordSet")
Sql="Select * From class Where name='"&name&"'"
Rs.Open Sql,Conn,1,3
if not rs.eof then
response.write "�˷����Ѵ��ڣ��벻Ҫ�ظ��ύ<a href=class.asp>����</a>"
response.end
end if
If Rs.Eof And Rs.Bof Then
Rs.AddNew
End If
  rs("name")=name
  rs("classID")=classid
  rs.update
  rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
response.redirect "class.asp"
response.end
else
response.write "���������ʲôûд��<a href=class.asp>����</a>"
response.end
end if
end if
%>
<%
if request("action")="del" then
Conn.Execute"Delete From Class Where ID="&Request("ClassID")
response.redirect "class.asp"
response.end
End if

%>
<%
If request("action")="edit" Then
if request("classedit")<>"" and request("name")<>"" then
classid=trim(request("classedit"))
name=trim(request("name"))
id=trim(request("id"))
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class Where ID="&Request("ID")
Rs.open Sql,Conn,1,3
Rs("Name")=name
Rs("classid")=classid
Rs.Update
Rs.Close
End if
response.redirect "class.asp"
response.end
else
response.write "û����д����<a href=class.asp>����</a>"
response.end
end if
%>





