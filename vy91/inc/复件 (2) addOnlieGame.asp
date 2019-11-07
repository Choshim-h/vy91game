<!--#include file="../conn.asp"-->
<%
flashID=request.QueryString("flashID")
onlieGame1=request.QueryString("flashName")
ip=request.ServerVariables("REMOTE_ADDR")
userName=request.cookies("888wang")("username")

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select onlineGame,userName,ip,flashID,addDate from onlineGame where onlineGame='"&onlieGame1&"' and userName='"&userName&"' and ip='"&ip&"' "
rs.open sql,conn,3,3
if rs.eof then
rs.addnew
end if
rs("onlineGame")=onlieGame1
rs("userName")=userName
rs("ip")=ip
rs("flashID")=flashID
rs("addDate")=now()
rs.update
rs.close
set rs=nothing

'sub del30
'curDate=now()
'set flag=conn.execute "delete onlineGame where DATEDIFF(n, addDate, '"&curDate&"')>1"
'flag.close
'set flag=nothing
'end sub
%>