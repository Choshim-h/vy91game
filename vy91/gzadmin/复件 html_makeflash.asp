<!--#include file="conn.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="../inc/function_www_888wang_com.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'============================================
'非常感谢你使用888网(www.888wang.com)的网站程序
'888网，三年专业娱乐网站开发,大量数据，自动采集
'欢迎老客户购买其它网站程序，完善的老客户优惠措施
'此程序制用人:888网,客服QQ：56566918
'为了您享受良好的技术支持,请保留此信息.
%>

<%
'定义模板,如明不明白之处，请联系[888网]客服，888网提示您，请在官方网站www.888wang.com购买,不是商业用户将不提供技术支持
mb="/mb/play.html"

if request("id")<>"" then
requestClassID=request("id")
'------------------大菜单

Set Rsadd=Server.Createobject("Adodb.Recordset")
Sql="select id,name,classid from class where classid='0'"
Rsadd.open Sql,Conn,1,3
Do While not Rsadd.Eof
name=replace(rsadd("name"),"类类","类")
top=top&"<li><a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>"&name&"</a></li>"
Rsadd.Movenext
Loop
Rsadd.Close
Set Rsadd=nothing
top=replace(top,"<a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>","<a class='menu2' href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html'>")


'--------------------------------------主体开始,www.888wang.com制作
Set Rs=Server.Createobject("Adodb.Recordset")


'-------------------------------top2开始>>
			
Sql="select id,name,classid from class where classid<>0 order by id asc"

rs.open Sql,Conn,1,3
Do While not rs.Eof
name=rs("name")
id2=rs("id")
top2=top2&"<li><a href='/"&makeUrl_class&"/"&Replace(name," ","_")&"_1.html' target='_blank'>"&name&"</a></li>"
rs.Movenext
Loop
rs.Close



'------------------------------------推荐小游戏图片

Sql="select top 10 id,flashname,spic,hits from flash a where  hits>1000 order by newid()"
Rs.open Sql,Conn,1,3
i=0
Do While not Rs.Eof
tjxyx=tjxyx&"<li><a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' target='_blank'><img src='/flashspic/"&rs("spic")&"' alt='"&rs("flashname")&"'/><span>"&left(rs("flashname"),20)&"</span></a></li>"
rs.movenext
loop
rs.close



if sqlConn=0 then
Sql="Select flash.id,flashname,flashurl,nclass,flash.classid,caozuo,flashwidth,flashheight,classname,pic,size,sj,body,tj,hits,hot,[user],zz,geshou,isclass,ysid,love,nolove,url,class.name From flash,class where Cint(nclass)=class.id and flash.ID="&requestClassID '查出一级分类名

else

Sql="Select flash.id,flashname,flashurl,nclass,flash.classid,caozuo,flashwidth,flashheight,classname,pic,size,sj,body,tj,hits,hot,[user],zz,geshou,isclass,ysid,love,nolove,url,class.name From flash,class where nclass=class.id and flash.ID="&requestClassID '查出一级分类名
end if
'response.Write(sql)
'response.End()

set rs = Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
	if NOT rs.EOF then
		id=rs("id")
		flashname=rs("flashname")
		flashurl=rs("flashurl")
		classname=rs("classname")
		classid=rs("classid")
		pic=rs("pic")
		zz=rs("zz")
		geshou=rs("geshou")
		body=rs("body")
		hot=rs("hot")
		hits=rs("hits")
		nclass=rs("nclass")
			if hits=null then 
			hits=0
			end if
		sj=rs("sj")
		user=rs("user")
		url=rs("url")
		caozuo=rs("caozuo")
		flashwidth=rs("flashwidth")
		flashheight=rs("flashheight")
	end if
nclassName=replace(rs("name"),"类类","类")
Rs.Close



classLink="/"&makeUrl_class&"/"&Replace(nclassName," ","_")&"_1.html" '小类链接
nclassLink="/"&makeUrl_class&"/"&Replace(nclassName," ","_")&"_1.html" '大类链接

dim backFlashLink,backFlashName,nextFlashLink,nextFlashName
'上一个小游戏---------------------------
Sql="Select id,flashname From flash where ID="&requestClassID-1
Rs.open Sql,Conn,1,1
	if not rs.eof then
		backFlashLink="/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html"
		backFlashName=rs("flashname")
	else
		backFlashLink="#"
		backFlashName="上面没有flash了"
	end if
rs.close

'下一个小游戏---------------------------
Sql="Select id,flashname From flash where ID="&requestClassID+1
Rs.open Sql,Conn,1,1
	if not rs.eof then
		nextFlashLink="/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html"
		nextFlashName=rs("flashname")
	else
		nextFlashLink="#"
		nextFlashName="下面没有flash了"
	end if
rs.close

