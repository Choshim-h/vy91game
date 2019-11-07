<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="../inc/md5.asp"-->

<%
username=Checkin(trim(Request.form("username")))
password = md5(Trim(Replace(Request("password"), "'", "")))
VerifyCode = Replace(Trim(Request("VerifyCode")),"'","")

if UserName = "" or  PassWord = "" then
	Response.Write("<script>alert(""请填写完整用户名和密码"");location.href=""login.asp"";</script>")
	Response.End
end if
if request("VerifyCode") = "" then
	Response.Write("<script>alert(""请填写验证码"");location.href=""login.Asp"";</script>")
	Response.End
	
if  VerifyCode <> CStr(Session("GetCode"))  then 
	Response.Write("<script>alert(""验证码错误"");location.href=""login.Asp"";</script>")
	Response.End
end if

elseif Session("GetCode") = "9999" then
	Session("GetCode")=""
elseif Session("GetCode") = "" then
	Response.Write("<script>alert(""错误：\n请不要重复提交，如需重新登录请返回登录页面。\n返回后请刷新登录页面后重新输入正确的信息"");location.href=""login.asp"";</script>")
	Response.End
elseif cstr(Session("GetCode"))<>cstr(Trim(Request("VerifyCode"))) then
	Response.Write("<script>alert(""错误：\n您输入的确认码和系统产生的不一致，请重新输入。\n返回后请刷新登录页面后重新输入正确的信息"");location.href=""login.asp"";</script>")
	Response.End
end if

set rs = server.createobject("adodb.recordset")
sql="select id,oskey,LoginTimes,LoginTime,LoginIP from admin where username='"&username&"'and password='"&password&"'"
rs.open sql,conn,3,3
if not rs.EOF then
	rs("LoginTimes")=rs("LoginTimes")+1
	rs("LoginTime")=now()
	rs("LoginIP")=Request.ServerVariables("REMOTE_ADDR")
	rs.Update

	Session("AdminID")=rs("id")
	Session("IsAdmin")=true
	Session("KEY")=rs("oskey")
    	Session.timeout=1200
	Response.Redirect ("Manage.asp")
else
	errmsg="请输入正确的管理员名字和密码！"
	call error()
	Response.End 
end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>


