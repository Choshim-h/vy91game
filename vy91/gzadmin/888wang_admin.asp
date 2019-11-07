<!--#include file="conn.asp"-->
<!--#include file="top.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>管理</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">

<table border="0" width="100%" cellspacing="0" cellpadding="5">
  <tr>
    <td align=center valign=top>
      <table border="1" width="88%" cellspacing="0" cellpadding="0" class="bordercolor" bordercolordark="#FFFFFF">
          <tr>
            <td width="100%" height="20" colspan=7 class="bg1" align=center><font color="white"><b>管 理 员 列 表</b></font></td>
        </tr>
        <tr>
          <td width="25%" align="center" background="tt90/bgleft.gif" height="22">管理员名</td>
          <td width="20%" align="center" background="tt90/bgleft.gif">权限</td>
          <td width="10%" align="center" background="tt90/bgleft.gif">修改</td>
          <td width="10%" align="center" background="tt90/bgleft.gif">删除</td>
        </tr>
<%
set rs=server.CreateObject("ADODB.RecordSet")
	  
sql="select * from admin"
rs.open sql,conn,1
%> 
<%
if rs.EOF then
%>
        <tr><td colspan=5 align=center>没有用户：（</td></tr>
<%
else
	do while NOT rs.EOF
if rs("oskey")="super" then oskey="高级管理员"
if rs("oskey")="check" then oskey="中级管理员"
if rs("oskey")="input" then oskey="初级管理员"
%> 
        <tr> 
          <td width="25%" align="center" height="19"><%=rs("Username")%></td>
          <td width="20%" align="center"><%=oskey%>　</td>
          <td width="10%" align="center"><a href="888wang_admin_edit.asp?id=<%=rs("id")%>">修改</a></td>
          <td width="10%" align="center"><a href="888wang_admin_del.asp?id=<%=rs("id")%>" onClick="{if(confirm('确定要删除记录吗?')){return true;}return false;}">删除</a></td>
        </tr>
<%
	rs.MoveNext
	loop
end if
rs.close
%> 
      </table>
      <FORM METHOD=POST ACTION="888wang_admin_m.asp" id=form1 name=form1>
        <table border="1" width="40%" cellspacing="0" cellpadding="0" class="bordercolor" bordercolordark="#FFFFFF">
          <tr class="bg1"> 
            <td align="center" height=20 colspan=2><font color="white"><b>添 加 管 理 员</b></font></td>
          </tr>
          <tr>
            <td align="right">管 理 员 名：</td>
            <td><input class="input"  type="text" name="UserName" value="" size="15" size="14" maxlength="30"></td>
          </tr>
          <tr> 
            <td align="right">管 理 权 限：</td>
            <td>
              <select class=input name="oskey">
                <option value=super selected>高级管理员</option>
                <option value=check>中级管理员</option>
                <option value=input>初级管理员</option>
              </select>
            </td>
          </tr>
          <tr> 
            <td align="right">管 理 密 码：</td>
            <td><input class=input  type=text name=Password size="15"  value="" onfocus=this.select() onmouseover=this.focus()  size=14 maxlength="30"></td>
          </tr>
          <tr> 
            <td align="center" colspan=2> 
             <input class=input  type=hidden value="add" name="act">
             <input class=input  type=submit value=增加 name="submit">
             <input class=input  type=reset name="Submit" value="取消">
            </td>
          </tr>
        </table>
      </FORM>
    </td>
  </tr>
</table>
</div>
<%
set rs=nothing
conn.close
set conn=nothing
%>

</body></html>


<html></html>


