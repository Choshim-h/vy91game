<!--#include file="Function.asp" -->
<!--#include file="conn.asp" -->
<%
if request("id") and request("overid") and request("download") <>"" then
response.redirect "getid.asp?id="&request("id")&"&overid="&request("overid")&"&download="&request("download")
else
%>

<%
url="http://www.gameyes.com/index/billboard1.htm"
zpl=GetPage(url)
OverID1 =GetContent(zpl,"<td height=""25"" align=""center"" bgcolor=""#FFFFFF"">1</td>","</td>",0)
OverID =GetContent(OverID1,"../swf/",".htm""",0)
songsql = "SELECT * from flash ORDER BY ysID DESC"
Set songrs = Server.CreateObject("ADODB.Recordset")
songrs.OPEN songsql,Conn,1,1
if songrs.eof and songrs.bof then
ysID=2433
else
ysID=songrs("ysID")
end if
ID=ysID+1
countid=OverID-ID
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>888wang.com小游戏采集系统</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {color: #0033FF}
-->
</style>
</head>
<body>
<P>&nbsp;</P>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#0066FF" style="border:#AAD2F6 1px solid;padding:10px;">
  <tr>
    <td height="22" bgcolor="#B7D8FD">&nbsp;<span class="STYLE1">888网小游戏采集更新系统</span></td>
  </tr>
  <tr>
    <td><form name="form1" method="get" action="getid.asp">
  开始采集的ID号： 
  <input textbox.locked=true name="ID" type="text" id="ID" style="width:150;" value="<%=ID%>" size="6" maxlength="6">
  结束ID： 
 <input name="OverID" type="text" id="OverID" style="width:150;" value="<%=OverID%>" size="6" maxlength="6" >
 &nbsp;<br> 
  下载图片到本地：是
<input type="radio" name="download" value="yes" checked>
  否<input name="download" type="radio" value="no" >
&nbsp; 下载数据到本地：是
<input name="download2" type="radio" value="yes" checked >
  否<input name="download2" type="radio" value="no">&nbsp;&nbsp;&nbsp;
  <input type="submit" name="Submit" value="开始采集">
</form></td>
  </tr>
</table>
<div style="width:700px; margin-left:6%;margin-top:10px;"> 
888wang.com提示您:有<%=countid%>个FLASH数据需要更新<p>
说明：<br>
选择是否要下载图片与数据，直接点击提交即可<br>
图片下载至flashpic/ 数据下载到gamecode/ <br><br>
<font color="red">全自动采集，您需要做的是点击“开始采集”,这样数据就更新了</font>
</div>



</body>
</html>
<%end if%>

