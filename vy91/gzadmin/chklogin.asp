<!--#include file="conn.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="../inc/md5.asp"-->

<%
username=Checkin(trim(Request.form("username")))
password = md5(Trim(Replace(Request("password"), "'", "")))
VerifyCode = Replace(Trim(Request("VerifyCode")),"'","")

if UserName = "" or  PassWord = "" then
	Response.Write("<script>alert(""����д�����û���������"");location.href=""login.asp"";</script>")
	Response.End
end if
if request("VerifyCode") = "" then
	Response.Write("<script>alert(""����д��֤��"");location.href=""login.Asp"";</script>")
	Response.End
	
if  VerifyCode <> CStr(Session("GetCode"))  then 
	Response.Write("<script>alert(""��֤�����"");location.href=""login.Asp"";</script>")
	Response.End
end if

elseif Session("GetCode") = "9999" then
	Session("GetCode")=""
elseif Session("GetCode") = "" then
	Response.Write("<script>alert(""����\n�벻Ҫ�ظ��ύ���������µ�¼�뷵�ص�¼ҳ�档\n���غ���ˢ�µ�¼ҳ�������������ȷ����Ϣ"");location.href=""login.asp"";</script>")
	Response.End
elseif cstr(Session("GetCode"))<>cstr(Trim(Request("VerifyCode"))) then
	Response.Write("<script>alert(""����\n�������ȷ�����ϵͳ�����Ĳ�һ�£����������롣\n���غ���ˢ�µ�¼ҳ�������������ȷ����Ϣ"");location.href=""login.asp"";</script>")
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
	errmsg="��������ȷ�Ĺ���Ա���ֺ����룡"
	call error()
	Response.End 
end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>


