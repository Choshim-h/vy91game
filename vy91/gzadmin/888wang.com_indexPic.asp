<!--#include file="conn.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<title>�������</title>
<script>
function check(){
	if(form2.indexPicNum.value>10){
		alert("���ܴ���10��");
		return false;
	}
	return true;
}
</script>
</head>
<%
dim indexNum
indexPicNum=request("indexPicNum")
set rs = createobject("ADODB.recordset")
SQL = "select top 1 indexPic from system"
rs.open SQL,conn
if not rs.eof then
%>

<body leftmargin="5" topmargin="5">
<div style="margin:10px;height:30px;text-align:center;background-color: #729CEE;padding-top:5px;">
<form method="POST" action="888wang.com_indexPic.asp" name="form2" onSubmit="return check();">
���ø��� <input type="text" name="indexPicNum" size="5" value="<%=indexPicNum%>"> <input type="submit" value="�趨">
</form>
</div>
<form method="POST" action="888wang.com_indexPic_m.asp?action=modi" name="form1">
<div id="showPic" style="margin:10px;">
<%
'ÿһ����$$$�ֿ�,������%%%�ֿ�,ͼƬ·��%%%����%%%art

indexPicAll=Split(rs("indexPic"),"$$$") '����Ϊ����
indexPicAllOverID=ubound(indexPicAll) '����ϱ�
if indexPicNum="" then
	indexPicNum=indexPicAllOverID
end if
for indexPicAllStartID=1 to indexPicNum
	if indexPicAllStartID<=indexPicAllOverID then
			indexPicSmall=Split(indexPicAll(indexPicAllStartID),"%%%")%>
			<table width="97%" height="100" border="0" cellpadding="0" cellspacing="0"  style="margin-top:8px;border:1px solid #AAD2F6;">
<tr>
    <td colspan="2" bgcolor="#F0F8FF" height="20px">�ڸ�<%=indexPicAllStartID%>ͼƬ��Ϣ</td>
    </tr>
  <tr>
    <td width="24%" rowspan="3"><img src="<%=indexPicSmall(1)%>" width="100px"/></td>
    <td width="76%">ͼƬ��ַ��<input type="text" name="indexPicUrl<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(1)%>"> �ߴ�:246*160Ϊ��</td>
  </tr>
  <tr>
    <td>������ַ��<input type="text" name="indexPicLink<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(2)%>"></td>
  </tr>
  <tr>
    <td>ͼƬ���⣺<input type="text" name="indexPicTitle<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(3)%>"></td>
  </tr>
</table>
		<%else%>
			<table width="97%" height="100" border="0" cellpadding="0" cellspacing="0"  style="margin-top:8px;border:1px solid #AAD2F6;">
<tr>
    <td colspan="2" bgcolor="#F0F8FF" height="20px">�ڸ�<%=indexPicAllStartID%>ͼƬ��Ϣ</td>
    </tr>
  <tr>
    <td width="24%" rowspan="3">��δ����ͼƬ</td>
    <td width="76%">ͼƬ��ַ��<input type="text" name="indexPicUrl<%=indexPicAllStartID%>" size="30"> �ߴ�:246*160Ϊ��</td>
  </tr>
  <tr>
    <td>������ַ��<input type="text" name="indexPicLink<%=indexPicAllStartID%>" size="30"></td>
  </tr>
  <tr>
    <td>ͼƬ���⣺<input type="text" name="indexPicTitle<%=indexPicAllStartID%>" size="30"></td>
  </tr>
</table>
	<%end if%>

<%
next
%>
</div>
<div style="text-align:right;">
<input type="hidden" name="indexPicNum" value="<%=indexPicNum%>"/>
<input type="submit" value="�ύ����"/>&nbsp;&nbsp;</div>
</form>
</body>
<%else%>
û�д����ݣ��������ݿ����һ������
<%end if
	rs.close
	set rs=nothing
	%>
</html>

