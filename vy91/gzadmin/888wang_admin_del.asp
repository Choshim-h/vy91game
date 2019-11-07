
<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
Conn.Execute"Delete From admin where ID="&Request.QueryString("id")
conn.close
set conn=nothing
response.redirect "888wang_admin.asp"
response.end
%>

