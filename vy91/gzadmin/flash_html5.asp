<META HTTP-EQUIV="expires" CONTENT="0">
<% Response.Expires = -1
  Response.ExpiresAbsolute = Now() - 1
  Response.cachecontrol = "no-cache"
 %>
<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH����</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<!--#include file="top.asp"-->

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">FLASH������ҳ</div>
      <div align="center"></div></td>
  </tr>
 
</table>
<br>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="63" height="33" bgcolor="#C1DFDF"><div align="center">ID��</div></td>
    <td width="248" bgcolor="#C1DFDF"><div align="center">����</div></td>
	<td width="111" bgcolor="#C1DFDF"><div align="center">��������</div></td>
    <td width="370" bgcolor="#C1DFDF"><div align="center">URL��ַ</div></td>
    <td width="52" bgcolor="#C1DFDF"><div align="center">�޸�</div></td>
    <td width="74" bgcolor="#C1DFDF"><div align="center">����</div></td>
  </tr>
  <%

Page=Request("Page")
PageSize = 20
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="select * from flash where mpic<>'' and tag like '%html5%' order by id desc"
Rs.open Sql,Conn,1,3
Rs.PageSize = PageSize
flashnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)<1 Then Page=1
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum>0 Then Rs.AbsolutePage=Page
Count=0
Do While not Rs.Eof And Count<Rs.PageSize
%>
  <tr bgcolor="#f1f1f1">
    <td height="30"><div align="center"><%=rs("id")%> </div></td>
    <td>&nbsp;&nbsp;<a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","-")%>.html" title=����鿴HTMLҳ target=_blank><%=rs("flashname")%></a></td>
	 <td height="30"><a href="editflash.asp?id=<%=rs("id")%>"><%=rs("cnflashname")%></a></td>
    <td><a href="<%=rs("flashurl")%>" target=_blank><%=rs("flashurl")%></a>      <div align="center"></div></td>
    <td><div align="center"><a href="editflash.asp?id=<%=rs("id")%>">�޸�</a></div></td>
    <td><div align="center"><div align="center"><a href="html_makemflash_load.asp?id=<%=rs("id")%>" target=_blank title="���ɲ�������ҳ">����</a>|<a href="html_makemflash.asp?id=<%=rs("id")%>" target=_blank title="���ɲ���ҳ">����</a></div></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="7" align=center><%
Response.Write "<Form Method=""Post"" action=""flash_mobile.asp"">"
Response.Write "[��<Font Color=#FF0000>"& Page &"</font>ҳ/��"& pgnum &"ҳ] "
If Page=1 Then
Response.Write "[�� ҳ] [��һҳ] "
Else
Response.Write "[<a href=""flash_mobile.asp?Page=1&nclass="&request("nclass")&"&ClassID="& request("classID") &""">�� ҳ</a>] "
Response.Write "[<a href=""flash_mobile.asp?Page="& Page-1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">��һҳ</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[��һҳ] [β ҳ]"
Else
Response.Write "[<a href=""flash_mobile.asp?Page="& Page+1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">��һҳ</a>] "
Response.Write "[<a href=""flash_mobile.asp?Page="& Rs.PageCount &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">β ҳ</a>]"
End If
Response.Write " ��[<Font Color=#FF0000>"& flashnum &"</font>]��flash"
Response.Write " ת����<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" value=""Goto"" Size=2 Name=""Submit"">"
Response.Write "<Input Type=""Hidden"" value="""& request("ClassID") &""" Name=""classid"">"
Response.Write "<Input Type=""Hidden"" value="""& request("nclass") &""" Name=""nclass"">"
Rs.Close
Set Rs=nothing
%>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>


