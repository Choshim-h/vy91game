<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="Images/Style.Css" rel="stylesheet" type="text/css">
<title>邮件群发</title>
</head>

<body>
<%
set rs=server.createobject("adodb.recordset")
Sql="Select * From acoolmail where id=1"
rs.open Sql,Conn,1,3
  mailinfo1=rs("mailinfo")
  mailtitle1=rs("mailtitle")
rs.close


dim Ds,mailinfo,mailtitle
Ds=timer()


if request("type")="all" then
   makeskysoft="yes"
end if

if makeskysoft="yes" then
response.write"<b><font color=""#FF0000"">正在发送邮件，请等待......</font></b><BR><span id=showImport></span>"
   if request("p")<>"" then
     p=cint(request("p"))
     D=request("D")
   else
     p=1
     D=Ds
   end if
MaxPerPage=2  '每页多少个

SkyIDNowPage=p*MaxPerPage+1
if SkyIDNowPage=>allshu then SkyIDNowPage=allshu


        rs.open ("select top 4 * from userinfo where username not like '%acool.com%' order by id asc"),conn,1,1
		If Rs.Eof And Rs.bof Then

		else  
		rs.Pagesize=MaxperPage
		PageCount1=rs.PageCount    '得到总页数
		rs.absolutePage=p
		allshu=rs.RecordCount     '得到总数
		n=0
		 
		do while not rs.eof and n<rs.pagesize
 acoolmail=rs("username")
 response.write acoolmail
 call MakeHtml()		
		rs.movenext
		n=n+1
        Loop
        rs.close
		end if





Sshu=MaxPerPage*p-MaxPerPage+1
Tshu=Sshu+n


if allshu<Sshu then'如果该生成的小于已生成的
 response.redirect "acool_batch_mail.asp?type=ok&shu="&request("shu")&"&D="&d&"&p="&p+1&""
 response.end
else
 response.write"<meta http-equiv=""refresh"" content=""0;url='acool_batch_mail.asp?type="&request("type")&"&www_888wang_com_sid="&www_888wang_com_sid&"&www_888wang_com_eid="&www_888wang_com_eid&"&shu="&Tshu&"&D="&D&"&p="&p+1&"'"">"
 response.write"<B><BR>共需要发送<font color=ff0000>"&allshu&"</font>个"
 response.write"<br>正在发送:第("&Sshu&"-"&Tshu&")个"
 response.write"<br>已用时("&FormatNumber((timer()-request("D")),2)&")秒</B>"
end if

Sub MakeHtml()
Response.Write "<iframe src='acool_batch_mail_send.asp?id="&id&"&acoolmail="&acoolmail&"' width=90% height=35px></iframe>"

end Sub

else

'shu=50
if request("type")="ok" then
response.write"<br><br>发送成功:共发送<font color=""#FF0000"">"&allshu&"</font>个<BR>总费时<font color=""#FF0000"">"&FormatNumber((timer()-request("D")),2)&"</font>秒,完成时间"&Now()&""
		'采集完成，转至生成分类页
end if
end if


if request("type")="save" then

mailinfo=request("mailinfo")
mailtitle=request("mailtitle")

Sql="Select * From acoolmail where id=1"
rs.open Sql,Conn,1,3

  rs("mailinfo")=mailinfo
  rs("mailtitle")=mailtitle
  rs.update
  rs.close
    mailinfo1=mailinfo
  mailtitle1=mailtitle
end if 
  
set rs=nothing
conn.close
set conn=nothing
%>
<div>
<form name=pid method="post" action="acool_batch_mail.asp?type=save">
  <p>标题
    <input name="mailtitle" type="text" value="<%=mailtitle1%>" size="80" />
      <br />
    ↓邮　件　内　容↓<br>
  <textarea name="mailinfo" cols="100" rows="30" id="mailinfo"><%=mailinfo1%>
</textarea>
  <br />
  <input type="submit" name="Submit" value="保存邮件">
  </p>
  <p><a href="acool_batch_mail.asp?type=all">群发邮件</a></p>
  <p>&nbsp;    </p>
</form>
</div>
</body>
</html>
