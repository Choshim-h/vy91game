<!--#include file="conn.asp"-->
<%
dim filename,filename_m
fileName="NewsClass.asp"
filename_m="NewsClassAction.asp"
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="Style.css" rel="stylesheet" type="text/css" />

<title>�ޱ����ĵ�</title>
</head>

<body style="padding:10px">

<form id="form1" name="form1" method="post" >


<table  border="0" cellpadding="1" cellspacing="1" bgcolor="#D7EEFF" style="width:99%; margin-left:10px;" >
  <tr>
    <td width="10%" align="center" bgcolor="#79C6FF"><strong>id</strong></td>
    <td width="13%" align="center" bgcolor="#79C6FF"><strong>������</strong></td>
    <td width="12%" align="center" bgcolor="#79C6FF"><strong>ʱ��</strong></td>
    <td width="7%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
	<td width="15%" align="center" bgcolor="#79C6FF"><strong>����</strong></td>
  </tr>
  
  <%
  	set rs=server.createobject("adodb.recordset")

 	sql="SELECT newsclassid,newsClassName,addDate,seq FROM NewsClass "

	rs.open sql,conn,1,1
	if rs.eof and rs.bof then
		response.Write("������Ϣ")
	else
	Do While not Rs.Eof
	newsclassid=rs("newsclassid")
	newsClassName=rs("newsClassName")
	addDate=rs("addDate")
	seq=rs("seq")
%>

  <tr>
    <td bgcolor="#FFFFFF"><font title="���"><%=newsClassID%></font></td>
    <td bgcolor="#FFFFFF"><%=newsClassName%></td>
    <td bgcolor="#FFFFFF"><%=addDate%></td>
    <td bgcolor="#FFFFFF"><%=seq%></td>
    <td align="center" bgcolor="#FFFFFF">
      <a href="NewsClassEdit.asp?act=edit&id=<%=newsClassID%>">�޸�</a>
       <a onClick="{if(confirm('ȷ��Ҫɾ����¼��?')){return true;}return false;}" href="<%=filename_m%>?id=<%=newsClassID%>&act=del" title="ɾ��">ɾ��</a></td>
  </tr>
<%
Rs.Movenext
Loop
end if
%>

</table>
</form>
</body>
</html>
