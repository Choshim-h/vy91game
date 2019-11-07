 <!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
id=trim(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
if act<>"edithits" then
act=request("act")
end if

if act="edithits" then
		hits=request.Form("hits")
		sql="select hits from flash where id="&request("id") 
		rs.open sql,conn,1,3
		if not rs.EOF then
			rs("hits")=hits			
			rs.update
		end if
		rs.close
	else
		conn.close
		set conn=nothing
		response.Write "<li>操作错误！请联系管理员</li>"
		Response.End
	end if
	set rs=nothing
	conn.close
	set conn=nothing
response.write "<script language=javascript>location.href='javascript:history.go(-1)';</script>"
%>


