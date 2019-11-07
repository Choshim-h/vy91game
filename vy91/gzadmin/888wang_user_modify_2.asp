<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<%
id=request.QueryString("id")
act=request("act")
set rs=server.CreateObject("ADODB.RecordSet")
if act="edit" then
	username=trim(request.form("username"))
	password=trim(request.form("password"))
	Sex=trim(request.form("Sex"))
	Email=trim(request.form("Email"))
	Tel=trim(request.form("Tel"))
	Name=trim(request.form("Name"))
	Address=trim(request.form("Address"))
	Shenfenzheng=trim(request.form("Shenfenzheng"))
	oicq=trim(request.form("oicq"))
	
	question=trim(request.form("question"))
	answer=trim(request.form("answer"))
	message=trim(request.form("message"))
	userScore=trim(request.form("userScore"))
	love=trim(request.form("love"))
	pic=trim(request.form("pic"))
	
	if username="" or password=""  then
		errmsg="<br>用户名称，密码和性别都不能为空！</li>"
		call error()
		Response.End 
	end if
	
	if question="" or answer=""  then
		errmsg="<br>提示问题与答案不能为空！</li>"
		call error()
		Response.End 
	end if
	
	sql="select * from [user] where id="& request("id")
	rs.open sql,conn,1,3
	if not rs.eof then
	
		rs("Username")=username
		rs("Password")=password
		rs("Sex")=Sex

		if Email="" then
			rs("Email")=null
		else
			rs("Email")=Email
		end if

		if Tel="" then
			rs("Tel")=null
		else
			rs("Tel")=Tel
		end if

		if Name="" then
			rs("Name")=null
		else
			rs("Name")=Name
		end if

		if Address="" then
			rs("Address")=null
		else
			rs("Address")=Address
		end if

		if Shenfenzheng="" then
			rs("Shenfenzheng")=null
		else
			rs("Shenfenzheng")=Shenfenzheng
		end if
		if oicq="" then
			rs("oicq")=null
		else
			rs("oicq")=oicq
		end if
		
		rs("question")=question
		rs("answer")=answer
		rs("message")=message
		rs("love")=love
		rs("userScore")=userScore
		rs("pic")=pic
		rs.update
	end if	
	rs.close
	
end if
set rs=nothing
conn.close
set conn=nothing
response.write ""
response.redirect "888wang_user_main.asp"
%>

