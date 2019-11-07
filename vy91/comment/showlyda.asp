<!--#include file="conn.asp" -->
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
<SCRIPT src="imamges/showpages.js"></SCRIPT>
<META content="MSHTML 6.00.2900.2995" name=GENERATOR>
</HEAD>
<BODY>
<%
'==============================================
'程序开发 888网 www.888wang.com QQ:56566918
'=============================================
  r_id=request("r_id")
  typeid=request("typeid")
  set rs=server.createobject("adodb.recordset")                                         
  sql="select top 20 [name],body,rad,r_id,[time]  from content where r_id ="&r_id&" and typeid="&typeid&" and delFlag='no' ORDER BY id DESC"    
 ' response.Write(sql)
  'response.End() 
  rs.open sql,conn,1,1 
  if (rs.eof and rs.bof) then
 	 response.Write("暂无评论")
  end if
%>
<%         
    '显示数据过程开始----------------------------------------------------
    do while not rs.eof  
%>
<div class="line">
<span>
<IMG height=20 src="imamges/<%=rs("rad")%>.gif" width=20 border=0>
<STRONG title=" <%=rs("time")%>"  style="color:#666666"><%=rs("name")%> </STRONG>
</span>
<%=rs("body")%>

</div>
<% 
rs.movenext                                       
loop                                       
rs.close                                       
%>

