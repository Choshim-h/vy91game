<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>FLASH������</title>
<link href="inc/Style.css" rel="stylesheet" type="text/css">
</head>
<!--#include File="top.asp" -->
<body leftmargin="0" topmargin="0">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <form name="form1" method="post" action="saveclass.asp?action=add">
  <tr>

      <td height="28"> 
        <div align="center">������<font color=red>����������������ӵģ���FLASH��������������FLASH����������ƽ������Ҹģ������޸ĺ�ԭ��������FLASH�����ܶ�����</font></div></td>
  </tr>
  <tr>
      <td height="30" bgcolor="#f1f1f1"> 
        <div align="center">�������ࣺ 
          <select name="classidadd" id="classidadd">
            <option value="0" selected>��Ϊ��������</option>
            <%
Set Rsadd=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='0'"
Rsadd.open Sql,Conn,1,3
Do While not Rsadd.Eof
%>
            <option value="<%=rsadd("id")%>">��ӵ�һ�����ࡪ<%=rsadd("name")%></option>
            <%
Rsadd.Movenext
Loop
Rsadd.Close
Set Rsadd=nothing
%>
          </select>
          �����ƣ� 
          <input name="nameadd" type="text" id="nameadd">
          ��
<input type="submit" name="Submit2" value="���">
        </div></td>

  </tr>
        </form> 
</table>
<%
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='0'"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
%>
<br>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF">
  <Form Method="post" action="SaveClass.asp?action=edit&id=<%=rs("id")%>">
    <tr bgcolor="#C1DFDF"> 
      <td width="111" height="38"> <div align="center">һ������</div></td>
      <td width="73"> <div align="center"><%=rs("id")%> </div></td>
      <td width="99"> <div align="center"><%=rs("name")%> </div></td>
      <td> <div align="right">
          <input name="classedit" type="hidden" id="classedit" value="0">
          <Input Name="Name" Type="Text" class="input" value="<%=rs("name")%>" size="15">

          <Input Type="Submit" Name="Submit" value="�޸�" class="subbt">
        </div></td>
      <td width="111"> <div align="center"><a href="saveclass.asp?action=del&classid=<%=rs("id")%>"> 
          ɾ��</a></div></td>
      <td width="92"> <div align="center"><a href="html_makeclass.asp?nclass=<%=rs("id")%>&page=1" target=_blank>����</a></div></td>
    </tr>
  </form>
  <%
Set Rs2=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='"&rs("id")&"'"
Rs2.open Sql,Conn,1,3
Do While not Rs2.Eof
%>
  <Form Method="post" action="SaveClass.asp?action=edit&id=<%=rs2("id")%>">
    <tr bgcolor="#f1f1f1"> 
      <td width="111" height="27"> <div align="center">��������</div></td>
      <td width="73"> <div align="center"><%=rs2("id")%> </div></td>
      <td width="99"> <div align="center"><%=rs2("name")%></div></td>
      <td> <div align="right">�������� 
          <select name="classedit">
            <%
Set Rs3=Server.Createobject("Adodb.Recordset")
Sql="Select * From Class where classid='0'"
Rs3.open Sql,Conn,1,3
Do While not Rs3.Eof
%>
            <option value="<%=rs3("id")%>" <%if rs3("id")=rs("id") then%>selected<%end if%>><%=rs3("name")%></option>
            <%
Rs3.Movenext
Loop
Rs3.Close
Set Rs3=nothing
%>
          </select>
          <Input Name="Name" Type="Text" class="input" value="<%=rs2("name")%>" size="15">
          <Input Type="Submit" Name="Submit" value="�޸�" class="subbt">
        </div></td>
      <td width="111"> <div align="center"> <a href="saveclass.asp?action=del&classid=<%=rs2("id")%>"> 
          ɾ��</a> </div></td>
      <td width="92"> <div align="center"><a href="html_makeclass2.asp?classid=<%=rs2("id")%>&page=1" target=_blank>����</a></div></td>
    </tr>
  </form>
  <%
Rs2.Movenext
Loop
Rs2.Close
Set Rs2=nothing
%>
</table>
<%
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
Conn.Close
Set Conn=nothing
%>

<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>



