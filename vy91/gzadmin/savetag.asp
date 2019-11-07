<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="add" then
if request("nameadd")<>"" then
name=trim(request("nameadd"))
set rs=server.CreateObject("ADODB.RecordSet")
Sql="Select * From tag Where name='"&name&"'"
Rs.Open Sql,Conn,1,3
if not rs.eof then
response.write "此标签已存在，请不要重复提交<a href=Managetag.asp>返回</a>"
response.end
end if
If Rs.Eof And Rs.Bof Then
Rs.AddNew
End If
  rs("name")=name
  rs.update
  rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
response.redirect "Managetag.asp"
response.end
else
response.write "你好像少了什么没写吧<a href=Managetag.asp>返回</a>"
response.end
end if
end if
%>
<%
if request("delname")<>"" then
delname=trim(request("delname"))

set rs=server.CreateObject("ADODB.RecordSet")
Sql="Select * From flash Where tag like '%"&delname&"%'"
Rs.Open Sql,Conn,1,3
if not rs.eof then
response.write "此标签里面还有内容不能删除<a href=Managetag.asp>返回</a>"
response.end
end if
Set Rs = Nothing
Conn.Close
Set Conn=nothing

if request("action")="del" then
Conn.Execute"Delete From tag Where ID="&Request("ClassID")
response.redirect "Managetag.asp"
response.end
End if
else
response.write "删除错误<a href=Managetag.asp>返回</a>"
response.end
end if

%>
<%
If request("action")="edit" Then
if request("classedit")<>"" then
name=trim(request("name"))
id=trim(request("id"))
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From tag Where ID="&Request("ID")
Rs.open Sql,Conn,1,3
Rs("Name")=name
Rs.Update
Rs.Close
End if
response.redirect "Managetag.asp"
response.end
else
response.write "没有填写完整<a href=Managetag.asp>返回</a>"
response.end
end if
%>





