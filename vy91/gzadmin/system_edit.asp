<!--#include file="conn.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<html>
<%
If Request("action") = "password" Then

webname = Request.Form("webname")
weburl = Request.Form("weburl")
zzname = Request.Form("zzname")
webemail = Request.Form("webemail")
webqq = Request.Form("webqq")
makeUrl = Request.Form("makeUrl")
if makeUrl="" then
makeUrl="888wang.com"
end if
makeUrl_flash = Request.Form("makeUrl_flash")
makeUrl_flash_load = Request.Form("makeUrl_flash_load")
makeUrl_class = Request.Form("makeUrl_class")
makeUrl_tag = Request.Form("makeUrl_tag")
makeUrl_class = Request.Form("makeUrl_class")
countCode = Request.Form("countCode")
record = Request.Form("record")
keywords = Request.Form("keywords")
descriptions = Request.Form("descriptions")
copyright = Request.Form("copyright")

scoreLogin = Request.Form("scoreLogin")
scoreBrowse = Request.Form("scoreBrowse")
scoreSend = Request.Form("scoreSend")
warningTime = Request.Form("warningTime")
warningNum = Request.Form("warningNum")
scoreUnit = Request.Form("scoreUnit")
QmoneyUnit = Request.Form("QmoneyUnit")

Set rs=Server.CreateObject("ADODB.Recordset")
sql="select top 1 * from system"
rs.open sql,conn,3,3
rs("webname")=webname
rs("weburl")=weburl
rs("zzname")=zzname
rs("webemail")=webemail
rs("webqq")=webqq
rs("makeUrl")=makeUrl
rs("makeUrl_flash")=makeUrl_flash
rs("makeUrl_flash_load")=makeUrl_flash_load
rs("makeUrl_class")=makeUrl_class
rs("makeUrl_tag")=makeUrl_tag
rs("countCode")=countCode
rs("record")=record
rs("keywords")=keywords
rs("descriptions")=descriptions
rs("copyright")=copyright

rs("scoreLogin") = scoreLogin 
rs("scoreBrowse")=scoreBrowse 
rs("scoreSend")=scoreSend 

rs("warningTime")=warningTime 
rs("warningNum")=warningNum

rs("scoreUnit")=scoreUnit
rs("QmoneyUnit")=QmoneyUnit
rs.update

rs.close
Response.Write "<script>alert(""�޸ĳɹ���"");location.href=""javascript:history.back(-1)"";</script>"
Response.End
End IF
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�������</title>
</head>
<%
set rs = createobject("ADODB.recordset")
SQL = "select top 1 * from [system]"
rs.open SQL,conn
if not rs.eof then
%>
<style>
<!--
td           { font-size: 14px }
-->
</style>
<body topmargin="5" leftmargin="5" style="text-align: left" bgcolor="#C2C9DC">
<form method="POST" action="?action=password" name="form1">
<table border="0" cellspacing="1" style="border-collapse: collapse" width="719" cellpadding="3" id="AutoNumber1" height="555">
  <tr>
    <td height="67" colspan="2">��ǰλ�ã�&gt;&gt;��������&gt;&gt;ϵͳ����</td>
  </tr>
  <tr>
    <td width="136" height="23" align="right">��վ���ƣ�</td>
    <td width="568" height="23">
      <input name="webname" type="text" id="webname" value="<%=rs("webname")%>" size="50"> ��ǩ{webName}</td>
  </tr>
   <tr>
    <td width="136" height="23" align="right">��վ��ַ��</td>
    <td width="568" height="23">
      <input name="weburl" type="text" id="weburl" value="<%=rs("weburl")%>" size="50"> ��ǩ{webUrl} Ҫ��http://</td>
  </tr>
  <!--
    <tr>
    <td width="136" height="23" align="right">��ҳ�����ַ���</td>
    <td width="568" height="23">
      <input name="makeUrl" type="text" id="makeUrl" value="<%=rs("makeUrl")%>" size="50"> ��ǩ{makeUrl}</td>
  </tr>
  -->
  
      <tr>
    <td width="136" height="23" align="right">����ҳĿ¼��</td>
    <td width="568" height="23">
      <input name="makeUrl_class" type="text" id="makeUrl_class" value="<%=rs("makeUrl_class")%>" size="50"> ��ǩ{makeUrl_class}(����)</td>
  </tr>
  
  
      <tr>
        <td height="23" align="right">��ǩĿ¼��</td>
        <td height="23"><input name="makeUrl_tag" type="text" id="makeUrl_tag" value="<%=rs("makeUrl_tag")%>" size="50">
