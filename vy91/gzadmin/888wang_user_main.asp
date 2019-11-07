<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<%
if not isempty(request("page")) then
	currentPage=cint(request("page"))
else
	currentPage=1
end if
%>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<div align="center">
<center>
<table border="0" width="86%" cellspacing="1" cellpadding="1">
 <tr>
<td align=center valign=top>
<%
set rs=server.createobject("adodb.recordset")
sql="select * from [user] order by id desc" 
rs.open sql,conn,1,1
if rs.eof and rs.bof then 
	response.write "<p align='center'>暂时没有用户注册</p>" 
else 
	MaxPerPage=20
	PageUrl="888wang_user_main.asp"
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
		showpage totalput,MaxPerPage,PageUrl
		showContent 
		showpage totalput,MaxPerPage,PageUrl
	else 
		if (currentPage-1)*MaxPerPage<totalPut then 
			rs.move  (currentPage-1)*MaxPerPage 
			dim bookmark 
			bookmark=rs.bookmark 
			showpage totalput,MaxPerPage,PageUrl
			showContent 
			showpage totalput,MaxPerPage,PageUrl
		else 
			currentPage=1 
			showpage totalput,MaxPerPage,PageUrl
			showContent 
			showpage totalput,MaxPerPage,PageUrl
		end if 
	end if 
end if 
rs.close 
			
sub showContent 
i=0 
%>
            <table border="1" width="100%" cellspacing="0" cellpadding="0" class="bordercolor" bordercolordark="#FFFFFF">
                  <tr>
                <td width="9%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">ID</font></td>
                <td width="18%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">用户名</font></td>
				<td width="11%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">积分</font></td>
                <td width="11%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">修改资料</font></td>
                <td width="12%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">锁定用户</font></td>
				<td width="27%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">锁定用户积分</font></td>
                <td width="12%" height=22 align=center background="tt90/bgleft.gif"><font color="#0069B4">删除</font></td>
              </tr>
<%
do while not rs.eof
	i=i+1
%>
              <tr>
                <td height="22" align=center><%=rs("id")%>　</td>
                <td align=center><a href="888wang_user_modify.asp?id=<%=rs("id")%>"><%=rs("UserName")%> </a></td>
				<td align=center><a href="888wang_user_modify.asp?id=<%=rs("id")%>"><%=rs("UserScore")%> </a></td>
                <td align=center><a href="888wang_user_modify.asp?id=<%=rs("id")%>">修改</a></td>
                <td align=center><a href="888wang_user_lock.asp?id=<%=rs("id")%>&act=lock"><%if rs("lockuser")="1" then%><font color=red>已锁定</font><%else%><font color=BLUE>未锁定</font><%end if%> </a></td>
				
				<td align=center><a href="888wang_user_lock.asp?id=<%=rs("id")%>&act=warning"><%if rs("userWarning")="yes" then%><font color=red>已锁定</font><%else%><font color=BLUE>未锁定</font><%end if%> </a></td>
				
                <td align=center><a href="888wang_user_del.asp?id=<%=rs("id")%>" onClick="{if(confirm('确定要删除记录吗?')){return true;}return false;}">删除</a></td>
              </tr>
<%
	if i>=MaxPerPage then exit do
rs.movenext
loop
%>
            </table>
<%
end sub 

function showpage(totalnumber,maxperpage,filename)
if totalnumber mod maxperpage=0 then
	n= totalnumber \ maxperpage
else
	n= totalnumber \ maxperpage+1
end if
%>
<form method=Post action="<%=filename%>?classid=<%=classid%>&Nclassid=<%=Nclassid%>">
  <center>共<font color="red"><b><%=totalnumber%></b></font>个用户
<%if CurrentPage<2 then%>
  &nbsp;首页 上一页&nbsp;
<%else%>
  &nbsp<a href="<%=filename%>?page=1&classid=<%=classid%>&Nclassid=<%=Nclassid%>">首页</a>&nbsp;
  <a href="<%=filename%>?page=<%=CurrentPage-1%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">上一页</a>&nbsp;
<%
end if
if n-currentpage<1 then
%>
  下一页 末页
<%else%>
  <a href="<%=filename%>?page=<%=CurrentPage+1%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">下一页</a>
  <a href="<%=filename%>?page=<%=n%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">末页</a>
<%end if%>
  &nbsp;页次:<strong><font color="red"><%=CurrentPage%>/<%=n%></font></strong>页
  转到:<select name="page" size="1" onChange="javascript:submit()">
<%for i = 1 to n%>           
  <option value="<%=i%>" <%if cint(CurrentPage)=cint(i) then%> selected <%end if%>>第<%=i%>页</option>   
<%next%>   
  </select>        
</form>        
<%end function%>
    </td>
  </tr>
  </table>
</div>
<%
set rs=nothing
conn.close
set conn=nothing%></body></html>







