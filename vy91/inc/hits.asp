<!--#include file="../conn.asp"-->
<%
	id=request.QueryString("id")
	Set rsc = Conn.Execute("update flash set hits=hits+1 where id="&id)
	conn.close
	set conn=nothing

%>
