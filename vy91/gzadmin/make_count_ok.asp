<!--#Include File="Conn.asp" -->
<!--#include file="CheckPost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
filename="../js/count.js"
if request("body")<>"" then
 Set fso = Server.CreateObject("Scripting.FileSystemObject")
Set fout = fso.CreateTextFile(server.mappath(""&filename&""))
fout.Write request("body")
fout.close
set fout=nothing
set fso=nothing
mskrindex="ok"
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta copy="程序制作 [蒋崇仁 QQ:56566918] ; 版权所有!">
<title></title>
</head>
<body topmargin="1" leftmargin="1">
<%if mskrindex="ok" then%>
<table border="0" cellspacing="0" style="border-collapse: collapse" width="100%" cellpadding="0">
  <tr>
    <td width="100%"><font color="#FF0000">·</font>成功生成统计js,时间<%=Now()%><br><font color="#FF0000">·</font><a target="_blank" href="<%=filename%>"><%=filename%></a></td>
  </tr>
</table>

<%
end if
%>   
</body>    
</html>

