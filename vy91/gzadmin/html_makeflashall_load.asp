<!--#include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>全自动生成FLASH的HTML页文件</title>
<style>
body{font-size:12pt;line-height:140%} 
</style>
</head>
<body>
<%
if request("type")<>"" then
         if request("page")<>"" then
           page=cint(request("page"))
         else        
           page=1
         end if
mpage=1
mpage1=1
MaxPerPage=15
id=request("id")
set rs=server.createobject("adodb.recordset")
     if request("type")="all" then

        rs.open ("SELECT id FROM flash order by id desc"),conn,1,1
        if not rs.eof then
        rs.pagesize=1 '得到每页数
        mpage1=rs.pagecount     '得到总页数
        rs.move  (page-1)*1
        do while not rs.eof
        i=i+1
         id=rs("id")
         if i>=1 then exit do
        rs.movenext
        loop
        rs.close
        end if
     end if

conn.close  
set conn=nothing
	'//感谢你使用www.888wang.com 的小游戏程序
	'//如在使用中有不明白之处，请联系888网在线QQ技术支持
	'//为了你的权益，请到官方网站(888网)购买
response.write"<b><font color=""#FF0000"">"&page&"</font>/<font color=""#FF0000"">"&mpage1&"</font> 正在flash的Html页</b><span id=showImport></span><IE:Download ID=""oDownload"" STYLE=""behavior:url(#default#download)"" />"
for ii=1 to mpage
m=m+1
response.write"<script>function onDownloadDone(downDate){showImport.innerHTML=downDate}oDownload.startDownload('html_makeflash_load.asp?id="&id&"',onDownloadDone)</script>"
next
if page<mpage1 then
response.write"<meta http-equiv=""refresh"" content=""0;url='html_makeflashall_load.asp?type="&request("type")&"&page="&page+1&"&m="&request("m")+m&"'"">"
else
response.write"<meta http-equiv=""refresh"" content=""0;url='html_makeflashall_load.asp?ok="&page&"&m="&request("m")+m&"'"">"
end if
else 
response.write"<b>操作完成:共生成页面<font color=""#FF0000"">"&request("m")&"</font>个</b>"
end if
%>
</body>
</html>
