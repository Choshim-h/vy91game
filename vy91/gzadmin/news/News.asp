<!--#include file="conn.asp"-->
<!--#include file="../../inc/config_list.asp"-->

<%
dim filename,filename_m
fileName="News.asp"
filename_m="NewsAction.asp"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>888wan g.com 888�� ���Ź���</title>
<link href="Style.css" rel="stylesheet" type="text/css" />
<link href="date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="date.js"></script>
<script language="javascript" type="text/javascript">
//ȫѡ��idѡ��,chkȫѡ��,selectID �������ַ�
function checkFormAll(chk,selectID)
{
    currStat= document.getElementById(chk);
    for(var i=0; i<form1.elements.length; i++)
    {
        if ((form1.elements[i].id).indexOf(selectID)!=-1)
        {
         form1.elements[i].checked = currStat.checked;
        }
    }
}

//�ύ������
	function submitFormByID(selectID,act){
		var str;
		str='';
		for(var i=0; i<form1.elements.length; i++)
		{
			if ((form1.elements[i].id).indexOf(selectID)!=-1 && form1.elements[i].checked==true)
			{
			  str=str+form1.elements[i].value+",";
			}
		}
				if(str.length<1){
				alert('888wang.com ������:��δ��ѡ������ѡ��һ�');
				return}
		form1.action="<%=filename_m%>?id="+str.substring(0,str.length-1)+"&act="+act;
		form1.submit();
	}

</script>
</head>

<%
'-------------------------------------��ҳ������
	if request("page")<>"" then
	pageNo = Clng(Request("page"))'int���ֵֻ�е�32767. 
	else
	pageNo = 1
	end if
	PageSize =50

'------------------------------ȫ�ֱ�������	
%>
<body>
<form mothod="post">
<div style="width:99%; margin:10px;  height:25px; line-height:25px; text-indent:1em; background:#CEDFFF">
����<select name="newsClassID">
  <option value="">���з���</option>
  	<%
	dim typeTitle
	set rs=server.createobject("adodb.recordset")
	sql="SELECT  newsClassID,newsClassName  FROM  NewsClass "
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("���޷���")
	else
	do while not rs.eof
	
	%>
      <option value="<%=rs("newsClassID")%>"><%=rs("newsClassName")%></option>
	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>

</select> 
&nbsp;&nbsp;
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

&nbsp;&nbsp;����
<input type="text" name="key"/>

<input name="btnSubmit" type="submit" value="�ύ" />
</div>
<div style="clear:both"></div>
</form>

<form id="form1" name="form1" method="post" >

<div style="width:99%; margin-left:10px;">
<input type="button" name="btnGetSelect" value="�Ƽ���ѡ" onClick="submitFormByID('chkGetID','isgood')"/> <input type="button" name="btnGetSelect" value="ɾ����ѡ" onClick="{if(confirm('ȷ��Ҫɾ����¼��?')){submitFormByID('chkGetID','del')}return false;}"/> </div>
<div style="clear:both"></div>

<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
  <tr>
    <td width="9%" align="center" bgcolor="#79C6FF" title="ȫѡ"><input id="chkAll" name="chkAll" type="checkbox"  value="chkAll" onClick="checkFormAll('chkAll','chkGet')" /></td>
    <td width="10%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
    <td width="34%" align="center" bgcolor="#79C6FF"><strong>������</strong></td>
    <td width="12%" align="center" bgcolor="#79C6FF"><strong>ʱ��</strong></td>
        <td width="7%" align="center" bgcolor="#79C6FF"><strong>�Ƽ�</strong></td>

      <td width="15%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
  </tr>
  
  <%
  '�Ƿ��а����࣬ʱ�䣬�Ƿ����Σ�ʱ��
  newsClassID=request("newsClassID")
  startTime=request("txtStartTime")
  endTime=request("txtEndTime")
  key=request("key")

  if newsClassID<>""  then
  		typeStr=" and news.newsClassID="&newsClassID&""
  end if
  
  
   if  startTime<>"" then
   		if sqlConn=0 then 
			startTimeStr=" and news.adddate>#"&startTime&"#"
		else
			startTimeStr=" and news.adddate>'"&startTime&"'"
		end if
  end if
  
   if  endTime<>"" then
   		if sqlConn=0 then 
			 endTimeStr=" and news.adddate<#"&endTime&"#"
		 else
		 	  endTimeStr=" and news.adddate<'"&endTime&"'"
		 end if
  end if
  
     if  key<>"" then
	       keyStr=" and newsTitle like '%"&key&"%' "
  end if
  
  allStr=typeStr&delFlagStr&startTimeStr&endTimeStr&keyStr
  
  if allStr<>"" then
  	allStr=mid(trim(allStr),4,len(allStr))
  end if
  
  requestStr="newsClassID="&newsClassID&"&startTime="&startTime&"&endTime="&endTime&"&key="&key&""
  
  if allStr="" or IsNull(allStr) then
	sql="SELECT [newsID],news.[newsClassID],[userID],[newsTitle],news.[addDate],[isgood],newsclassname FROM [News] LEFT JOIN NewsClass on NewsClass.newsClassID=news.newsClassID  ORDER BY newsID desc"
  else
  
  	sql="SELECT [newsID],news.[newsClassID],[userID],[newsTitle],news.[addDate],[isgood],newsclassname FROM [News] LEFT JOIN NewsClass on NewsClass.newsClassID=news.newsClassID  where "&allStr&"  ORDER BY newsID desc"
	Response.write("<div align='center'>��ѯ���:"&allStr&"<div>")
 end if
 

	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("������Ϣ")
	else
	
	rs.pagesize=pagesize
	rs.absolutePage=pageNo
	totalnumber=rs.recordcount
	
	count=0
	Do While not Rs.Eof And Count<Rs.PageSize
	dim typeTitleList
	typeTitleList=""
	
	
	newsID=rs("newsID")
	newsClassID=rs("newsClassID")

	newsTitle=rs("newsTitle")

	addDate=rs("addDate")

	isgood=rs("isgood")

	newsclassname=rs("newsclassname")

	
