<!--#include File="Conn.asp" -->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���б����û�</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<link href="date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="date.js"></script>
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">���б����û�</div>
      <div align="center"></div></td>
  </tr>
 </table>
<br>
<%


Page=Request("Page")
PageSize = 20
Set Rs=Server.Createobject("Adodb.Recordset")
  	Sql="select scoreID,userID,ScoreRecord.userName,ScoreRecord.addDate,IP,url,userWarning from ScoreRecord left join [user] on ScoreRecord.userID=[user].id where warning='yes' order by scoreID desc"
 %>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="44" height="33" bgcolor="#C1DFDF"><div align="center">���</div></td>
    <td width="49" bgcolor="#C1DFDF"><div align="center">�û�ID</div></td>
	<td width="83" bgcolor="#C1DFDF"><div align="center">�û���</div></td>
    <td width="142" bgcolor="#C1DFDF"><div align="center">ʱ��</div></td>
    <td width="142" bgcolor="#C1DFDF"><div align="center">���ip</div></td>
    <td width="274" bgcolor="#C1DFDF"><div align="center">���url</div></td>
    <td width="98" bgcolor="#C1DFDF"><div align="center">������ϸ</div></td>
	<td width="55"  bgcolor="#C1DFDF"><div align="center">����</div></td>
  </tr>
  <%
 
Rs.open Sql,Conn,1,3
	if Rs.RecordCount=0 then
	Response.write "<tr bgcolor='#f1f1f1' height='20'><td colspan='9'><div align='center'>û�м�¼</div></td></tr>"
	end if
Rs.PageSize = PageSize
flashnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)<1 Then Page=1
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum>0 Then Rs.AbsolutePage=Page
Count=0
Do While not Rs.Eof And Count<Rs.PageSize
%>
      
  <tr bgcolor="#f1f1f1" height="20">
    <td><div align="center"><%=rs("scoreID")%></div></td>
    <td><div align="center"><%=rs("userID")%></div></td>
	<td><div align="center"><%=rs("userName")%></div></td>
    <td><div align="center"><%=rs("addDate")%></div></td>
    <td><div align="center"><%=rs("IP")%></div></td>
    <td><div align="center"><%=rs("url")%></div></td>
    <td><div align="center"><a href="888wang_com_score_warning_list.asp?warningUserID=<%=rs("userID")%>&warningAddDate=<%=rs("addDate")%>">������ϸ</a></div></td>
	 <td><div align="center"><a title="����/�����û����ֹ���" href="888wang_user_lock.asp?id=<%=rs("userID")%>&act=warning"><%if rs("userWarning")<>"yes" then%><font color=red>����</font><%else%><font color=BLUE>����</font><%end if%> </a></div></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="9" align=center><%
Response.Write "<Form Method=""Post"" action=""888wang_com_score_warning.asp"">"
Response.Write "[��<Font Color=#FF0000>"& Page &"</font>ҳ/��"& pgnum &"ҳ] "
If Page=1 Then
Response.Write "[�� ҳ] [��һҳ] "
Else
Response.Write "[<a href=""888wang_com_score_warning.asp?Page=1"">�� ҳ</a>] "
Response.Write "[<a href=""888wang_com_score_warning.asp?Page="& Page-1 &""">��һҳ</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[��һҳ] [β ҳ]"
Else
Response.Write "[<a href=""888wang_com_score_warning.asp?Page="& Page+1 &""">��һҳ</a>] "
Response.Write "[<a href=""888wang_com_score_warning.asp?Page="& Rs.PageCount &""">β ҳ</a>]"
End If
Response.Write " ��[<Font Color=#FF0000>"& flashnum &"</font>]��¼"
Response.Write " ת����<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" value=""Goto"" Size=2 Name=""Submit"">"
Response.Write "<Input Type=""Hidden"" value="""& request("nclass") &""" Name=""nclass"">"
Response.Write "<Input Type=""Hidden"" value="""& userName &""" Name=""userName"">"
Response.Write "<Input Type=""Hidden"" value="""& startTime &""" Name=""startTime"">"
Response.Write "<Input Type=""Hidden"" value="""& endTime &""" Name=""endTime"">"
Rs.Close
Set Rs=nothing
%>
  </tr>
</table>
<p>&nbsp;</p>

</body>
</html>

