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
tag=trim(request("tag"))
classid=trim(request("classid"))
flashurl=trim(request("flashurl"))
pic=trim(request("pic"))
pic1=trim(request("pic1"))
pic2=trim(request("pic2"))
spic=trim(request("spic"))
mpic=trim(request("mpic"))
if pic="" then
pic="../images/nophoto.gif"
end if
size=trim(request("size"))
hot=trim(request("hot"))
tj=trim(request("tj"))
zz=trim(request("zz"))
user=trim(request("user"))
geshou=trim(request("geshou"))
flashwidth=trim(request("flashwidth"))
flashheight=trim(request("flashheight"))
caozuo=trim(request("caozuo"))
body=trim(request("body"))
caozuo=replace(caozuo,chr(13),"<br>")
body=replace(body,chr(13),"<br>")
sj=trim(request("sj"))
url=trim(request("url"))
macoolurl=trim(request("macoolurl"))
androidurl=trim(request("androidurl"))
iosurl=trim(request("iosurl"))
rank=trim(request("rank"))
cnflashname=trim(request("cnflashname"))
cncaozuo=trim(request("cncaozuo"))
cnbody=trim(request("cnbody"))
cncaozuo=replace(cncaozuo,chr(13),"<br>")
cnbody=replace(cnbody,chr(13),"<br>")
ratings=trim(request("ratings"))
videourl=trim(request("videourl"))

if tag="" then
response.write "��ǩû����д<a href=addflash.asp>����</a>"
response.end
end if
if ratings="" then
response.write "û��ѡ��ּ�<a href=addflash.asp>����</a>"
response.end
end if
set rs3=server.createobject("adodb.recordset")
flashtags=Split(tag,",")
if ubound(flashtags)>0 then
for i=0 to ubound(flashtags)
Sql="Select * From tag where name='"&trim(flashtags(i))&"'"
rs3.Open Sql,Conn,1,3
if rs3.eof then
if trim(flashtags(i))<>"" then
rs3.addnew
rs3("name")=trim(flashtags(i))
rs3.update
end if
else
end if
rs3.close
next
else
if tag<>"" then
Sql="Select * From tag where name='"&trim(flashtags(i))&"'"
rs3.Open Sql,Conn,1,3
if rs3.eof then
rs3.addnew
rs3("name")=trim(flashtags(i))
rs3.update
else
end if
rs3.close
end if
end if


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
  rs("tag")=tag
  rs("classid")=classid
  rs("flashurl")=flashurl
  rs("nclass")=nclass
  rs("classname")=classname
  rs("pic")=pic
  rs("pic1")=pic1
  rs("pic2")=pic2
  rs("spic")=spic
  rs("mpic")=mpic
  rs("size")=size
  rs("hot")=hot
  rs("tj")=tj
  rs("zz")=zz
  rs("user")=user
  rs("geshou")=geshou
  rs("caozuo")=caozuo
  rs("flashwidth")=flashwidth
  rs("flashheight")=flashheight
  rs("body")=body
  rs("sj")=sj
  rs("url")=url
  rs("macoolurl")=macoolurl
  rs("androidurl")=androidurl
  rs("iosurl")=iosurl
  rs("rank")=rank
  rs("hits")=0
  rs("cnflashname")=cnflashname
  rs("cncaozuo")=cncaozuo
  rs("cnbody")=cnbody
  rs("ratings")=ratings
  rs("videourl")=videourl
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
tag=trim(request("tag"))
classid=trim(request("classid"))
flashurl=trim(request("flashurl"))
pic=trim(request("pic"))
pic1=trim(request("pic1"))
pic2=trim(request("pic2"))
spic=trim(request("spic"))
mpic=trim(request("mpic"))
if pic="" then
pic="../images/nophoto.gif"
end if
size=trim(request("size"))
hot=trim(request("hot"))
tj=trim(request("tj"))
zz=trim(request("zz"))
user=trim(request("user"))
geshou=trim(request("geshou"))
caozuo=trim(request("caozuo"))
flashwidth=trim(request("flashwidth"))
flashheight=trim(request("flashheight"))
body=trim(request("body"))
caozuo=replace(caozuo,chr(13),"<br>")
body=replace(body,chr(13),"<br>")
sj=trim(request("sj"))
url=trim(request("url"))
macoolurl=trim(request("macoolurl"))
androidurl=trim(request("androidurl"))
iosurl=trim(request("iosurl"))
rank=trim(request("rank"))
cnflashname=trim(request("cnflashname"))
cncaozuo=trim(request("cncaozuo"))
cnbody=trim(request("cnbody"))
cncaozuo=replace(cncaozuo,chr(13),"<br>")
cnbody=replace(cnbody,chr(13),"<br>")
ratings=trim(request("ratings"))
videourl=trim(request("videourl"))

if tag="" then
response.write "��ǩû����д<a href=editflash.asp?id="&request("id")&">����</a>"
response.end
end if
set rs3=server.createobject("adodb.recordset")
flashtags=Split(tag,",")
if ubound(flashtags)>0 then
for i=0 to ubound(flashtags)
Sql="Select * From tag where name='"&trim(flashtags(i))&"'"
rs3.Open Sql,Conn,1,3
if rs3.eof then
if trim(flashtags(i))<>"" then
rs3.addnew
rs3("name")=trim(flashtags(i))
rs3.update
end if
else
end if
rs3.close
next
else
if tag<>"" then
Sql="Select * From tag where name='"&trim(flashtags(i))&"'"
rs3.Open Sql,Conn,1,3
if rs3.eof then
rs3.addnew
rs3("name")=trim(flashtags(i))
rs3.update
else
end if
rs3.close
end if
end if


Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From flash Where ID="&Request("ID")
Rs.open Sql,Conn,1,3
  rs("flashname")=flashname
  rs("tag")=tag
  rs("classid")=classid
  rs("flashurl")=flashurl
  rs("nclass")=nclass
  rs("classname")=classname
  rs("spic")=spic
  rs("pic")=pic
  rs("pic1")=pic1
  rs("pic2")=pic2
  rs("spic")=spic
  rs("mpic")=mpic
  rs("size")=size
  rs("hot")=hot
  rs("tj")=tj
  rs("zz")=zz
  rs("user")=user
  rs("geshou")=geshou
  rs("caozuo")=caozuo
  rs("flashwidth")=flashwidth
  rs("flashheight")=flashheight
  rs("body")=body
  rs("sj")=sj
  rs("url")=url
  rs("macoolurl")=macoolurl
  rs("androidurl")=androidurl
  rs("iosurl")=iosurl
  rs("rank")=rank
  rs("cnflashname")=cnflashname
  rs("cncaozuo")=cncaozuo
  rs("cnbody")=cnbody
  rs("ratings")=ratings
  rs("videourl")=videourl
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