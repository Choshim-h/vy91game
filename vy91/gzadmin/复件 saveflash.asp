<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="add" then
if request("classid")<>"" and request("flashname")<>"" and request("flashurl")<>"" then
Sql="Select * From class where ID="&Request("classID")
Set Rs=Server.Createobject("Adodb.Recordset")
Rs.open Sql,Conn,1,1
nclass=rs("classid")
classname=rs("name")
Rs.Close
Set Rs=nothing
flashname=trim(request("flashname"))
classid=trim(request("classid"))
flashurl=trim(request("flashurl"))
pic=trim(replace(request("pic"),"/flashpic/",""))
spic=trim(replace(request("spic"),"/flashspic/",""))
if pic="" then
pic="../images/nophoto.gif"
end if
size=trim(request("size"))
hot=trim(request("hot"))
tj=trim(request("tj"))
zz=trim(request("zz"))
user=trim(request("user"))
geshou=trim(request("geshou"))
body=trim(request("body"))
body=replace(body,chr(13),"<br>")
sj=trim(request("sj"))
url=trim(request("url"))
set rs=server.CreateObject("ADODB.RecordSet")
Sql="Select * From flash Where flashname='"&flashname&"'"
Rs.Open Sql,Conn,1,3
if not rs.eof then
response.write "<font color=ff0000><b>"&flashname&"�Ѵ���</b></font><a href=addflash.asp>����</a>"
response.end
end if
If Rs.Eof And Rs.Bof Then
Rs.AddNew
End If
  rs("flashname")=flashname
  rs("classid")=classid
  rs("flashurl")=flashurl
  rs("nclass")=nclass
  rs("classname")=classname
  rs("pic")=pic
  rs("spic")=spic
  rs("size")=size
  rs("hot")=hot
  rs("tj")=tj
  rs("zz")=zz
  rs("user")=user
  rs("geshou")=geshou
  rs("body")=body
  rs("sj")=sj
  rs("url")=url
  rs("hits")=0
  rs.update
  rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
response.write "OK��ӳɹ�,���ڷ���<meta http-equiv=""refresh"" content=""1;URL=addflash.asp"">" 
response.end
else
response.write "���������ʲôûд��<a href=addflash.asp>����</a>"
response.end
end if
response.end
end if
%>
<%
if request("action")="edit" then
if request("id")="" then
response.write "��������ȷ<a href=editflash.asp?id="&request("id")&">����</a>"
response.end
end if
if request("classid")<>"" and request("flashname")<>"" and request("flashurl")<>"" then
Sql="Select * From class where ID="&Request("classID")
Set Rs=Server.Createobject("Adodb.Recordset")
Rs.open Sql,Conn,1,1
nclass=rs("classid")
classname=rs("name")
Rs.Close
Set Rs=nothing
flashname=trim(request("flashname"))
classid=trim(request("classid"))
flashurl=trim(request("flashurl"))
pic=trim(request("pic"))
spic=trim(request("spic"))
if pic="" then
pic="../images/nophoto.gif"
end if
size=trim(request("size"))
hot=trim(request("hot"))
tj=trim(request("tj"))
zz=trim(request("zz"))
user=trim(request("user"))
geshou=trim(request("geshou"))
body=trim(request("body"))
body=replace(body,chr(13),"<br>")
sj=trim(request("sj"))
url=trim(request("url"))
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From flash Where ID="&Request("ID")
Rs.open Sql,Conn,1,3
  rs("flashname")=flashname
  rs("classid")=classid
  rs("flashurl")=flashurl
  rs("nclass")=nclass
  rs("classname")=classname
  rs("spic")=spic
  rs("pic")=pic
  rs("spic")=spic
  rs("size")=size
  rs("hot")=hot
  rs("tj")=tj
  rs("zz")=zz
  rs("user")=user
  rs("geshou")=geshou
  rs("body")=body
  rs("sj")=sj
  rs("url")=url
  rs.update
  rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
response.write "OK�޸ĳɹ�,���ڷ���<meta http-equiv=""refresh"" content=""1;URL=flash.asp"">" 
response.end
else
response.write "���������ʲôûд��<a href=editflash.asp?id="&request("id")&">����</a>"
response.end
end if
response.end
end if
%>
<%
if request("del")<>"" then
Conn.Execute"Delete From flash Where ID="&Request("del")
response.redirect "flash.asp"
response.end
else
response.write"�޴�FLASH"
End if

%>