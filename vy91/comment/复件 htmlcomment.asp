<!--#include file="conn.asp" -->
<%
  r_id=request("r_id")
  typeid=request("typeid")
  set rs=server.createobject("adodb.recordset")                                         
  sql="select top 20 [name],body,rad,r_id,[time]  from content where r_id ="&r_id&" and typeid="&typeid&" and delFlag='no' ORDER BY id DESC"    
  rs.open sql,conn,1,1 
  if (rs.eof and rs.bof) then
    commentlist1="暂无评论"
  end if
    do while not rs.eof  
	commentlist1=commentlist1&"<div class=ccline><span style=color:#000000><strong>"&rs("name")&"</strong></span>&nbsp;&nbsp;&nbsp;<span style=color:#9c9c9c>发布于："&rs("time")&"</span><div class=ccline1><IMG height=20 src=/comment/imamges/"&rs("rad")&".gif width=20 border=0>"&rs("body")&"</div></div>"
rs.movenext
loop
rs.close
%>
document.write("<script language=javascript>commentlist.innerHTML='<%=commentlist1%>'</script>")