��ǩ{makeUrl_tag}(����)</td>
      </tr>
      <tr>
    <td width="136" height="23" align="right">��������ҳĿ¼��</td>
    <td width="568" height="23">
      <input name="makeUrl_flash" type="text" id="makeUrl_flash" value="<%=rs("makeUrl_flash")%>" size="50"> ��ǩ{makeUrl_flash}(����)</td>
  </tr>
  
      <tr>
    <td width="136" height="23" align="right">����ҳĿ¼��</td>
    <td width="568" height="23">
      <input name="makeUrl_flash_load" type="text" id="makeUrl_flash_load" value="<%=rs("makeUrl_flash_load")%>" size="50"> ��ǩ{makeUrl_flash_load}(����)</td>
  </tr>
  
    <tr>
    <td width="136" height="23" align="right">ͳ�ƴ��룺</td>
    <td width="568" height="23">
      <textarea name="countCode" cols="50" rows="5" id="countCode"><%=rs("countCode")%></textarea> ��ǩ{countCode}</td>
  </tr>
    <tr>
    <td width="136" height="23" align="right">������:</td>
    <td width="568" height="23">
      <input name="record" type="text" id="record" value="<%=rs("record")%>" size="50"> ��ǩ{record}</td>
  </tr>
  
    <tr>
    <td width="136" height="23" align="right">�ؽ��֣�</td>
    <td width="568" height="23">
      <input name="keywords" type="text" id="keywords" value="<%=rs("keywords")%>" size="50"> ��ǩ{keywords}</td>
  </tr>
    <tr>
    <td width="136" height="23" align="right">��վ˵��:</td>
    <td width="568" height="23">
      <input name="descriptions" type="text" id="descriptions" value="<%=rs("descriptions")%>" size="50">
 ��ǩ{descriptions}</td>
  </tr>
    <tr>
    <td width="136" height="23" align="right">��Ȩ��Ϣ:</td>
    <td width="568" height="23">
      <textarea name="copyright" cols="50" rows="3" id="copyright"><%=rs("copyright")%></textarea> ��ǩ{copyright}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">վ�����֣�</td>
    <td width="568" height="23">
      <input name="zzname" type="text" id="zzname" value="<%=rs("zzname")%>" size="50"> ��ǩ{zzname}</td>
  </tr> <tr>
    <td width="136" height="23" align="right">���䣺</td>
    <td width="568" height="23">
      <input name="webemail" type="text" id="webemail" value="<%=rs("webemail")%>" size="50"> ��ǩ{webemail}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">QQ��</td>
    <td width="568" height="23">
      <input name="webqq" type="text" id="webqq" value="<%=rs("webqq")%>" size="50"> ��ǩ{webqq}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">��½��վ���֣�</td>
    <td width="568" height="23">
      <input name="scoreLogin" type="text" id="scoreLogin" value="<%=rs("scoreLogin")%>" size="50"> ��ǩ{scoreLogin}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">�����ҳ���֣�</td>
    <td width="568" height="23">
      <input name="scoreBrowse" type="text" id="scoreBrowse" value="<%=rs("scoreBrowse")%>" size="50"> ��ǩ{scoreBrowse}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">�ƽ�ע����֣�</td>
    <td width="568" height="23">
      <input name="scoreSend" type="text" id="scoreSend" value="<%=rs("scoreSend")%>" size="50"> ��ǩ{scoreSend}</td>
  </tr>
  
   <tr>
    <td width="136" height="23" align="right">�����������ã�</td>
    <td width="568" height="23">
      ����
        <input name="warningTime" type="text" id="warningTime" value="<%=rs("warningTime")%>" size="15">
        ���ӳ���
        <input name="warningNum" type="text" id="warningNum" value="<%=rs("warningNum")%>" size="15">
        �������ҳ</td>
  </tr>
	   <tr>
    <td width="136" height="23" align="right">���ֶ�Q�ң�</td>
    <td width="568" height="23">
      ����
        <input name="scoreUnit" type="text" id="scoreUnit" value="<%=rs("scoreUnit")%>" size="15">
        �һ�
        <input name="QmoneyUnit" type="text" id="QmoneyUnit" value="<%=rs("QmoneyUnit")%>" size="15">
        Q��</td>
  </tr>
  

    
  <tr>
    <td width="136" height="10" align="right"></td>
    <td width="568" height="10"></td>
  </tr>
  <tr>
    <td width="136" height="18" align="right"></td>
    <td width="568" height="18"><input type="submit" value="�޸�����" name="B1"></td>
  </tr>
</table>
</form>
</body>
<%else%>
<%end if
%>
<%	set rs	=nothing
	conn.close
	set conn=nothing%>
</html>

