<!--#include file="conn.asp"-->

<%
id=request("id")
act=request("act")

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
</head>

<body>
<%
if act="isgood" then
	sql="update news set isgood=1 where newsid in("&id&")"
	conn.execute(sql)
end if


if act="isgood2"  then
		set rs=server.createobject("adodb.recordset")
		sql="select isgood from news where newsid="&id
		rs.open sql,conn,1,3
		if not rs.EOF then
			if rs("isgood")=true then
				rs("isgood")=0
			else
				rs("isgood")=1
			end if
			rs.update
		end if
		rs.close
	end if
	
if act="del" then
	sql="delete from newsclass where newsclassid in("&id&")"
	conn.execute(sql)
end if


	set rs=nothing
	conn.close
	set conn=nothing

response.Write("<script>alert('操作完成!');location.href='"&Request.ServerVariables("HTTP_REFERER")&"';</script>")
%>
</body>
</html>
