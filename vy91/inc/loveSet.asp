<!--#include file="../conn.asp" -->
<%
'ͶƱʱ��Cookies��¼��flashID��ip,ͨ��ip��flashID�ж��Ƿ���ͶƱ
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
	response.write "<script language=javascript>alert('������������ϵͳ����Ա');location.href='javascript:history.go(-1)';</script>"
end if
response.write "<script language=javascript>alert('�����ɹ���лл����!');location.href='javascript:history.go(-1)';</script>"
%>
