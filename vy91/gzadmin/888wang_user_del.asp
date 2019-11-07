<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<%
Conn.Execute"Delete From [user] where id="&Request.QueryString("id")
response.redirect "888wang_user_main.asp"
response.end
%>

