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
page=1
mpage=1
mpage1=1
MaxPerPage=15
set rs=server.createobject("adodb.recordset")
        rs.open ("select * from flash where mpic<>'' and tag like '%html5%' order by id desc"),conn,1,1
        if not rs.eof then
        rs.pagesize=1 '�õ�ÿҳ��
        mpage1=rs.pagecount     '�õ���ҳ��
        rs.move  (page-1)*1
		
		response.write"<b><font color=""#FF0000"">"&page&"</font>/<font color=""#FF0000"">"&mpage1&"</font> ����flash��Htmlҳ</b><span id=showImport></span><IE:Download ID=""oDownload"" STYLE=""behavior:url(#default#download)"" />"
        do while not rs.eof

response.write"<script>function onDownloadDone(downDate){showImport.innerHTML=downDate}oDownload.startDownload('html_makemflash_load.asp?id="&rs("id")&"',onDownloadDone)</script>"


		 
		 
		 
        rs.movenext
        loop
        rs.close
        end if

conn.close  
set conn=nothing


%>
</body>
</html>
