<!--#include file="../conn.asp" -->
<%
username = request("username")
url = request.QueryString("url")
ip=request.ServerVariables("REMOTE_ADDR")


Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from TgList where username='"&username&"' and ip='"&ip&"' and adddate='"&date()&"' "
rs.open sql,conn,3,3
if rs.eof then
rs.addnew
end if
rs("username")=username
rs("tgurl")=url
rs("ip")=ip
rs("adddate")=date()
rs("addtime")=now()
rs.update
rs.close
set rs=nothing


%>