<META HTTP-EQUIV="expires" CONTENT="0">
<% Response.Expires = -1
  Response.ExpiresAbsolute = Now() - 1
  Response.cachecontrol = "no-cache"
 %>
<!--#include File="Conn.asp" -->
<!--#include file="top.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->

<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH����</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">FLASH������ҳ</div>
      <div align="center"></div></td>
  </tr>
  <tr> 
    <td height="31" bgcolor="#FFFFFF"> 
      <div align="center"><a href="flash.asp">�鿴ȫ��FLASH</a>&nbsp;&nbsp; 
        <%
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='0'"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
%>
        <a href=flash.asp?nclass=<%=rs("id")%>><font color=blue><%=rs("name")%></font></a> 
        <%
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
%>
      </div></td>
  </tr>
  	<%
if request("nclass")<>""then

%>
  <tr>
    <td height="28" bgcolor="#E1F0F0"> 
      <div align=center> 
        <%
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='"&request("nclass")&"'"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
%>
        <a href=flash.asp?nclass=<%=request("nclass")%>&classid=<%=rs("id")%>><font color=blue><%=rs("name")%></font></a> 
        &nbsp;&nbsp; 
        <%
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing

%>

      </div></td>
  </tr>
<%end if%>
</table>
<br>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="82" height="33" bgcolor="#C1DFDF"><div align="center">ID��</div></td>
    <td width="321" bgcolor="#C1DFDF"><div align="center">����</div></td>
	<td width="157" bgcolor="#C1DFDF"><div align="center">��������</div></td>
    <td width="205" bgcolor="#C1DFDF"><div align="center">�����</div></td>
    <td width="214" bgcolor="#C1DFDF"><div align="center">��ҳ����</div></td>
    <td width="214" bgcolor="#C1DFDF"><div align="center">�Ƽ�</div></td>
    <td width="75" bgcolor="#C1DFDF"><div align="center">�޸�</div></td>
    <td width="76" bgcolor="#C1DFDF"><div align="center">ɾ��</div></td>
    <td width="146" bgcolor="#C1DFDF"><div align="center">����</div></td>
  </tr>
  <%
Page=Request("Page")
PageSize = 20
Set Rs=Server.Createobject("Adodb.Recordset")
if request("nclass")<>"" and request("classid")="" then
nclass=request("nclass")
Sql="Select * From flash where nclass='"&nclass&"' order by id desc"
elseif request("classid")<>""then
classid=request("classid")
Sql="Select * From flash where classid='"&classid&"' order by id desc"
else
Sql="Select * From flash order by id desc"
end if
Rs.open Sql,Conn,1,1
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
	 <td height="30"><div align="center"><a href="editflash.asp?id=<%=rs("id")%>"><%=rs("cnflashname")%></a></div></td>
    <td><div align="center">
      <form name="form2" method="post" action="888wang_flash_hits.asp?act=edithits&id=<%=rs("id")%>">
        <input type="text" name="hits" size="5" value="<%=rs("hits")%>">
        <input type="submit" name="Submit2" value="go">
      </form>
    </div></td>
    <td><div align="center"><a href="888wang_flash_isgood.asp?act=SetIsClass&id=<%=rs("id")%>">
      <%if rs("isClass")="1" then%>
      <font color=red>�Ѿ���</font>
      <%else%>
      δ����
      <%end if%>
    </a> </div></td>
    <td><div align="center"><a href="888wang_flash_isgood.asp?act=SetIsGood&id=<%=rs("id")%>">
      <%if rs("tj")="yes" then%>
      <font color=red>���Ƽ�</font>
      <%else%>
      δ�Ƽ�
      <%end if%>
    </a></div></td>
    <td><div align="center"><a href="editflash.asp?id=<%=rs("id")%>">�޸�</a></div></td>
    <td><div align="center"><a onClick="{if(confirm('ȷ��Ҫɾ����¼��?')){return true;}return false;}" href="saveflash.asp?del=<%=rs("id")%>">ɾ��</a></div></td>
    <td><div align="center"><a href="html_makeflash_load.asp?id=<%=rs("id")%>" target=_blank title="���ɲ�������ҳ">����</a>|<a href="html_makeflash.asp?id=<%=rs("id")%>" target=_blank title="���ɲ���ҳ">����</a></div></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="9" align=center><%
Response.Write "<Form Method=""Post"" action=""flash.asp"">"
Response.Write "[��<Font Color=#FF0000>"& Page &"</font>ҳ/��"& pgnum &"ҳ] "
If Page=1 Then
Response.Write "[�� ҳ] [��һҳ] "
Else
Response.Write "[<a href=""flash.asp?Page=1&nclass="&request("nclass")&"&ClassID="& request("classID") &""">�� ҳ</a>] "
Response.Write "[<a href=""flash.asp?Page="& Page-1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">��һҳ</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[��һҳ] [β ҳ]"
Else
Response.Write "[<a href=""flash.asp?Page="& Page+1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">��һҳ</a>] "
Response.Write "[<a href=""flash.asp?Page="& Rs.PageCount &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">β ҳ</a>]"
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


