<!--#Include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'===========�뱣����Ȩ��Ϣ,���ȥ���������ṩ��ط���==============
' 888������ϵͳ V8.1 ��
' �ܷ���ַ��www.888wang.com
' ����֧��: QQ:56566918
' �ͷ�����www.888wang.com��վ�Ŀͷ�QQ
' �绰:15918529718
'==================================================================
%>
<%
ID=request.QueryString("id")
SiteName=trim(request.form("SiteName"))
SiteUrl=trim(request.form("SiteUrl"))
LogoUrl=trim(request.form("LogoUrl"))
SiteAdmin=trim(request.form("SiteAdmin"))
SiteIntro=trim(request.form("SiteIntro"))
act=request("act")
name=trim(request.form("submit"))
founderr=false

if act="add" or act="edit" then
	if trim(SiteName)="" then
		errmsg=errmsg+"<br>"+"<li>վ������Ϊ�գ�"
		founderr=true
	end if
	if trim(SiteUrl)="" then
		errmsg=errmsg+"<br>"+"<li>��ַ����Ϊ�գ�"
		founderr=true
	end if

	set rs=server.createobject("adodb.recordset")
	if act="edit" then sql="select * from FriendSite where ID="&ID
	if act="add" then sql="select * from FriendSite"
	rs.open sql,conn,1,3
	if act="edit" then
		if rs.eof then
			errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
			call error()
			Response.End 
		end if
	end if
	if act="add" then
		rs.addnew
	end if
	rs("SiteName")=SiteName
	rs("SiteUrl")=SiteUrl
	if SiteAdmin="" then
		rs("SiteAdmin")=""
	else
		rs("SiteAdmin")=SiteAdmin
	end if
	if LogoUrl="" then
		rs("LogoUrl")=""
	else
		rs("LogoUrl")=LogoUrl
	end if
	if SiteIntro="" then
		rs("SiteIntro")=""
	else
		rs("SiteIntro")=SiteIntro
	end if
	rs.update
	rs.close
	set rs=nothing
elseif act="del" then
	sql="delete from FriendSite where id=" & ID
	conn.execute sql
	 Response.Redirect "888wang_LinkSite.asp"
elseif act="set" then
	set rs=server.createobject("adodb.recordset")
	sql="Select isOK from FriendSite where IsOK='1'"
	rs.open sql,conn,1,3
	if not rs.eof then
		do while not rs.eof
			rs("IsOK")="0"
			rs.update
		rs.movenext
		loop
	end if
	rs.close

	Checked=replace(request("checked")," ","")
	CheckedNum=Split(Checked,",")
	HowLong=UBound(checkedNum)
	for i=0 to HowLong
		sql="Select IsOK from FriendSite where ID="&CheckedNum(i)
		rs.open sql,conn,1,3
		if not rs.EOF then
			do while not rs.EOF 
				rs("isOK")="1"
				rs.update
			rs.MoveNext
			loop
		end if
		rs.close
	next
	set rs=nothing
elseif act="SetIsGood" then
	set rs=server.createobject("adodb.recordset")
	sql="Select IsGood from FriendSite where ID="&id
	rs.open sql,conn,1,3
	if not rs.EOF then
		if rs("IsGood")="1" then
			rs("IsGood")="0"
		else
			rs("isGood")="1"
		end if
		rs.update
	end if
	rs.close
	set rs=nothing
end if
conn.close
set conn=nothing
if founderr=true then
	call error()
else
        Response.Redirect "888wang_LinkSite.asp"
end if
%>


