<!--#Include File="Conn.asp" -->
<!--#include file="CheckPost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
'��ȡ��վ������Ϣ,888wang.com������վϵͳ��QQ��56566918
	set rs = server.CreateObject("ADODB.RecordSEt")
	sql="select top 1 * from [system]"
	rs.open sql,conn,1,1
	if not rs.EOF then
		CountCode = rs("CountCode")
	end if
	rs.close
	'response.write Copyright
	set rs=nothing
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta copy="�������� [������ QQ:56566918] ; ��Ȩ����!">
<link href="Style.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" type="text/javascript">
 function change(){
 form1.body.value="document.writeln(\""+form1.osource.value.replace(/\\/g,"\\\\").replace(/\//g,"\\/").replace(/\'/g,"\\\'").replace(/\"/g,"\\\"").split('\r\n').join("\");\ndocument.writeln(\"")+"\");"
 }
</script>
</head>

<body topmargin="1" leftmargin="1" onLoad="change()">
<form action="make_count_ok.asp" name="form1" method="post">
  <table width="80%" border="0" align="center" cellpadding="2" cellspacing="0" class="bordercolor">
  <tr class="bg1">
    <td>������վ�����ļ����˲����Զ����ײ�ģ��תΪjs���룬����Ҫ�����ǵ��--����</td>
  </tr>
  <tr>
    <td>תΪjsǰ</td>
  </tr>
  <tr>
    <td align="center"><textarea name="osource" cols="100" rows="10" id="osource" onpropertychange="change()"><%=CountCode%>
</textarea></td>
  </tr>
  <tr>
    <td>ת��js��</td>
  </tr>
  <tr>
    <td align="center"><textarea name="body" cols="100" rows="10" id="oresult2" onload='this.select();oresult.createtextrange().execcommand("copy")'></textarea></td>
  </tr>
  <tr>
    <td align="center"><input type="submit" name="Submit" value="����" /></td>
  </tr>
</table>
</form>
</body>
</html>


