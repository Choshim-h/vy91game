<!--#include file="conn.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="../inc/function_www_888wang_com.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>

<%
'ȡ�ü���ͼ
dim indexPicNum,temp
temp=""
indexPicNum=request("indexPicNum")



for i=1 to indexPicNum
	temp=temp&"$$$"
	temp=temp&"%%%"&request("indexPicUrl"&(i))&"%%%"&request("indexPicLink"&(i))&"%%%"&request("indexPicTitle"&(i))
next

'�������ݿ⣬��forѭ��д�����ݿ�
set rs = createobject("ADODB.recordset")
SQL = "select top 1 indexPic from system"
rs.open SQL,conn,3,3
if not rs.eof then
rs("indexPic")=temp
rs.update
end if
rs.close
set rs=nothing

'������ҳ
call createFile_asp("adList.html","/mb/adList_mb.asp")
response.write("<script>alert('��ҳ����ͼƬ���ĳɹ�,��������/adList.html');location.href='888wang.com_indexPic.asp';</script>")
%>

