<!--#include File="Conn.asp" -->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>按积分次数</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<link href="date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="date.js"></script>
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">按积分次数</div>
      <div align="center"></div></td>
  </tr>
 
</table>
<br>
<%
Set Rs=Server.Createobject("Adodb.Recordset")
	Sql="select  userID,ScoreRecord.userName,count(scoreID)as countScore,userWarning  from ScoreRecord  left join  [user] on ScoreRecord.userID=[user].id group by userID,ScoreRecord.userName,userWarning order by count(scoreID) desc"
 %>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td  bgcolor="#C1DFDF"><div align="center">用户ID</div></td>
	<td  bgcolor="#C1DFDF"><div align="center">用户名</a></div></td>
    <td  bgcolor="#C1DFDF"><div align="center">积分次数</div></td>
	<td  bgcolor="#C1DFDF"><div align="center">积分详细主录</div></td>
    <td  bgcolor="#C1DFDF"><div align="center">锁定用户积分</div></td>
  </tr>
  <%
Rs.open Sql,Conn,1,1
	if Rs.RecordCount=0 then
	Response.write "<tr bgcolor='#f1f1f1' height='20'><td colspan='9'><div align='center'>没有记录</div></td></tr>"
	end if
Do While not Rs.Eof And Count<Rs.PageSize
%>
      
  <tr bgcolor="#f1f1f1" height="20">
    <td><div align="center"><%=rs("userID")%></div></td>
	<td><div align="center"><a href="888wang_user_modify.asp?id=<%=rs("userID")%>"><%=rs("userName")%></a></div></td>
    <td><div align="center"><%=rs("countScore")%></div></td>
	<td><div align="center"><a href="888wang_com_score.asp?txtUserName=<%=rs("userName")%>">积分详细主录</a></div></td>
    <td><div align="center"><a href="888wang_user_lock.asp?id=<%=rs("userID")%>&act=warning"><%if rs("userWarning")<>"yes" then%><font color=red>点击锁定积分</font><%else%><font color=BLUE>点击解锁积分</font><%end if%> </a></div></td>
  </tr>
  <%
Rs.Movenext
Loop
%>
 
</table>
<p>&nbsp;</p>

</body>
</html>

