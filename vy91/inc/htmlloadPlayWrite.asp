<!--#include file="../conn.asp" -->
<%
id = request("id")
'ͶƱʱ��Cookies��¼��flashID��ip,ͨ��ip��flashID�ж��Ƿ���ͶƱ
ip = Request.ServerVariables("REMOTE_ADDR")

set rs=server.createobject("adodb.recordset")
	sql="select hits,love from flash where id = "&id
	rs.open sql,conn,1,3
	if not rs.eof then
	hits=rs("hits")
	rs.close
	set rs=nothing
	end if
	

%>
document.write("<script language=javascript>ajax_Plays.innerHTML='<%=hits%>';</script>")
<%	
	conn.close
	set conn=nothing
%>