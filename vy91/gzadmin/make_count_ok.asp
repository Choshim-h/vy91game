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
<meta copy="�������� [������ QQ:56566918] ; ��Ȩ����!">
<title></title>
</head>
<body topmargin="1" leftmargin="1">
<%if mskrindex="ok" then%>
<table border="0" cellspacing="0" style="border-collapse: collapse" width="100%" cellpadding="0">
  <tr>
    <td width="100%"><font color="#FF0000">��</font>�ɹ�����ͳ��js,ʱ��<%=Now()%><br><font color="#FF0000">��</font><a target="_blank" href="<%=filename%>"><%=filename%></a></td>
  </tr>
</table>

<%
end if
%>   
</body>    
</html>

