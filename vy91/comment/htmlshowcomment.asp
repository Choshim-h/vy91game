<!--#include file="conn.asp" -->
<%
  r_id=request("id")
  typeid=request("typeid")
if not isempty(request("page")) then
	currentPage=cint(request("page"))
else
	currentPage=1
end if
%>
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
A {
	COLOR: #535352;
	TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff0000;
	TEXT-DECORATION: underline
}
.line {

margin-bottom:3px;
border-bottom:2  #E4E4E4 solid ;
padding:5px;
}
body,td,th {
	font-size: 12px;
	color: #0099FF;
}
</STYLE>
<link href="http://www.ganzhe.com/myimg/61133.css" rel="stylesheet" type="text/css" />
<SCRIPT src="imamges/showpages.js"></SCRIPT>
<META content="MSHTML 6.00.2900.2995" name=GENERATOR>
</HEAD>
<BODY>
<%
set rs=server.createobject("adodb.recordset")
sql="select [name],body,rad,r_id,[time]  from content where r_id ="&r_id&" and typeid="&typeid&" and delFlag='no' ORDER BY id DESC" 
rs.open sql,conn,1,1
if rs.eof and rs.bof then 
	response.write "<p align='center'>暂无评论</p>" 
else 
	MaxPerPage=20
	PageUrl="showcomment.asp"
	totalPut=rs.recordcount 
	if currentpage<1 then currentpage=1
	if (currentpage-1)*MaxPerPage>totalput then 
		if (totalPut mod MaxPerPage)=0 then 
			currentpage= totalPut \ MaxPerPage 
		else 
			currentpage= totalPut \ MaxPerPage + 1 
		end if 
	end if 
	if currentPage=1 then 
		showContent 
		showpage totalput,MaxPerPage,PageUrl
	else 
		if (currentPage-1)*MaxPerPage<totalPut then 
			rs.move  (currentPage-1)*MaxPerPage 
			dim bookmark 
			bookmark=rs.bookmark 
			showContent 
			showpage totalput,MaxPerPage,PageUrl
		else 
			currentPage=1 
			showContent 
			showpage totalput,MaxPerPage,PageUrl
		end if 
	end if 
end if 
rs.close 
			
sub showContent 
i=0 

do while not rs.eof
	i=i+1
%>

<div align="center">
<div style="width:600px;" align="left">
<div class=ccline><span style=color:#000000><strong><%=rs("name")%></strong></span>&nbsp;&nbsp;&nbsp;<span style=color:#9c9c9c>发布于：<%=rs("time")%></span><div class=ccline1><IMG height=20 src=/comment/imamges/<%=rs("rad")%>.gif width=20 border=0><%=rs("body")%></div></div>
</div>
</div>
<% 
if i>=MaxPerPage then exit do
rs.movenext
loop    

end sub 

function showpage(totalnumber,maxperpage,filename)
if totalnumber mod maxperpage=0 then
	n= totalnumber \ maxperpage
else
	n= totalnumber \ maxperpage+1
end if                                 
%>

<div align="right">
<form method=Post action="<%=filename%>?id=<%=r_id%>&typeid=<%=typeid%>">
<%if CurrentPage<2 then%>
  &nbsp;首页 上一页&nbsp;
<%else%>
  &nbsp<a href="<%=filename%>?page=1&id=<%=r_id%>&typeid=<%=typeid%>">首页</a>&nbsp;
  <a href="<%=filename%>?page=<%=CurrentPage-1%>&id=<%=r_id%>&typeid=<%=typeid%>">上一页</a>&nbsp;
<%
end if
if n-currentpage<1 then
%>
  下一页 末页
<%else%>
  <a href="<%=filename%>?page=<%=CurrentPage+1%>&id=<%=r_id%>&typeid=<%=typeid%>">下一页</a>
  <a href="<%=filename%>?page=<%=n%>&id=<%=r_id%>&typeid=<%=typeid%>">末页</a>
<%end if%>
  &nbsp;页次:<strong><font color="red"><%=CurrentPage%>/<%=n%></font></strong>页
  转到:<select name="page" size="1" onChange="javascript:submit()">
<%for i = 1 to n%>           
  <option value="<%=i%>" <%if cint(CurrentPage)=cint(i) then%> selected <%end if%>>第<%=i%>页</option>   
<%next%>   
  </select>        
</form>    
</div>    
<%end function%>
<%
set rs=nothing
conn.close
set conn=nothing%>