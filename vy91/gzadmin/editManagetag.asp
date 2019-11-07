<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<!--#Include File="../inc/config_list.asp" -->
<!--#Include File="../inc/md5.asp" -->
<%CheckAdmin3%>
<%
if request("id")<>"" then
Sql="Select * From tag where ID="&Request("ID")
Set Rs1=Server.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn,1,1
tagname=rs1("name")
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>TAG操作</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
body {
	background-color: #3366FF;
}
-->
</style></head>

<body leftmargin="0" topmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="36" bgcolor="#009900"> 
      <div align="center" style="color:#FFFFFF"><strong>TAG操作 <%=rs1("name")%>&nbsp;&nbsp;&nbsp;&nbsp;共有游戏：
          <%
Set Rs2=Server.Createobject("Adodb.Recordset")
Sql="select count(id) as sl from flash where tag like '%"&tagname&"%'"
Rs2.open Sql,Conn,1,3
Do While not Rs2.Eof
%>
          <%=rs2("sl")%>
	      <%
Rs2.Movenext
Loop
Rs2.Close
Set Rs2=nothing
%>
	    个</div></td>
  </tr>
</table>
<div>
<table width="800" border="0" align="center" cellpadding="0" cellspacing="5" bgcolor="#FFFFFF">
  <form name="form2" method="post" action="savetag.asp?action=edit&id=<%=request("id")%>">
    <tr bgcolor="#FFFFFF">
      <td height="25" colspan="2"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td height="25" colspan="2"> <%
		i=1
		maxList=100
		set rs = server.CreateObject("ADODB.RecordSet")
		Sql="select * from flash where tag like '%"&tagname&"%'"
		rs.open sql,conn,1,1
		do while not rs.EOF
		id=rs("id")
		flashname=rs("flashname")
		spic=rs("spic")
	  %>
    <div style="float:left; width:110px; height:120px;"><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/" target="_blank"><img src="/flashspic/<%=spic%>" width="100" height="75" border="0" class="loveListImg"/></a>
        <div><a href="/<%=makeUrl_flash%>/<%=left(md5(id&md5Str),1)&id%>/"  target="_blank"><%=left(flashname,7)%></a></div>
		<div align="center"><a href="editflash.asp?id=<%=id%>" target="_blank">【管理】</a></div>
  </div>
      

	  <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
	  %></td>
      </tr>
    <tr bgcolor="#FFFFFF">
      <td width="14%" height="25" align="right">标签：</td>
      <td width="86%" height="25"><input name="name" type="text" id="name" value="<%=rs1("name")%>" size="60"></td>
    </tr>
    
    <tr bgcolor="#FFFFFF"> 
      <td height="50" colspan="2" align="center"><input type="submit" name="Submit" value=" 确 定 " /></td>
      </tr>
  </form>
</table>



</div>
</body>
</html>
<%
Rs1.Close
Set Rs1=nothing
%>
<%
else
response.write"参数错误"
end if
%>



<script language="JavaScript" type="text/JavaScript">
function upwin(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}
function upwin1(rem)
{ 
	window.open(rem,'vote','width=400,height=100,directories=no,top=300,left=200,toolbar=no,status=no,scrollbars=no,resizable=yes'); 
	}

</script>
