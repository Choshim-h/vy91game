<!--#include File="Conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="Style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../../jquery/xheditor/common.css" type="text/css" media="screen" />
<script type="text/javascript" src="../../jquery/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../../jquery/xheditor/xheditor.js"></script>
<title>无标题文档</title>
</head>

<%
fileName="newsClassEdit.asp"
id=request("id")
act=request("act")

Set Rs=Server.Createobject("Adodb.Recordset")
if act="edit" then
Sql="SELECT newsclassid,newsParentID,newsClassName,addDate,seq FROM NewsClass   where newsClassID="&id
Rs.open Sql,Conn,1,1
	newsclassid=rs("newsclassid")
	newsParentID=rs("newsParentID")
	newsClassName=rs("newsClassName")
	addDate=rs("addDate")
	seq=rs("seq")
rs.close
end if


if act="add" then
	newsclassid=""
	newsParentID=""
	newsClassName=""
	addDate=now()
	seq=0
end if
%>

<body>
<form id="form1" name="form1" method="post" action="NewsClassEditAction.asp">

<div style="width:99%; margin-left:10px;">
<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
<tr>  
    <td height="20" colspan="2" align="center" bgcolor="#0080C0">添加新闻分类 </td>
    </tr>
  
  <tr>
    <td width="25%" bgcolor="#FFFFFF">分类名</td>
    <td width="75%" bgcolor="#FFFFFF"><input name="newsClassName" type="text" value="<%=newsClassName%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">时间</td>
    <td bgcolor="#FFFFFF"><input name="adddate" type="text" value="<%=adddate%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">排序</td>
    <td bgcolor="#FFFFFF"><input name="seq" type="text" value="<%=seq%>" /></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF">&nbsp;</td>
    <td bgcolor="#FFFFFF"><input name="act" type="hidden" value="<%=act%>" /><input name="newsClassID" type="hidden" value="<%=newsClassID%>" /><input type="submit" name="button" id="button" value="提交" />
      <input type="reset" name="button2" id="button2" value="重置" /></td>
  </tr>
</table>
</div>
</form>
</body>
</html>
