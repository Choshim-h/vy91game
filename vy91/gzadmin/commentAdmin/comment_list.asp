<!--#include file="conn.asp"-->
<%
dim filename,filename_m
fileName="comment_list.asp"
filename_m="comment_m.asp"

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>评论管理</title>
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
				alert('您未勾选，至少选择一项！');
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
	PageSize = 200

'------------------------------全局变量定义	
%>
<body>
<form mothod="post">
<div style="width:99%; margin:10px;  height:25px; line-height:25px; text-indent:1em; background:#CEDFFF">
分类<select name="typeid">
  <option value="">所有分类</option>
  	<%
	dim typeTitle
	set rs=server.createobject("adodb.recordset")
	sql="select typeid from content group by typeid order by typeid "
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("暂无分类")
	else
	do while not rs.eof
	typeid=rs("typeid")
	select case typeid
		case 1 typeTitle="播放"
		case 2 typeTitle="分类2"
		case 3 typeTitle="分类3"
	end select 
	%>
      <option value="<%=rs("typeid")%>"><%=typeTitle%></option>
	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>

</select> 
&nbsp;&nbsp;
是否屏蔽<select name="delFlag">
  <option value="">不选择</option>
  <option value="no">未屏蔽</option>
  <option value="yes">已屏蔽</option>
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

&nbsp;&nbsp;
包含内容<input type="text" name="key"/>

<input name="btnSubmit" type="submit" value="提交" />
</div>
<div style="clear:both"></div>
</form>

<form id="form1" name="form1" method="post" >

<div style="width:99%; margin-left:10px;">
<input type="button" name="btnGetSelect" value="取消屏蔽" onClick="submitFormByID('chkGetID','delFlag3')"/> <input type="button" name="btnGetSelect" value="屏蔽所选" onClick="submitFormByID('chkGetID','delFlag')"/> <input type="button" name="btnGetSelect" value="删除所选" onClick="{if(confirm('确定要删除记录吗?')){submitFormByID('chkGetID','del')}return false;}"/> </div>
<div style="clear:both"></div>

<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
  <tr>
    <td width="2%" align="center" bgcolor="#79C6FF" title="全选"><input id="chkAll" name="chkAll" type="checkbox"  value="chkAll" onClick="checkFormAll('chkAll','chkGet')" /></td>
    <td width="3%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="6%" align="center" bgcolor="#79C6FF"><strong>分类</strong></td>
    <td width="10%" align="center" bgcolor="#79C6FF"><strong>评论人</strong></td>
    <td width="50%" align="center" bgcolor="#79C6FF"><strong>内容</strong></td>
    <td width="11%" align="center" bgcolor="#79C6FF"><strong>时间</strong></td>
    <td width="10%" align="center" bgcolor="#79C6FF"><strong>ip</strong></td>
        <td width="8%" align="center" bgcolor="#79C6FF"><strong>操作</strong></td>
  </tr>
  
  <%

  '是否有按分类，时间，是否屏蔽，时间
  typeid=request("typeid")
  delFlag=request("delFlag")
  startTime=request("txtStartTime")
  endTime=request("txtEndTime")
  key=request("key")

  if typeid<>""  then
  		typeStr=" and typeid="&typeid&""
  end if
  
  if  delFlag<>"" then
	     delFlagStr=" and delFlag='"&delFlag&"'"
  end if
  

  
     if  startTime<>"" then
   		if sqlConn=0 then 
			startTimeStr=" and  [time]>#"&startTime&"#"
		else
			startTimeStr=" and [time]>'"&startTime&"'"
		end if
  end if
  
   if  endTime<>"" then
   		if sqlConn=0 then 
			 endTimeStr=" and [time]<#"&endTime&"#"
		 else
		 	  endTimeStr=" and [time]<'"&endTime&"'"
		 end if
  end if
  
     if  key<>"" then
	       keyStr=" and body like '"&key&"' "
  end if
  
  allStr=typeStr&delFlagStr&startTimeStr&endTimeStr&keyStr
  
  if allStr<>"" then
  	allStr=mid(trim(allStr),4,len(allStr))
  end if
  
  requestStr="typeid="&typeid&"&delFlag="&delFlag&"&startTime="&startTime&"&endTime="&endTime&"&key="&key&""
  
  if allStr="" or IsNull(allStr) then
	sql="select id,typeid,[name],body,rad,r_id,[time],ip,delflag from content  order by id desc"
  else
  	sql="select id,typeid,[name],body,rad,r_id,[time],ip,delflag from content where "&allStr&"  order by id desc"
	Response.write("<div align='center'>查询语句:"&allStr&"<div>")
 end if
 
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("暂无评论")
	else
	
	rs.pagesize=pagesize
	rs.absolutePage=pageNo
	totalnumber=rs.recordcount
	
	count=0
	Do While not Rs.Eof And Count<Rs.PageSize
	dim typeTitleList
	typeTitleList=""
	
	id=rs("id")
	typeid=rs("typeid")

	[name]=rs("name")

	id=rs("id")

	body=rs("body")

	r_id=rs("r_id")

	addTime=rs("time")

	ip=rs("ip")

	select case typeid
		case 1 typeTitleList="播放"
		case 2 typeTitleList="分类2"
		case 3 typeTitleList="分类3"
	end select 
	
%>

  <tr>
    <td bgcolor="#FFFFFF"> <input name="chkGetID" type="checkbox" id="chkGetID" value="<%=id%>" /></td>
    <td bgcolor="#FFFFFF"><font title="评论编号"><%=id%></font></td>
    <td bgcolor="#FFFFFF"><%=typeTitleList%>-<font title="被评论的ID"><%=r_id%></font></td>
    <td bgcolor="#FFFFFF"><%=name%></td>
    <td bgcolor="#FFFFFF"><%=body%></td>
    <td bgcolor="#FFFFFF"><%=addTime%></td>
    <td bgcolor="#FFFFFF"><%=ip%></td>
    <td align="center" bgcolor="#FFFFFF"><a href="<%=filename_m%>?id=<%=id%>&act=delFlag2" title="屏蔽不显示">   
       <%if rs("delFlag")="yes" then%>
       <font color=red title="取消屏蔽">已屏</font>
      <%else%>
      <font title="屏蔽不显示">屏蔽</font>
      <%end if%>
      </a>
      
       <a onClick="{if(confirm('确定要删除记录吗?')){return true;}return false;}" href="<%=filename_m%>?id=<%=id%>&act=del" title="删除">删</a></td>
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