'------------------top15小游戏
Sql="select top 14 id,flashname,spic,classid,classname from flash where classid='"&classid&"' order by newid()"
Rs.open Sql,Conn,1,3
i=0
Do While not Rs.Eof
i=i+1
top15=top15&"<div id='site_hotgame_p'><a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' title='"&rs("flashname")&"' target='_blank'><img src='/flashspic/"&rs("spic")&"'/></a><div class='site_hotgame_t'><a href='/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","_")&".html' target='_blank'>"&left(rs("flashname"),17)&"</a></div></div>"
if i>=77 then exit do
rs.movenext
loop
rs.close

 '==============常用标签start=================
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
	 

	 '==========常用标签end==============

'pencat=replace(pencat,"<!top!>",top)
'pencat=replace(pencat,"<!classname!>",classname)
'pencat=replace(pencat,"<!pic!>",pic)
'pencat=replace(pencat,"<!id!>",id)
'pencat=replace(pencat,"<!flashname!>",flashname)
'pencat=replace(pencat,"<!sj!>",sj)
'pencat=replace(pencat,"<!user!>",user)
'pencat=replace(pencat,"<!hits!>",hits)
'pencat=replace(pencat,"<!flashurl!>",flashurl)
'pencat=replace(pencat,"<!zz!>",zz)
'pencat=replace(pencat,"<!geshou!>",geshou)
'pencat=replace(pencat,"<!hot!>",hot)
'pencat=replace(pencat,"<!body!>",body)


'==========页页标签开始==============
	 dim replaceString2(29,2)
	 replaceString2(0,0)="<!top!>"
	 replaceString2(0,1)=top
	 replaceString2(1,0)="<!pic!>"
	 replaceString2(1,1)=pic
	 replaceString2(2,0)="<!classname!>"
	 replaceString2(2,1)=classname
	 replaceString2(3,0)="<!id!>"
	 replaceString2(3,1)=id
	 replaceString2(4,0)="<!flashname!>"
	 replaceString2(4,1)=flashname
	 replaceString2(5,0)="<!sj!>"
	 replaceString2(5,1)=sj
	 replaceString2(6,0)="<!user!>"
	 replaceString2(6,1)=user
	 replaceString2(7,0)="<!hits!>"
	 replaceString2(7,1)=hits
	 replaceString2(8,0)="<!flashurl!>"
	 replaceString2(8,1)=flashurl
 
	 replaceString2(9,0)="<!zz!>"
	 replaceString2(9,1)=zz
	 replaceString2(10,0)="<!geshou!>"
	 replaceString2(10,1)=geshou
	 replaceString2(11,0)="<!hot!>"
	 replaceString2(11,1)=hot
	 replaceString2(12,0)="<!body!>"
	 replaceString2(12,1)=body
	 replaceString2(13,0)="<!top15!>"
	 replaceString2(13,1)=top15
	 replaceString2(14,0)="<!classLink!>"
	 replaceString2(14,1)=classLink
	 replaceString2(15,0)="<!url!>"
	 replaceString2(15,1)=url
	 
	 replaceString2(16,0)="<!backFlashLink!>"
	 replaceString2(16,1)=backFlashLink
	 replaceString2(17,0)="<!backFlashName!>"
	 replaceString2(17,1)=backFlashName
	 replaceString2(18,0)="<!nextFlashLink!>"
	 replaceString2(18,1)=nextFlashLink
	 replaceString2(19,0)="<!nextFlashName!>"
	 replaceString2(19,1)=nextFlashName
	 
	 replaceString2(20,0)="<!flashnameencode!>"
	 replaceString2(20,1)=Server.URLEncode(flashname)
	 
	 replaceString2(21,0)="<!nclassLink!>"
	 replaceString2(21,1)=nclassLink
	 replaceString2(22,0)="<!nclassName!>"
	 replaceString2(22,1)=nclassName
	 
	 replaceString2(23,0)="<!palyLink!>"
	 replaceString2(23,1)="/"&makeUrl_flash_load&"/"&left(md5(requestClassID&md5Str),1)&""&requestClassID
	 
	 replaceString2(24,0)="<!caozuo!>"
	 replaceString2(24,1)=caozuo
	 replaceString2(25,0)="<!flashwidth!>"
	 replaceString2(25,1)=flashwidth
	 replaceString2(26,0)="<!flashheight!>"
	 replaceString2(26,1)=flashheight	 
	 replaceString2(27,0)="<!tjxyx!>"
	 replaceString2(27,1)=tjxyx
	 replaceString2(28,0)="<!top2!>"
	 replaceString2(28,1)=top2

	 
	 '==========页页标签结束==============
	 '888网(www.888wang.com)，专业娱乐网站程序，大量数据，自动更新，适合快速建站
	 mbUrl=""&makeUrl_flash_load&"/"&left(md5(requestClassID&md5Str),1)&""&requestClassID&"/index.html"
	
	call createFile(mbUrl,mb,replaceString,replaceString2)

'Set fso = Server.CreateObject("Scripting.FileSystemObject")
'Set fout = fso.CreateTextFile(server.mappath("../flash/"&request("id")&".html"))
'fout.Write pencat
'fout.close
'response.write "生成成功《"&flashname&"》"
'生成到哪里
 Conn.Execute("update MakeConfig set PlayMake="&requestClassID)

End If '如果ID不为空才生成
%>

