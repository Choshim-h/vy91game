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
mb="/mb/m_game_load.html"

if request("id")<>"" then
requestClassID=request("id")
'------------------大菜单

Set Rsadd=Server.Createobject("Adodb.Recordset")
Sql="select id,name,classid from class where classid='0'"
Rsadd.open Sql,Conn,1,3
Do While not Rsadd.Eof
name=replace(rsadd("name"),"类类","类")
top=top&"<li><a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","-")&"-1.html'>"&name&"</a></li>"
Rsadd.Movenext
Loop
Rsadd.Close
Set Rsadd=nothing
top=replace(top,"<a class='menu' href='/"&makeUrl_class&"/"&Replace(name," ","-")&"-1.html'>","<a class='menu2' href='/"&makeUrl_class&"/"&Replace(name," ","-")&"-1.html'>")






'--------------------------------------主体开始,www.888wang.com制作=
Set Rs=Server.Createobject("Adodb.Recordset")





if sqlConn=0 then
Sql="Select flash.id,flashname,cnflashname,flashurl,nclass,flash.classid,classname,tag,mpic,pic,spic,pic1,pic2,size,sj,cnbody,cncaozuo,tj,hits,hot,user,zz,geshou,isclass,ysid,love,nolove,url,macoolurl,androidurl,iosurl,class.name From flash,class where Cint(nclass)=class.id and flash.ID="&requestClassID '查出一级分类名


else
	Sql="Select flash.id,flashname,cnflashname,flashurl,nclass,flash.classid,classname,tag,mpic,pic,spic,pic1,pic2,size,sj,cnbody,cncaozuo,tj,hits,hot,[user],zz,geshou,isclass,ysid,love,nolove,url,macoolurl,androidurl,iosurl,class.name From flash,class where nclass=class.id and flash.ID="&requestClassID '查出一级分类名

end if


set rs = Server.CreateObject("ADODB.Recordset")
rs.open sql,conn,1,1
	if NOT rs.EOF then
		id=rs("id")
		flashname=rs("flashname")
		cnflashname=rs("cnflashname")
		flashurl=rs("flashurl")
		classname=rs("classname")
		classid=rs("classid")
		tag=rs("tag")
		pic=rs("pic")
		mpic=rs("mpic")
		spic=rs("spic")
		pic1=rs("pic1")
		pic2=rs("pic2")
		zz=rs("zz")
		geshou=rs("geshou")
		body=rs("cnbody")
		hot=rs("hot")
		hits=rs("hits")
		nclass=rs("nclass")
		macoolurl=rs("macoolurl")
		androidurl=rs("androidurl")
		iosurl=rs("iosurl")
			if hits=null then 
			hits=0
			end if
		sj=rs("sj")
		sj=CDate(sj)
		sj=FormatDateTime(sj,vbShortDate)
		user=rs("user")
		url=rs("url")
		caozuo=rs("cncaozuo")
	end if
nclassName=replace(rs("name"),"类类","类")
Rs.Close


if instr(tag,"HTML5")>0 then
playloadurl=playloadurl&"<a href='/gameplay/"&Replace(flashname," ","-")&".html'><img src='http://www.acool.com/images/i2012/class_play.jpg' border='0' /></a>"
end if

if iosurl<>"" then
playloadurl=playloadurl&"<a href='"&iosurl&"'><img src='http://www.acool.com/m/images/gameinfo-ios.png' border='0' /></a>"
end if

if androidurl<>""  then
playloadurl=playloadurl&"<a href='"&androidurl&"'><img src='http://www.acool.com/m/images/gameinfo-android.png' border='0' /></a>"
end if

if macoolurl<>""  then
playloadurl=playloadurl&"<a href='"&macoolurl&"'><img src='http://www.acool.com/m/images/gameinfo-acoolandroid.png' border='0' /></a>"
end if




classLink="/"&makeUrl_class&"/"&Replace(className," ","-")&"-1.html" '小类链接
nclassLink="/"&makeUrl_class&"/"&Replace(nclassName," ","-")&"-1.html" '大类链接

