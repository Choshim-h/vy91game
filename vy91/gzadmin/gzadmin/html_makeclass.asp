<!--#include file="conn.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="../inc/function_www_888wang_com.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<%
'============================================
'�ǳ���л��ʹ��888��(www.888wang.com)����վ����
'888��������רҵ������վ����,�������ݣ��Զ��ɼ�
'��ӭ�Ͽͻ�����������վ�������Ƶ��Ͽͻ��Żݴ�ʩ
'�˳���������:888��,�ͷ�QQ��56566918
'Ϊ�����������õļ���֧��,�뱣������Ϣ.
%>
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
If Request("Page")<>"" Then
	If Cint(Request("Page"))<1 Then
		CurrentPage=1
	Else
		CurrentPage=Cint(Request("Page"))
	End If
End If

If Request("pageBig")<>"" Then
	pageBig=Cint(Request("pageBig"))
End If


make =request("make")
'����ģ��,����������֮��������ϵ[888��]�ͷ���888����ʾ�������ڹٷ���վwww.888wang.com����,������ҵ�û������ṩ����֧��
mb="/mb/class.html"

if request("nclass")<>"" then
requestClassID=request("nclass")

Set Rs=Server.Createobject("Adodb.Recordset")

Sql="Select id,[name],classid From class where ID="&requestClassID
Rs.open Sql,Conn,1,1
classname=replace(rs("name"),"����","��")
Rs.Close


Sql="select count(id) from flash where nclass='"&requestClassID&"'"
Rs.open Sql,Conn,1,1
countBig=rs(0)
Rs.Close

'------------------��˵�

Sql="select id,name,classid from class where classid='0'"
rs.open Sql,Conn,1,3
Do While not rs.Eof
name=replace(rs("name"),"����","��")
top=top&"<li><a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>"&name&"</a></li>"
rs.Movenext
Loop
rs.Close
top=replace(top,"<a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>","<a class='menu2' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>")

'-------------------------------top2��ʼ>>
			
Sql="select id,name,classid from class where classid='"&requestClassID&"' order by id asc"

rs.open Sql,Conn,1,3
Do While not rs.Eof
name=replace(rs("name"),"����","��")
id2=rs("id")
set rs3 = server.CreateObject("ADODB.RecordSet")
			sql3="select count(id) from flash where classid='"&id2&"'"
			
			rs3.open sql3,conn,1,1
			countSmall=rs3(0)
			rs3.close
			set rs3=nothing
			
top2=top2&"<li><a href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>"&name&"</a>("&countSmall&")</li>"
rs.Movenext
Loop
rs.Close

'------------------top2����

'------------------top15С��Ϸ
Sql="select top 20 id,flashname,nclass,classid,classname from flash where nclass='"&requestClassID&"' order by id desc"
Rs.open Sql,Conn,1,3
i=0
Do While not Rs.Eof
i=i+1
top15=top15&"<li><span><a href='/"&makeUrl_class&"/"&Replace(classname," ","_")&"_1.html'>"&rs("classname")&"</a></span>"&i&"��<a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' target='_blank&play'>"&rs("flashname")&"</a></li>"
if i>=20 then exit do
rs.movenext
loop
rs.close
'------------------�����������
Sql="select top 20 id,flashname,nclass,classid,classname,love from flash where nclass='"&requestClassID&"' order by love desc"
Rs.open Sql,Conn,1,3
i=0
Do While not Rs.Eof
i=i+1
tj15=tj15&"<li><span><a href='#'>����"&rs("love")&"</a></span><a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' target='_blank&play'>"&rs("flashname")&"</a></li>"
if i>=20 then exit do
rs.movenext
loop
rs.close
else
response.write "���Ϊ�գ���ѡ�����������"
response.end
end if
	  
'------------------------------------flash����

