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
<title>FLASH管理</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<!--#include file="top.asp"-->

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">FLASH管理首页</div>
      <div align="center"></div></td>
  </tr>
 
</table>
<br>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="63" height="33" bgcolor="#C1DFDF"><div align="center">ID号</div></td>
    <td width="294" bgcolor="#C1DFDF"><div align="center">名称</div></td>
	<td width="80" bgcolor="#C1DFDF"><div align="center"><a href="#" title="0为手工加的，1为采集的">路径ID</a></div></td>
    <td width="175" bgcolor="#C1DFDF"><div align="center">点击量</div></td>
    <td width="95" bgcolor="#C1DFDF"><div align="center">首页经典</div></td>
    <td width="110" bgcolor="#C1DFDF"><div align="center">推荐</div></td>
    <td width="50" bgcolor="#C1DFDF"><div align="center">修改</div></td>
    <td width="46" bgcolor="#C1DFDF"><div align="center">删除</div></td>
    <td width="54" bgcolor="#C1DFDF"><div align="center">生成</div></td>
  </tr>
  <%

Page=Request("Page")
PageSize = 20
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From flash where tj='yes' order by id desc"
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
    <td>&nbsp;&nbsp;<a href="/<%=makeUrl_flash%>/<%=Replace(rs("flashname")," ","_")%>.html" title=点击查看HTML页 target=_blank><%=rs("flashname")%></a></td>
	 <td height="30"><div align="center"><a href="#" title="0为手工加的，1为采集的"><%=rs("url")%></a> </div></td>
    <td><div align="center">
      <form name="form2" method="post" action="888wang_flash_hits.asp?act=edithits&id=<%=rs("id")%>">
        <input type="text" name="hits" size="5" value="<%=rs("hits")%>">
        <input type="submit" name="Submit2" value="go">
      </form>
    </div></td>
    <td><div align="center"><a href="888wang_flash_isgood.asp?act=SetIsClass&id=<%=rs("id")%>">
      <%if rs("isClass")="1" then%>
      <font color=red>已经典</font>
      <%else%>
      未经典
      <%end if%>
    </a> </div></td>
    <td><div align="center"><a href="888wang_flash_isgood.asp?act=SetIsGood&id=<%=rs("id")%>">
      <%if rs("tj")="yes" then%>
      <font color=red>已推荐</font>
      <%else%>
      未推荐
      <%end if%>
    </a></div></td>
    <td><div align="center"><a href="editflash.asp?id=<%=rs("id")%>">修改</a></div></td>
    <td><div align="center"><a href="saveflash_good.asp?del=<%=rs("id")%>">删除</a></div></td>
    <td><div align="center"><a href="html_makeflash.asp?id=<%=rs("id")%>" target=_blank>生成</a></div></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="9" align=center><%
Response.Write "<Form Method=""Post"" action=""flash_good.asp"">"
Response.Write "[第<Font Color=#FF0000>"& Page &"</font>页/共"& pgnum &"页] "
If Page=1 Then
Response.Write "[首 页] [上一页] "
Else
Response.Write "[<a href=""flash_good.asp?Page=1&nclass="&request("nclass")&"&ClassID="& request("classID") &""">首 页</a>] "
Response.Write "[<a href=""flash_good.asp?Page="& Page-1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">上一页</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[下一页] [尾 页]"
Else
Response.Write "[<a href=""flash_good.asp?Page="& Page+1 &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">下一页</a>] "
Response.Write "[<a href=""flash_good.asp?Page="& Rs.PageCount &"&nclass="&request("nclass")&"&ClassID="& request("classID") &""">尾 页</a>]"
End If
Response.Write " 共[<Font Color=#FF0000>"& flashnum &"</font>]部flash"
Response.Write " 转到：<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
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


