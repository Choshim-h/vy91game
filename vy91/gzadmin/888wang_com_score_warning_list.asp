<!--#include File="Conn.asp" -->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>报警明细</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<link href="date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="date.js"></script>
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">报警明细</div>
      <div align="center"></div></td>
  </tr>
</table>
<br>
<%
warningUserID=request("warningUserID")
warningAddDate=request("warningAddDate")

Page=Request("Page")
PageSize = 50
Set Rs=Server.Createobject("Adodb.Recordset")
if sqlconn=0 then
	Sql="select scoreID,userID,userName,scoreType,score,addDate,IP,url from ScoreRecord where userID="&warningUserID&" and DATEDIFF('n',now(),'"&warningAddDate&"')<"&warningTime&" and scoreType='浏览网页' order by scoreID desc"

else
	Sql="select scoreID,userID,userName,scoreType,score,addDate,IP,url from ScoreRecord where userID="&warningUserID&" and DATEDIFF(n,getDATE(),'"&warningAddDate&"')<"&warningTime&" and scoreType='浏览网页' order by scoreID desc"

end if
	'Response.write sql
	'REsponse.end
 %>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="58" height="33" bgcolor="#C1DFDF"><div align="center">编号</div></td>
    <td width="58" bgcolor="#C1DFDF"><div align="center">用户ID</div></td>
	<td width="101" bgcolor="#C1DFDF"><div align="center">用户名</div></td>
    <td width="90" bgcolor="#C1DFDF"><div align="center">积分类别</div></td>
    <td width="43" bgcolor="#C1DFDF"><div align="center">分数</div></td>
    <td width="151" bgcolor="#C1DFDF"><div align="center">时间</div></td>
    <td width="119" bgcolor="#C1DFDF"><div align="center">ip</div></td>
    <td width="213" bgcolor="#C1DFDF"><div align="center">url</div></td>
   <!-- <td width="53" bgcolor="#C1DFDF"><div align="center">删除</div></td>-->
  </tr>
  <%
 
Rs.open Sql,Conn,1,3
	if Rs.RecordCount=0 then
	Response.write "<tr bgcolor='#f1f1f1' height='20'><td colspan='9'><div align='center'>没有记录</div></td></tr>"
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
    <td><div align="center"><%=rs("scoreType")%></div></td>
    <td><div align="center"><%=rs("score")%></div></td>
    <td><div align="center"><%=rs("addDate")%></div></td>
    <td><div align="center"><%=rs("IP")%></div></td>
    <td><div align="center"><%=rs("url")%></div></td>
      <!--<td><div align="center"><a onClick="{if(confirm('确定要删除记录吗?')){return true;}return false;}" href="#">删除</a></div></td>-->
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="9" align=center><%
Response.Write "<Form Method=""Post"" action=""888wang_com_score.asp"">"
Response.Write "[第<Font Color=#FF0000>"& Page &"</font>页/共"& pgnum &"页] "
If Page=1 Then
Response.Write "[首 页] [上一页] "
Else
Response.Write "[<a href=""888wang_com_score.asp?Page=1&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">首 页</a>] "
Response.Write "[<a href=""888wang_com_score.asp?Page="& Page-1 &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">上一页</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[下一页] [尾 页]"
Else
Response.Write "[<a href=""888wang_com_score.asp?Page="& Page+1 &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">下一页</a>] "
Response.Write "[<a href=""888wang_com_score.asp?Page="& Rs.PageCount &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">尾 页</a>]"
End If
Response.Write " 共[<Font Color=#FF0000>"& flashnum &"</font>]记录"
Response.Write " 转到：<Input Type='Text' Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
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

