<!--#include File="Conn.asp" -->
<%

act=request.Form("act")
'鍙栧緱鏁版嵁

	newsClassID=request("newsClassID")
	newsTitle=request("newsTitle")
	newsurl=request("newsurl")
	newsmiaosu=request("newsmiaosu")
	newsContent=request("newsContent")
	newsPic=request("newsPic")
	
	if request("isComment") = "on" then
		isComment=1
	else 
		isComment=0
	end if
	
	
	
	if request("isActive") = "on" then
		isActive=1
	else 
		isActive=0
	end if
	
	
	addDate=request("addDate")
	hits=request("hits")
	
	if request("isgood") = "on" then
		isgood=1
	else 
		isgood=0
	end if


	
'		response.Write(hits)
'	response.End()

Set Rs=Server.Createobject("Adodb.Recordset")

if act="edit" then
	newsID=request("newsID")
Sql="Select * From news where newsid="&newsID
Rs.open Sql,Conn,1,3
if not rs.eof then
	rs("newsClassID")=newsClassID
	rs("newsTitle")=newsTitle
	rs("newsurl")=newsurl
	rs("newsmiaosu")=newsmiaosu
	rs("newsContent")=newsContent
	rs("newsPic")=newsPic
	rs("isComment")=isComment
	rs("isActive")=isActive
	rs("addDate")=addDate
	rs("hits")=hits
	rs("isgood")=isgood
	rs("userid")=session("AdminID")
	rs.update
end if
rs.close

end if

if act="add" then
Sql="Select * From news "
Rs.open Sql,Conn,1,3
	rs.addnew
	rs("newsClassID")=newsClassID
	rs("newsTitle")=newsTitle
	rs("newsurl")=newsurl
	rs("newsmiaosu")=newsmiaosu
	rs("newsContent")=newsContent
	rs("newsPic")=newsPic
	rs("isComment")=isComment
	rs("isActive")=isActive
	rs("addDate")=addDate
	rs("hits")=hits
	rs("isgood")=isgood
	rs("userid")=session("AdminID")
	rs.update
rs.close
end if
response.write "<script language=javascript>alert('操作成功，转至列表');location.href='news.asp';</script>"

%>