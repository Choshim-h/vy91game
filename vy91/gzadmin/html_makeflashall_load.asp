<!--#include File="Conn.asp" -->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ȫ�Զ�����FLASH��HTMLҳ�ļ�</title>
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
        rs.pagesize=1 '�õ�ÿҳ��
        mpage1=rs.pagecount     '�õ���ҳ��
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
	'//��л��ʹ��www.888wang.com ��С��Ϸ����
	'//����ʹ�����в�����֮��������ϵ888������QQ����֧��
	'//Ϊ�����Ȩ�棬�뵽�ٷ���վ(888��)����
response.write"<b><font color=""#FF0000"">"&page&"</font>/<font color=""#FF0000"">"&mpage1&"</font> ����flash��Htmlҳ</b><span id=showImport></span><IE:Download ID=""oDownload"" STYLE=""behavior:url(#default#download)"" />"
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
response.write"<b>�������:������ҳ��<font color=""#FF0000"">"&request("m")&"</font>��</b>"
end if
%>
</body>
</html>