%>

  <tr>
    <td bgcolor="#FFFFFF"> <input name="chkGetID" type="checkbox" id="chkGetID" value="<%=newsID%>" /></td>
    <td bgcolor="#FFFFFF"><font title="���"><%=newsID%></font></td>
    <td bgcolor="#FFFFFF"><%=newsClassName%></td>
    <td bgcolor="#FFFFFF"><a href="<%=urlNews(newsID)%>" target="_blank"><%=newsTitle%></a></td>
    <td bgcolor="#FFFFFF"><%=addDate%></td>
        <td bgcolor="#FFFFFF"><a href="<%=filename_m%>?id=<%=newsID%>&act=isgood2" title="�Ƽ�">   
       <%if rs("isGood")=true then%>
       <font color=red title="ȡ���Ƽ�">���Ƽ�</font>
      <%else%>
      <font title="�Ƽ�">δ�Ƽ�</font>
      <%end if%>
      </a></td>

    <td align="center" bgcolor="#FFFFFF">
      <a href="NewsEdit.asp?act=edit&id=<%=newsID%>">�޸�</a></td>
  </tr>
<%
Rs.Movenext
Count=Count+1
Loop
end if
%>

</table>
</form>
<%showpage totalnumber,PageSize,fileName '���÷�ҳ����%>

</body>
</html>

<%
'showpage RecordCount,PageSizeX,fileName '���÷�ҳ����

'��ҳ����-----------------------------------------
function showpage(totalnumber,maxperpage,filename)
dim n
if totalnumber mod maxperpage=0 then
	n= totalnumber \ maxperpage
else
	n= totalnumber \ maxperpage+1
end if
%>
<form method=Post action="<%=filename%>?<%=requestStr%>">
  <center>
  ��<font color="#ff0000"><b><%=totalnumber%></b></font>����¼/ÿҳ<%=PageSizeX%>��
  <%if pageNo<2 then%>
  &nbsp;��ҳ ��һҳ&nbsp;
  <%else%>
  &nbsp<a href="<%=filename%>?page=1&<%=requestStr%>">��ҳ</a>&nbsp; <a href="<%=filename%>?page=<%=pageNo-1%>&<%=requestStr%>">��һҳ</a>&nbsp;
  <%
end if
if n-pageNo<1 then
%>
  ��һҳ ĩҳ
  <%else%>
  <a href="<%=filename%>?page=<%=pageNo+1%>&<%=requestStr%>">��һҳ</a> <a href="<%=filename%>?page=<%=n%>&<%=requestStr%>">ĩҳ</a>
  <%end if%>
  &nbsp;ҳ��:<strong><font color="#ff0000"><%=pageNo%>/<%=n%></font></strong>ҳ
  ת��:
<select name="page" size="1" onChange="javascript:submit()">
    <%for i = 1 to n%>
    <option value="<%=i%>" <%if cint(pageNo)=cint(i) then%> selected <%end if%>>��<%=i%>ҳ</option>
    <%next%>
  </select>
</center>
</form>

<% 
end function
'��ҳ��������-------------------------------------------
%>

<%set rs=nothing : set rs2=nothing : Conn.Close : set Conn=nothing
%>
