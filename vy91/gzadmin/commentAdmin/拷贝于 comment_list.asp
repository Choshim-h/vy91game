<!--#include file="conn.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>888wang.com 评论管理</title>
<link href="../Style.css" rel="stylesheet" type="text/css" />
</head>
<%
'-------------------------------------分页各参数
	if request("page")<>"" then
	pageNo = Clng(Request("page"))'int最大值只有到32767. 
	else
		pageNo = 1
	end if
	PageSizeX = 2


	typeid=request("typeid") 
	if typeid <>"" then
		whereStr=" and typeid="&typeid
	else
		whereStr = ""
	end if
	
'------------------------------全局变量定义	
dim filename
fileName="comment_list.asp"

%>
<body>
<div style="width:98%; margin:0 auto; border:1px solid #0066FF; height:25px; line-height:25px; text-indent:1em;">
分类<input name="typeid" type="text" value="typeid" />
是否屏蔽<select name="selDisplay">
  <option value="all">不选择</option>
  <option value="display">未屏蔽</option>
  <option value="nodisplay">已屏蔽</option>
</select>  <br />
</p>
<ul>
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
		case 1 typeTitle="歌手评论"
		case 2 typeTitle="专辑评论"
		case 3 typeTitle="播放评论"
	end select 
	%>
		<li style="float:left;"><a href="<%=filename%>?typeid=<%=rs("typeid")%>"><%=typeTitle%></a></li>
	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>
</ul>
</div>


<table width="98%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="margin-top:20px;">
  <tr>
    <td width="4%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="5%" align="center" bgcolor="#79C6FF"><strong>分类</strong></td>
    <td width="12%" align="center" bgcolor="#79C6FF"><strong>评论人</strong></td>
    <td width="47%" align="center" bgcolor="#79C6FF"><strong>内容</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>时间</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>ip</strong></td>
        <td width="6%" align="center" bgcolor="#79C6FF"><strong>操作</strong></td>
  </tr>
  
  <%
'这里给要参数传值
TblName="content"   '表名
id="id"   '主键名
FldName="*"   '要显示的列名

tempNum= ((pageNo-1)*PageSizeX)+1

  sql="Select TOP "&PageSizeX&" "&fldName&" From "&TblName&" Where "&id&" <= (Select max ("&id&") From (Select TOP  "&tempNum&" "&id&" From "&TblName&" order by "&id&" desc) as t) "&whereSTr&" order by "&id&" desc" 
  response.Write(sql)
 'response.End()
  
	'sql="select id,typeid,[name],body,rad,r_id,[time],ip from content  order by id desc"
	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("暂无评论")
	else
	do while not rs.eof
	
	set rs2=conn.execute("select count(id) from content")
	totalnumber=rs2(0)
	rs2.close()
	
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
		case 1 typeTitleList="歌手"
		case 2 typeTitleList="专辑"
		case 3 typeTitleList="播放"
	end select 
	
%>

  <tr>
    <td bgcolor="#FFFFFF"><font title="评论编号"><%=id%></font>,<font title="被评论的ID"><%=r_id%></font></td>
    <td bgcolor="#FFFFFF"><%=typeTitleList%></td>
    <td bgcolor="#FFFFFF"><%=name%></td>
    <td bgcolor="#FFFFFF"><%=body%></td>
    <td bgcolor="#FFFFFF"><%=addTime%></td>
    <td bgcolor="#FFFFFF"><%=ip%></td>
    <td align="center" bgcolor="#FFFFFF">改 屏</td>
  </tr>
  
  	<%
	rs.movenext
	loop 
	end if
	rs.close
	%>


  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"></td>
  </tr>
</table>
<%showpage totalnumber,PageSizeX,fileName '调用分页函数%>

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
<form method=Post action="<%=filename%>?act=<%=act%>">
  <center>
  共<font color="#ff0000"><b><%=totalnumber%></b></font>条记录/每页<%=PageSizeX%>条
  <%if pageNo<2 then%>
  &nbsp;首页 上一页&nbsp;
  <%else%>
  &nbsp<a href="<%=filename%>?page=1&act=<%=act%>">首页</a>&nbsp; <a href="<%=filename%>?page=<%=pageNo-1%>&act=<%=act%>">上一页</a>&nbsp;
  <%
end if
if n-pageNo<1 then
%>
  下一页 末页
  <%else%>
  <a href="<%=filename%>?page=<%=pageNo+1%>&act=<%=act%>">下一页</a> <a href="<%=filename%>?page=<%=n%>&act=<%=act%>">末页</a>
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
