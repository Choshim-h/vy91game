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
<title>888wan g.com 888网 新闻管理</title>
<link href="Style.css" rel="stylesheet" type="text/css" />
<link href="date.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="date.js"></script>
<script language="javascript" type="text/javascript">
//全选按id选择,chk全选名,selectID 包含的字符
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

//提交批处理
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
				alert('888wang.com 提配您:您未勾选，至少选择一项！');
				return}
		form1.action="<%=filename_m%>?id="+str.substring(0,str.length-1)+"&act="+act;
		form1.submit();
	}

</script>
</head>

<%
'-------------------------------------分页各参数
	if request("page")<>"" then
	pageNo = Clng(Request("page"))'int最大值只有到32767. 
	else
	pageNo = 1
	end if
	PageSize =50

'------------------------------全局变量定义	
%>
<body>
<form mothod="post">
<div style="width:99%; margin:10px;  height:25px; line-height:25px; text-indent:1em; background:#CEDFFF">
分类<select name="newsClassID">
  <option value="">所有分类</option>
  	<%
	dim typeTitle
	set rs=server.createobject("adodb.recordset")
	sql="SELECT  newsClassID,newsClassName  FROM  NewsClass "
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("暂无分类")
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
起止时间<input class="input" type="text" name="txtStartTime" style="width:120" value="" id="txtStartTime" onClick="showCal(txtStartTime);">
结束时间<input class="input" type="text" name="txtEndTime" style="width:120" value="" id="txtEndTime" onClick="showCal(txtEndTime);">
<div id='dateTime' onclick='event.cancelBubble=true' style='position:absolute;visibility:hidden;width:100px;height:100px;left=0px;top=0px;z-index:100;)'>
<table  class="cal_table" border='0'><tr><td>
<script>	var c = new CalendarCalendar('c');document.write(c);</script>
</td></tr><tr><td valign='top' align='center'>
<script>	var m = new CalendarMinute('m');document.write(m);</script>
</td></tr></table><iframe src="javascript:false" style="height:200px;" class="menu_iframe"></iframe>
</div>
<SCRIPT event=onclick() for=document>hideCalendar()</SCRIPT>

&nbsp;&nbsp;标题
<input type="text" name="key"/>

<input name="btnSubmit" type="submit" value="提交" />
</div>
<div style="clear:both"></div>
</form>

<form id="form1" name="form1" method="post" >

<div style="width:99%; margin-left:10px;">
<input type="button" name="btnGetSelect" value="推荐所选" onClick="submitFormByID('chkGetID','isgood')"/> <input type="button" name="btnGetSelect" value="删除所选" onClick="{if(confirm('确定要删除记录吗?')){submitFormByID('chkGetID','del')}return false;}"/> </div>
<div style="clear:both"></div>

<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
  <tr>
    <td width="9%" align="center" bgcolor="#79C6FF" title="全选"><input id="chkAll" name="chkAll" type="checkbox"  value="chkAll" onClick="checkFormAll('chkAll','chkGet')" /></td>
    <td width="10%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>分类</strong></td>
    <td width="34%" align="center" bgcolor="#79C6FF"><strong>新闻名</strong></td>
    <td width="12%" align="center" bgcolor="#79C6FF"><strong>时间</strong></td>
        <td width="7%" align="center" bgcolor="#79C6FF"><strong>推荐</strong></td>

      <td width="15%" align="center" bgcolor="#79C6FF"><strong>操作</strong></td>
  </tr>
  
  <%
  '是否有按分类，时间，是否屏蔽，时间
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
	Response.write("<div align='center'>查询语句:"&allStr&"<div>")
 end if
 

	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("暂无信息")
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
    <td bgcolor="#FFFFFF"><font title="编号"><%=newsID%></font></td>
    <td bgcolor="#FFFFFF"><%=newsClassName%></td>
    <td bgcolor="#FFFFFF"><a href="<%=urlNews(newsID)%>" target="_blank"><%=newsTitle%></a></td>
    <td bgcolor="#FFFFFF"><%=addDate%></td>
        <td bgcolor="#FFFFFF"><a href="<%=filename_m%>?id=<%=newsID%>&act=isgood2" title="推荐">   
       <%if rs("isGood")=true then%>
       <font color=red title="取消推荐">已推荐</font>
      <%else%>
      <font title="推荐">未推荐</font>
      <%end if%>
      </a></td>

    <td align="center" bgcolor="#FFFFFF">
      <a href="NewsEdit.asp?act=edit&id=<%=newsID%>">修改</a></td>
  </tr>
<%
Rs.Movenext
Count=Count+1
Loop
end if
%>

</table>
</form>
<%showpage totalnumber,PageSize,fileName '调用分页函数%>

</body>
</html>

<%
'showpage RecordCount,PageSizeX,fileName '调用分页函数

'分页函数-----------------------------------------
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
  共<font color="#ff0000"><b><%=totalnumber%></b></font>条记录/每页<%=PageSizeX%>条
  <%if pageNo<2 then%>
  &nbsp;首页 上一页&nbsp;
  <%else%>
  &nbsp<a href="<%=filename%>?page=1&<%=requestStr%>">首页</a>&nbsp; <a href="<%=filename%>?page=<%=pageNo-1%>&<%=requestStr%>">上一页</a>&nbsp;
  <%
end if
if n-pageNo<1 then
%>
  下一页 末页
  <%else%>
  <a href="<%=filename%>?page=<%=pageNo+1%>&<%=requestStr%>">下一页</a> <a href="<%=filename%>?page=<%=n%>&<%=requestStr%>">末页</a>
  <%end if%>
  &nbsp;页次:<strong><font color="#ff0000"><%=pageNo%>/<%=n%></font></strong>页
  转到:
<select name="page" size="1" onChange="javascript:submit()">
    <%for i = 1 to n%>
    <option value="<%=i%>" <%if cint(pageNo)=cint(i) then%> selected <%end if%>>第<%=i%>页</option>
    <%next%>
  </select>
</center>
</form>

<% 
end function
'分页函数结束-------------------------------------------
%>

<%set rs=nothing : set rs2=nothing : Conn.Close : set Conn=nothing
%>
