<!--#include File="Conn.asp" -->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>���ּ�¼</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<link href="../inc/date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="../inc/date.js"></script>
</head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">���ּ�¼��ҳ</div>
      <div align="center"></div></td>
  </tr>
  <tr> 
    <td height="31" bgcolor="#FFFFFF">
	<form mothod="post">
      <div align="center">
	  �û���<input type="text" name="txtUserName" size="10"/>
	  ��ֹʱ��<input class="input" type="text" name="txtStartTime" style="width:120" value="" id="txtStartTime" onClick="showCal(txtStartTime);">
	
	  ����ʱ��<input class="input" type="text" name="txtEndTime" style="width:120" value="" id="txtEndTime" onClick="showCal(txtEndTime);">
	
<div id='dateTime' onclick='event.cancelBubble=true' style='position:absolute;visibility:hidden;width:100px;height:100px;left=0px;top=0px;z-index:100;)'>
<table  class="cal_table" border='0'><tr><td>
<script>	var c = new CalendarCalendar('c');document.write(c);</script>
</td></tr><tr><td valign='top' align='center'>
<script>	var m = new CalendarMinute('m');document.write(m);</script>
</td></tr></table><iframe src="javascript:false" style="height:200px;" class="menu_iframe"></iframe>
</div>
<SCRIPT event=onclick() for=document>hideCalendar()</SCRIPT>

	  ��������<select name="nclass">
	  				<option value="ȫ������" checked>ȫ������</option>
					<option value="�Ƽ�ע��" checked>�Ƽ�ע��</option>
					<option value="��½��վ" checked>��½��վ</option>
					<option value="�����ҳ" checked>�����ҳ</option>
	  			</select>
				<input type="submit" value="����"/>
      </div>
	  </form>
	  </td>
  </tr>

  
  <tr> 
    <td height="31" bgcolor="#FFFFFF"> 
      <div align="center"><a href="888wang_com_score.asp">ȫ�����ּ�¼</a> |  
	  <a href="888wang_com_score.asp?nclass=�Ƽ�ע��">�Ƽ�ע��</a>  |  
	  <a href="888wang_com_score.asp?nclass=��½��վ">��½��վ</a>  |  
	  <a href="888wang_com_score.asp?nclass=�����ҳ">�����ҳ</a>  |  
      </div></td>
  </tr>

</table>
<br>
<%


Page=Request("Page")
PageSize = 50
Set Rs=Server.Createobject("Adodb.Recordset")

  '�Ƿ��а��������ͣ��û�����ֹʱ�䣬����ʱ��
  nclass=request("nclass")
  userName=request("txtUserName")
  startTime=request("txtStartTime")
  endTime=request("txtEndTime")
  isNclass=false
  
  if nclass<>""  then
  	if nclass<>"ȫ������" then
  		nclassStr="scoreType='"&nclass&"'"
		isNclass=true
	end if
  end if
  
  if  userName<>"" then
  	 if isNclass=true then
	     userNameStr="and userName='"&userName&"'"
	 else
	 	 userNameStr="userName='"&userName&"'"
	 end if 
  end if
  
   if  startTime<>"" then
	   if  userName<>"" then
	  		 
			 
			 if sqlconn=0 then
			 	startTimeStr="and addDate>#"&startTime&"#"
			 ELSE
			 	startTimeStr="and addDate>'"&startTime&"'"
			 end if
	   else
	   
	  		 if sqlconn=0 then
			 	startTimeStr="addDate>#"&startTime&"#"
			 ELSE
			 	startTimeStr="addDate>'"&startTime&"'"
			 end if
	   end if
  end if
  
   if  endTime<>"" then
  	   if  startTime<>"" then
	   	
			if sqlconn=0 then
			 	endTimeStr="and addDate<#"&endTime&"#"
			 ELSE
	       		endTimeStr="and addDate<'"&endTime&"'"
			 end if
			 
	   else
	  		 if sqlconn=0 then
			 	endTimeStr=" addDate<#"&endTime&"#"
			 ELSE
	       		endTimeStr=" addDate<'"&endTime&"'"
			 end if
	   end if
  end if
  
  allStr=nclassStr&userNameStr&startTimeStr&endTimeStr

  if allStr="" or IsNull(allStr) then
	Sql="select * from ScoreRecord order by scoreID desc"
  else
  	Sql="select * from ScoreRecord where "&allStr&" order by scoreID desc"
	Response.write("<div align='center'>��ѯ���:"&allStr&"<div>")
 end if
 %>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <tr>
    <td width="58" height="33" bgcolor="#C1DFDF"><div align="center">���</div></td>
    <td width="58" bgcolor="#C1DFDF"><div align="center">�û�ID</div></td>
	<td width="101" bgcolor="#C1DFDF"><div align="center">�û���</div></td>
    <td width="90" bgcolor="#C1DFDF"><div align="center">�������</div></td>
    <td width="43" bgcolor="#C1DFDF"><div align="center">����</div></td>
    <td width="151" bgcolor="#C1DFDF"><div align="center">ʱ��</div></td>
    <td width="119" bgcolor="#C1DFDF"><div align="center">ip</div></td>
    <td width="213" bgcolor="#C1DFDF"><div align="center">url</div></td>
    <td width="53" bgcolor="#C1DFDF"><div align="center">ɾ��</div></td>
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
    <td><div align="center"><%=rs("scoreType")%></div></td>
    <td><div align="center"><%=rs("score")%></div></td>
    <td><div align="center"><%=rs("addDate")%></div></td>
    <td><div align="center"><%=rs("IP")%></div></td>
    <td><div align="center"><%=rs("url")%></div></td>
    <td><div align="center"><a onClick="{if(confirm('ȷ��Ҫɾ����¼��?')){return true;}return false;}" href="888wang_com_score_m.asp?action=del&scoreID=<%=rs("scoreID")%>&userScore=<%=rs("score")%>&userID=<%=rs("userID")%>">ɾ��</a></div></td>
  </tr>
  <%
Rs.Movenext
Count=Count+1
Loop
%>
  <tr bgcolor="#85C0C0">
    <td height="27" colspan="9" align=center><%
Response.Write "<Form Method=""Post"" action=""888wang_com_score.asp"">"
Response.Write "[��<Font Color=#FF0000>"& Page &"</font>ҳ/��"& pgnum &"ҳ] "
If Page=1 Then
Response.Write "[�� ҳ] [��һҳ] "
Else
Response.Write "[<a href=""888wang_com_score.asp?Page=1&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">�� ҳ</a>] "
Response.Write "[<a href=""888wang_com_score.asp?Page="& Page-1 &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">��һҳ</a>] "
End If
If Rs.PageCount-Page<1 Then
Response.Write "[��һҳ] [β ҳ]"
Else
Response.Write "[<a href=""888wang_com_score.asp?Page="& Page+1 &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">��һҳ</a>] "
Response.Write "[<a href=""888wang_com_score.asp?Page="& Rs.PageCount &"&nclass="&request("nclass")&"&userName="&userName&"&startTime="&startTime&"&endTime="&endTime&""">β ҳ</a>]"
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