Rs.open("select id,flashname,nclass,classid,classname,pic from flash where nclass='"&requestClassID&"' order by id Desc"),Conn,1,1
If Rs.Eof And Rs.bof Then
body=body&"û���ҵ��κ�flash��Ϸ"
PageCount1=1
Totalnumber=0
Else
Maxperpage=28
Rs.Pagesize=MaxperPage
PageCount1=Rs.PageCount
rs.absolutePage=CurrentPage
Totalnumber=Rs.RecordCount
N=0

'��ҳ����

plist_bottom=plist_bottom&"����"&Totalnumber&"��&nbsp;"
plist_bottom=plist_bottom&"[��"&CurrentPage&"ҳ/��"&PageCount1&"ҳ]&nbsp;"
Pageno=CurrentPage
If cint(Pageno)>1 Then
plist_bottom=plist_bottom&"<a href='../"&left(md5(requestClassID&md5Str),1)&requestClassID&"_1/' title=""��ҳ"">"
End If
plist_bottom=plist_bottom&"[��ҳ]</a>&nbsp;"
If Cint(Pageno)>1 Then
plist_bottom=plist_bottom&"<a href='../"&left(md5(requestClassID&md5Str),1)&requestClassID&"_"&Pageno-1&"/' title=""��һҳ"">"
End If
plist_bottom=plist_bottom&"[��һҳ]</a>&nbsp;"
If Cint(Pageno)< PageCount1 Then
plist_bottom=plist_bottom&"<a href='../"&left(md5(requestClassID&md5Str),1)&requestClassID&"_"&Pageno+1&"/' title=""��һҳ"">"
End If
plist_bottom=plist_bottom&"[��һҳ]</a>&nbsp;"
If Cint(Pageno)< Pagecount1 Then
plist_bottom=plist_bottom&"<a href='../"&left(md5(requestClassID&md5Str),1)&requestClassID&"_"&PageCount1&"/' title=""βҳ"">"
End If
plist_bottom=plist_bottom&"[βҳ]</a>&nbsp;"
plist_bottom=plist_bottom&"����&nbsp;<select name=""select"" onchange=""javascript:window.location.href=this.options[this.selectedIndex].value"">"
For I=1 to PageCount1
Selected=""
If Currentpage=I Then
Selected=" Selected"
End If
plist_bottom=plist_bottom&"<option value='../"&left(md5(requestClassID&md5Str),1)&requestClassID&"_"&I&"/'"&Selected&">��"&I&"ҳ</option>"
Next
plist_bottom=plist_bottom&"</select>"

'��ҳ��
do while not rs.eof and N<Rs.PageSize
Name=Rs("nclass")'����ID
Total=Rs.RecordCount

body=body&"<div class='gameList'>"
body=body&"<div class='listLeft'> <a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html'  target='_blank&play'><img class='listLeftImg' src='/flashpic/"&rs("pic")&"'/></a>"
body=body&"<div class='margin_top5'>"
body=body&"<ul>"
body=body&"<li><a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' target='_blank&play'>"&left(rs("flashname"),10)&"</a></li>"
body=body&"<li>���<a href='/"&makeUrl_class&"/"&Replace(classname," ","_")&"_1.html'>"&rs("classname")&"</a></li>"
body=body&"</ul>"
body=body&"</div>"
body=body&"</div>"
body=body&"</div>"

Rs.Movenext
N=N+1
Loop
Rs.Close
End If

 '==============���ñ�ǩstart=================
	 dim replaceString(13,2)
	 replaceString(0,0)="{webName}"
	 replaceString(0,1)=webName
	 replaceString(1,0)="{webUrl}"
	 replaceString(1,1)=webUrl
	 replaceString(2,0)="{webemail}"
	 replaceString(2,1)=webemail
	 replaceString(3,0)="{zzname}"
	 replaceString(3,1)=zzname
	 replaceString(4,0)="{webqq}"
	 replaceString(4,1)=webqq	 
	 replaceString(5,0)="{makeUrl}"
	 replaceString(5,1)=makeUrl
	 replaceString(6,0)="{keywords}"
	 replaceString(6,1)=keywords
	 replaceString(7,0)="{descriptions}"
	 replaceString(7,1)=descriptions
	 replaceString(8,0)="{record}"
	 replaceString(8,1)=record
	 replaceString(9,0)="{copyright}"
	 replaceString(9,1)=copyright
	 replaceString(10,0)="{countCode}"
	 replaceString(10,1)=countCode
	 replaceString(11,0)="{makeUrl_class}"
	 replaceString(11,1)=makeUrl_class
	 replaceString(12,0)="{makeUrl_flash}"
	 replaceString(12,1)=makeUrl_flash
	 '==========���ñ�ǩend==============

