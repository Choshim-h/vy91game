<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH类别管理</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<!--#include File="top.asp" -->
<body leftmargin="0" topmargin="0">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="savetag.asp?action=add">
  <tr>

      <td height="28"> 
        <div align="center">添加标签</div></td>
  </tr>
  <tr>
      <td height="30" align="right" bgcolor="#f1f1f1"> 
        　名称： 
          <input name="nameadd" type="text" id="nameadd" size="8">
          　
<input type="submit" name="Submit2" value="添加"></td>

  </tr>
  </form> 
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="">
  <tr>

      <td height="28"> 
        <div align="center">搜索标签</div></td>
  </tr>
  <tr>
      <td height="60" align="center" bgcolor="#f1f1f1"> 
       <table width="100%" border="0">
         <tr>
           <td width="20%" height="30" align="center"><a href="Managetag.asp">全部标签</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=1">已认证标签</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=2">未认证标签</a> </td>
           <td width="16%" align="center"><a href="Managetag.asp?px=3">已认证标签(显数量)</a></td>
           <td width="16%" align="center"><a href="Managetag.asp?px=4">未认证标签(显数量)</a></td>
           <td width="16%" align="center"><a href="#">二级域名标签</a></td>
         </tr>
       </table>
       名称： 
          <input name="name" type="text" id="tag" size="30">
          　
<input type="submit" name="Submit2" value=" 搜 索 ">      </td>

  </tr>
  </form> 
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="50" height="33" align="center" bgcolor="#C1DFDF">ID号</td>
    <td align="center" bgcolor="#C1DFDF">优化名称</td>
	<td width="120" align="center" bgcolor="#C1DFDF">操作</td>
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
    <td align="center"><a href="editManagetag.asp?id=<%=rs("id")%>" target=_blank>操作</a> <a href="Html_MakeTag.asp?classid=<%=rs("id")%>&page=1&pageBig=2&make=big" target="_blank">生成</a> <a onClick="{if(confirm('确定要删除标签吗?')){return true;}return false;}" href="savetag.asp?action=del&classid=<%=rs("id")%>&delname=<%=rs("name")%>"> 
          删除</a></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
  <td height="27" colspan="3" align=center><%
Response.Write "<Form Method=""Post"" action=""Managetag.asp"">"
Response.Write "[第<Font Color=#FF0000>"& Page &"</font>页/共"& pgnum &"页] "
If Page=1 Then
Response.Write "[首 页] [上一页] "
Else
Response.Write "[<a href=""Managetag.asp?Page=1"">首 页</a>] "
Response.Write "[<a href=""Managetag.asp?Page="& Page-1 &"&px="& px &""">上一页</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[下一页] [尾 页]"
Else
Response.Write "[<a href=""Managetag.asp?Page="& Page+1 &"&px="& px &""">下一页</a>] "
Response.Write "[<a href=""Managetag.asp?Page="& Rs.PageCount &""">尾 页</a>]"
End If
Response.Write " 共[<Font Color=#FF0000>"& flashnum &"</font>]部flash"
Response.Write " 转到：<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" value=""Goto"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
%>  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>



