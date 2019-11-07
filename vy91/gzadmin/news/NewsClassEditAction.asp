<!--#include File="Conn.asp" -->
<%

act=request.Form("act")
'鍙栧緱鏁版嵁


	newsClassName=request("newsClassName")
	addDate=request("addDate")
	seq=request("seq")

Set Rs=Server.Createobject("Adodb.Recordset")

if act="edit" then
	newsClassID=request("newsClassID")
Sql="Select * From newsClass where newsclassid="&newsClassID
Rs.open Sql,Conn,1,3
if not rs.eof then
	rs("newsClassName")=newsClassName
	rs("addDate")=addDate
	rs("seq")=seq
	rs.update
end if
rs.close

end if

if act="add" then
Sql="Select * From newsclass "
Rs.open Sql,Conn,1,3
	rs.addnew
	rs("newsClassName")=newsClassName
	rs("addDate")=addDate
	rs("seq")=seq
	rs("newsParentID")=newsParentID
	rs.update
rs.close
end if
response.write "<script language=javascript>alert('操作成功，转至列表');location.href='newsclass.asp';</script>"

%>