'pencat=replace(pencat,"<!top1!>",top)
'pencat=replace(pencat,"<!top15!>",top15)
'pencat=replace(pencat,"<!tj15!>",tj15)
'pencat=replace(pencat,"<!classname!>",classname)
'pencat=replace(pencat,"<!top2!>",top2)
'pencat=replace(pencat,"<!body!>",body)
'pencat=replace(pencat,"<!plist_bottom!>",plist_bottom)
'pencat=replace(pencat,"<!specialclass!>",specialclass)

	'==========ҳҳ��ǩ��ʼ==============
	 dim replaceString2(9,2)
	 replaceString2(0,0)="<!top!>"
	 replaceString2(0,1)=top
	 replaceString2(1,0)="<!top15!>"
	 replaceString2(1,1)=top15
	 replaceString2(2,0)="<!classname!>"
	 replaceString2(2,1)=classname
	 replaceString2(3,0)="<!top2!>"
	 replaceString2(3,1)=top2
	 replaceString2(4,0)="<!body!>"
	 replaceString2(4,1)=body
	 replaceString2(5,0)="<!plist_bottom!>"
	 replaceString2(5,1)=plist_bottom
	 replaceString2(6,0)="<!specialclass!>"
	 replaceString2(6,1)=specialclass
	 replaceString2(7,0)="<!countBig!>"
	 replaceString2(7,1)=countBig
	 replaceString2(8,0)="<!tj15!>"
	 replaceString2(8,1)=tj15
	 '==========ҳҳ��ǩ����==============
	 '888��(www.888wang.com)��רҵ������վ���򣬴������ݣ��Զ����£��ʺϿ��ٽ�վ
	 mbUrl=""&makeUrl_class&"/"&left(md5(requestClassID&md5Str),1)&""&requestClassID&"_"&CurrentPage&"/index.html"
	' Res(mbUrl)
	call createFile(mbUrl,mb,replaceString,replaceString2)
 	
'Set fso = Server.CreateObject("Scripting.FileSystemObject")
'Set fout = fso.CreateTextFile(server.mappath("../class/"&requestClassID&"_"&CurrentPage&".html"))
'fout.Write pencat
'fout.close
If CurrentPage<PageCount1 Then
Response.Write "��<b>���ɵ� <font color=#FF0000> "&CurrentPage&" </font> ҳ</b><br>��<b>���� <font color=#FF0000>"&PageCount1&"</font> ҳ</b>"
Response.Write "<Meta http-equiv=Refresh content='0; URL=Html_MakeClass.asp?nclass="&requestClassID&"&page="&Cint(CurrentPage+1)&"&make="&make&"&pageBig="&Cint(pageBig)&"'>"
End If
If CurrentPage=PageCount1 Then
Response.Write "<body>"
Response.Write "<p><br>"
Response.Write "��<b>��ID"&requestClassID&"�ɹ������� <font color=""#FF0000"">"&CurrentPage&"</font> ҳ</b><br>"
Response.Write "�����๲�� <font color=""#ff0000"">"&PageCount1&"</font> ҳ"

if make="big" and pageBig<>"" then
Response.Write "<Meta http-equiv=Refresh content='0; URL=Html_MakeClassAll.asp?make="&make&"&pageBig="&Cint(pageBig+1)&"'>"
response.End()
end if
Response.Write "</p>"
Response.Write "</body>"
End If
set rs=nothing
Conn.Close
Set Conn=nothing
%>