dim backFlashLink,backFlashName,nextFlashLink,nextFlashName

'------------------------------------推荐小游戏图片

Sql="select top 4 * from flash where mpic<>'' and tag like '%html5%' order by newid()"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
tjxyx=tjxyx&"<li><a href='/gameinfo/"&Replace(Rs("flashname")," ","-")&".html'><img src='"&Rs("mpic")&"' alt='"&Rs("flashname")&"'/></a></li>"
Rs.movenext
loop
Rs.close

'上一个小游戏---------------------------
Sql="Select id,flashname From flash where ID="&requestClassID-1
Rs.open Sql,Conn,1,1
	if not rs.eof then
		backFlashLink="/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","-")&".html"
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
		nextFlashLink="/"&makeUrl_flash&"/"&Replace(rs("flashname")," ","-")&".html"
		nextFlashName=rs("flashname")
	else
		nextFlashLink="#"
		nextFlashName="下面没有flash了"
	end if
rs.close

'------------------类排行小游戏
Sql="select top 4 * from flash where classid='"&classid&"' order by hits desc"
Rs.open Sql,Conn,1,3
i=0
Do While not Rs.Eof
i=i+1
top15=top15&"<li><a href='/gameinfo/"&Replace(Rs("flashname")," ","-")&".html'><img src='"&Rs("mpic")&"' alt='"&Rs("flashname")&"'/><h>"&left(Rs("cnbody"),80)&"</h></a></li>"
if i>=77 then exit do
rs.movenext
loop
rs.close


'------------------tag标签
Sql="Select tag From flash where ID="&requestClassID&""
Rs.open Sql,Conn,1,1
	if not rs.eof then
	
	
	tag=Split(rs("tag"),",")
 For k = 0 To Ubound(tag)
 set rs2=server.createobject("adodb.recordset")
 if tag(k)<>"" then
sql2="select * from tag where name='"&tag(k)&"'"
rs2.open sql2,conn,1,1
if rs2.eof then
else
tagid=rs2("id")
end if
taglist=taglist&"<a href='/"&makeUrl_tag&"/"&Replace(tag(k)," ","-")&"-1.html' target='_blank'>"&tag(k)&"</a> "
rs2.close
end if
 next
	else
		taglist="没有标签"
	end if
rs.close




set rs=nothing

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
	 dim replaceString2(32,2)
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
	 replaceString2(23,1)="/gameplay/"&Replace(flashname," ","-")&".html"
	 	 
	 replaceString2(24,0)="<!taglist!>"
	 replaceString2(24,1)=taglist
	 
	 replaceString2(25,0)="<!spic!>"
	 replaceString2(25,1)=spic
	 replaceString2(26,0)="<!pic1!>"
	 replaceString2(26,1)=pic1
	 
	 replaceString2(27,0)="<!caozuo!>"
	 replaceString2(27,1)=caozuo
	 replaceString2(28,0)="<!tjxyx!>"
	 replaceString2(28,1)=tjxyx
	 
	 replaceString2(29,0)="<!cnflashname!>"
	 replaceString2(29,1)=cnflashname	 	 
	 replaceString2(30,0)="<!pic2!>"
	 replaceString2(30,1)=pic2
     replaceString2(31,0)="<!mpic!>"
	 replaceString2(31,1)=mpic
	 
	 '==========页页标签结束==============
	 '888网(www.888wang.com)，专业娱乐网站程序，大量数据，自动更新，适合快速建站
	 mbUrl="Gameinfo/"&Replace(flashname," ","-")&".html"
	 call createFile(mbUrl,mb,replaceString,replaceString2)

'Set fso = Server.CreateObject("Scripting.FileSystemObject")
'Set fout = fso.CreateTextFile(server.mappath("../flash/"&request("id")&".html"))
'fout.Write pencat
'fout.close
'response.write "生成成功《"&flashname&"》"

End If '如果ID不为空才生成
%>
