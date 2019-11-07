<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
</head>

<body>
<%
If Request("Page")<>"" Then
	If Cint(Request("Page"))<1 Then
		CurrentPage=1
	Else
		CurrentPage=Cint(Request("Page"))
	End If
else
		CurrentPage=1
End If

set rs=server.createobject("adodb.recordset")
        rs.open ("select top 10 * from userinfo where username not like '%acool.com%' order by id asc"),conn,1,1
		If Rs.Eof And Rs.bof Then
		
		else

		Maxperpage=2
		rs.Pagesize=MaxperPage
		PageCount1=rs.PageCount
		rs.absolutePage=CurrentPage
		allshu=rs.RecordCount
		n=0

			

		do while not rs.eof and n<rs.pagesize
		
				acoolmail=rs("username")
		response.write allshu&"<br>"
		response.write PageCount1&"<br>"
		response.write CurrentPage&"<br>"
		
				  call MakeHtml()
		rs.movenext
		n=n+1
        Loop
        rs.close
		
		
		acoolmail=request("acoolmail")
Response.Write acoolmail&"发送成功"

If CurrentPage<PageCount1 Then
Response.Write "<Meta http-equiv=Refresh content='0; URL=acool_batch_mail_send1.asp?page="&Cint(CurrentPage+1)&"'>"
End If
set rs=nothing
conn.close
set conn=nothing
End If
Sub MakeHtml()

Response.Write "<iframe src='acool_batch_mail_send.asp?id="&id&"&acoolmail="&acoolmail&"' width=90% height=35px></iframe>"

end Sub
%>


</body>
</html>
