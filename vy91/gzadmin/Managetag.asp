<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH������</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<!--#include File="top.asp" -->
<body leftmargin="0" topmargin="0">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="savetag.asp?action=add">
  <tr>

      <td height="28"> 
        <div align="center">��ӱ�ǩ</div></td>
  </tr>
  <tr>
      <td height="30" align="right" bgcolor="#f1f1f1"> 
        �����ƣ� 
          <input name="nameadd" type="text" id="nameadd" size="8">
          ��
<input type="submit" name="Submit2" value="���"></td>

  </tr>
  </form> 
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="">
  <tr>

      <td height="28"> 
        <div align="center">������ǩ</div></td>
  </tr>
  <tr>
      <td height="60" align="center" bgcolor="#f1f1f1"> 
       <table width="100%" border="0">
         <tr>
           <td width="20%" height="30" align="center"><a href="Managetag.asp">ȫ����ǩ</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=1">����֤��ǩ</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=2">δ��֤��ǩ</a> </td>
           <td width="16%" align="center"><a href="Managetag.asp?px=3">����֤��ǩ(������)</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=4">δ��֤��ǩ(������)</a></td>
           <td width="16%" align="center"><a href="#">����������ǩ</a></td>
         </tr>
       </table>
       ���ƣ� 
          <input name="name" type="text" id="tag" size="30">
          ��
<input type="submit" name="Submit2" value=" �� �� ">      </td>

  </tr>
  </form> 
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="50" height="33" align="center" bgcolor="#C1DFDF">ID��</td>
    <td align="center" bgcolor="#C1DFDF">�Ż�����</td>
	<td width="120" align="center" bgcolor="#C1DFDF">����</td>
  </tr>
  <%
Page=Request("Page")
PageSize = 50
Set Rs=Server.Createobject("Adodb.Recordset")
if request("name")<>""then
seowords=request("name")
Sql="Select * From tag where name like '%"&seowords&"%'  order by id desc"
else
if request("px")<>""then
px=int(request("px"))
if 1=px or 3=px then
Sql="Select * From tag where rz=1 order by id desc"
end if

if 2=px or 4=px then
Sql="Select * From tag where rz=0 order by id desc"
end if

'if 3=px then
'Sql="Select * From tag order by (select count(id) as sl from flash where tag like '%'+tag.name+'%') desc"
'end if

'if 3=px then
'Sql="Select * From tag order by (select count(id) as sl from flash where tag like '%'+tag.name+'%') desc"
'end if

if 5=px then

end if

else
Sql="Select * From tag order by id desc"
end if
end if
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
    <td height="30" align="center"><%=rs("id")%></td>
    <td height="30" align="center"><a href="editManagetag.asp?id=<%=rs("id")%>" target=_blank><%=rs("name")%></a></td>
    <td align="center"><a href="editManagetag.asp?id=<%=rs("id")%>" target=_blank>����</a> <a href="Html_MakeTag.asp?classid=<%=rs("id")%>&page=1&pageBig=2&make=big" target="_blank">����</a> <a onClick="{if(confirm('ȷ��Ҫɾ����ǩ��?')){return true;}return false;}" href="savetag.asp?action=del&classid=<%=rs("id")%>&delname=<%=rs("name")%>"> 
          ɾ��</a></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
  <td height="27" colspan="3" align=center><%
Response.Write "<Form Method=""Post"" action=""Managetag.asp"">"
Response.Write "[��<Font Color=#FF0000>"& Page &"</font>ҳ/��"& pgnum &"ҳ] "
If Page=1 Then
Response.Write "[�� ҳ] [��һҳ] "
Else
Response.Write "[<a href=""Managetag.asp?Page=1"">�� ҳ</a>] "
Response.Write "[<a href=""Managetag.asp?Page="& Page-1 &"&px="& px &""">��һҳ</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[��һҳ] [β ҳ]"
Else
Response.Write "[<a href=""Managetag.asp?Page="& Page+1 &"&px="& px &""">��һҳ</a>] "
Response.Write "[<a href=""Managetag.asp?Page="& Rs.PageCount &""">β ҳ</a>]"
End If
Response.Write " ��[<Font Color=#FF0000>"& flashnum &"</font>]��flash"
Response.Write " ת����<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" value=""Goto"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
%>  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>



