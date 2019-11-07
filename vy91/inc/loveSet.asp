<!--#include file="../conn.asp" -->
<%
'投票时用Cookies记录下flashID与ip,通过ip与flashID判断是否已投票
ip = Request.ServerVariables("REMOTE_ADDR")

id = request("id")
ico= request("ico")
if id<>"" and ico<>"" then

set rs=server.createobject("adodb.recordset")
	sql="select hits,love,nolove from flash where id = "&id
	rs.open sql,conn,3,3
	if not rs.eof then
		if ico="love" then
		rs("love")=rs("love")+1
		else
		rs("nolove")=rs("nolove")+1
		end if
	end if
	rs.update
	rs.close
	set rs=nothing
else
	response.write "<script language=javascript>alert('参数错误，请联系统管理员');location.href='javascript:history.go(-1)';</script>"
end if
response.write "<script language=javascript>alert('操作成功，谢谢参与!');location.href='javascript:history.go(-1)';</script>"
%>
