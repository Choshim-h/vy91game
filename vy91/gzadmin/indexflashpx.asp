<META HTTP-EQUIV="expires" CONTENT="0">
<% Response.Expires = -1
  Response.ExpiresAbsolute = Now() - 1
  Response.cachecontrol = "no-cache"
 %>
<!--#include File="Conn.asp" -->
<!--#include file="top.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="../inc/config_list.asp"-->
<!--#include file="../inc/md5.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->

<%CheckAdmin3%>
<html>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
form{margin:0px;display: inline}
-->
</style><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH管理</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="34" bgcolor="#7B9AE7"> <div align="center">FLASH管理首页</div>
      <div align="center"></div></td>
  </tr>
  <tr> 
    <td height="31" bgcolor="#FFFFFF"> 
    </td>
  </tr>
  	<%
if request("nclass")<>""then

%>
  <tr>
    <td height="28" bgcolor="#FFFFFF"> 
    </td>
  </tr>
<%end if%>
</table>
<br>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">

  <tr bgcolor="#FFFFFF">
    <td width="1001"> 
	<%

        set rs = server.CreateObject("ADODB.RecordSet")
		sql="select * from flash where mpic<>'' and tag like '%html5%' order by geshou desc,id desc"	
		rs.open sql,conn,1,1
		do while not rs.EOF

	  %>
      <div style="width:200px; height:280px; float:left; margin-left:20px;"><div align="center"style="height:200px; width:200px; overflow:hidden;"><div style="position:absolute; width:40px; height:12px; background-color:#FF6600; color:#FFFFFF; overflow:hidden;"><%=rs("hits")%></div><a href="/<%=makeUrl_flash%>/<%=left(md5(rs("id")&md5Str),1)&rs("id")%>/" title=点击查看HTML页 target=_blank><img src="http://m.acool.com/<%=rs("mpic")%>" alt="<%=rs("flashname")%>" width="200"/></a></div><div align="center" style="height:20px; width:200px; overflow:hidden;"><a href="editflash.asp?id=<%=rs("id")%>"><%=rs("flashname")%></a></div>
        <div align="center" style="height:40px; width:200px; overflow:hidden;"><form name="form2" method="post" action="888wang_flash_geshou.asp?act=edithits&id=<%=rs("id")%>">
          <input type="text" name="geshou" size="5" value="<%=rs("geshou")%>">
          <input type="submit" name="Submit2" value="go">
        </form><br>
       <a href="888wang_flash_isgood.asp?act=SetIsClass&id=<%=rs("id")%>">

        <%if rs("isClass")="1" then%>
        <font color=red>已经典</font>
        <%else%>
        未经典
        <%end if%>
    </a></div></div><%
			rs.movenext
			loop
			rs.close
			set rs=nothing
%>

</td>
  </tr>

  
</table>
<p>&nbsp;</p>
</body>
</html>


