<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->

<%CheckAdmin3%>
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<BODY leftmargin="0" bottommargin="0" rightmargin="0" topmargin="0" marginheight="0" marginwidth="0">
<%

call main()
	
sub main()
%>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="border">
<tr>
  <th align=center colspan=3   width="717" height=1> </th>
<tr width="100%">
  <td class=tdbg><font color=red>本操作仅限高级、对SQL编程比较熟悉的用户<br>
    您可以直接输入SQL执行语句，比如:<br>
    DELETE FROM flash WHERE flashname='%土星大战%'<br>
    在操作前请慎重考虑您的执行语句是否正确和完整，执行后不可恢复。</font></td>
</tr>
<%
if request("action") = "save" then
dim SQL_Statement
SQL_Statement=Request("SQL_Statement")
if SQL_Statement<>Empty then
On Error Resume Next 
conn.Execute(SQL_Statement)
if err.number="0" then%>
<tr>
  <th align=center colspan=3  width="717" height=1><b>执行结果:成功执行</b></th>
</tr>
<tr>
  <td align=center colspan=3  width="717" height=1>执行语名：<%=SQL_Statement%> </td>
</tr>
<%
else%>
<tr>
  <th align=center colspan=3  width="717" height=1><b>执行结果</b></th>
</tr>
<tr>
  <td align=center colspan=3  width="717" height=1><%response.write "语句有问题，具体出错如下：<br>"
response.write Err.Description%>
  </td>
</tr>
<%
err.clear
end if
end if
else
%>
<tr>
  <th align=center colspan=3 width="717" height=1><b>请输入SQL语句</b></th>
</tr>
<tr>
  <td align=center colspan=3 width="717" class=tdbg><Form Name=FormPst Method=Post Action="888wang_Data_Sql.asp?action=save">
      <FieldSet>
      <Legend>请输入SQL语句</Legend>
      指令：
      <textarea name="SQL_Statement" cols="80" rows="3" ></textarea>
      <p>
        <Input class=input type="Submit" Value="执行此SQL语句">
      <p>
      </FieldSet>
    </Form></td>
</tr>

<tr width="100%">
  <td class=tdbg><font color=red>常用Sql语句</font><br>
    清空所有《大家正在玩》数据:truncate table onlineGame<br>
    清空所有《大家正在玩》超过30分钟的数据:delete from onlineGame where datediff(ss,addDate,getDate())>1800<br>
   </td>
</tr>


<%
        end if
		 
 conn.close
 set conn=nothing
	end sub
%>


