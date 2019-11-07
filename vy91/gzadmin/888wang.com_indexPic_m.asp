<!--#include file="conn.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="../inc/function_www_888wang_com.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>

<%
'取得几个图
dim indexPicNum,temp
temp=""
indexPicNum=request("indexPicNum")



for i=1 to indexPicNum
	temp=temp&"$$$"
	temp=temp&"%%%"&request("indexPicUrl"&(i))&"%%%"&request("indexPicLink"&(i))&"%%%"&request("indexPicTitle"&(i))
next

'链接数据库，用for循环写入数据库
set rs = createobject("ADODB.recordset")
SQL = "select top 1 indexPic from system"
rs.open SQL,conn,3,3
if not rs.eof then
rs("indexPic")=temp
rs.update
end if
rs.close
set rs=nothing

'生成网页
call createFile_asp("adList.html","/mb/adList_mb.asp")
response.write("<script>alert('首页轮显图片更改成功,并已生成/adList.html');location.href='888wang.com_indexPic.asp';</script>")
%>

