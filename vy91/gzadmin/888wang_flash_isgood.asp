 <!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
id=trim(request.querystring("id"))
act=request("act")
if act="SetIsGood" then
set rs=server.createobject("adodb.recordset")

		sql="select tj from flash where id="&request("id") 
		
		rs.open sql,conn,1,3
		if not rs.EOF then
			if rs("tj")="yes" then
				rs("tj")="no"
			else
				rs("tj")="yes"
			end if
			rs.update
		end if
		rs.close

end if

if act="SetIsClass" then
set rs=server.createobject("adodb.recordset")

		sql="select isClass from flash where id="&request("id") 
		rs.open sql,conn,1,3
		if not rs.EOF then
			if rs("isClass")="1" then
				rs("isClass")="0"
			else
				rs("isClass")="1"
			end if
			rs.update
		end if
		rs.close

end if

	set rs=nothing
	conn.close
	set conn=nothing
response.write "<script language=javascript>location.href='javascript:history.go(-1)';</script>"
%>


