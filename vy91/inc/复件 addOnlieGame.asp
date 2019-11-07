<!--#include file="../conn.asp"-->
<%
flashID=request.QueryString("id")
onlieGame=request.QueryString("flashName")
ip=request.ServerVariables("LOCAL_ADDR")
userName=request.cookies("888wang")("username")

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select onlieGame,userName,ip,flashID,addDate from onliegame where onlieGame='"&onlieGame&"' and userName='"&userName&"' and ip='"&ip&"' "
rs.open sql,conn,3,3
if rs.eof then
rs.addnew
end if
rs("onlieGame")=onlieGame
rs("userName")=userName
rs("ip")=ip
rs("flashID")=flashID
rs("addDate")=now()
rs.update
rs.close
set rs=nothing

sub del30
curDate=now()
set flag=conn.execute "delete onlieGame where DATEDIFF(n, addDate, '"&curDate&"')>1"
flag.close
set flag=nothing
end sub
%>