<!--#include file="conn.asp"-->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="inc/Style.css" rel="stylesheet" type="text/css">
<title>密码管理</title>
<script>
function check(){
	if(form2.indexPicNum.value>10){
		alert("不能大于10个");
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
设置个数 <input type="text" name="indexPicNum" size="5" value="<%=indexPicNum%>"> <input type="submit" value="设定">
</form>
</div>
<form method="POST" action="888wang.com_indexPic_m.asp?action=modi" name="form1">
<div id="showPic" style="margin:10px;">
<%
'每一组用$$$分开,组中用%%%分开,图片路径%%%标题%%%art

indexPicAll=Split(rs("indexPic"),"$$$") '保存为数组
indexPicAllOverID=ubound(indexPicAll) '获得上标
if indexPicNum="" then
	indexPicNum=indexPicAllOverID
end if
for indexPicAllStartID=1 to indexPicNum
	if indexPicAllStartID<=indexPicAllOverID then
			indexPicSmall=Split(indexPicAll(indexPicAllStartID),"%%%")%>
			<table width="97%" height="100" border="0" cellpadding="0" cellspacing="0"  style="margin-top:8px;border:1px solid #AAD2F6;">
<tr>
    <td colspan="2" bgcolor="#F0F8FF" height="20px">第个<%=indexPicAllStartID%>图片信息</td>
    </tr>
  <tr>
    <td width="24%" rowspan="3"><img src="<%=indexPicSmall(1)%>" width="100px"/></td>
    <td width="76%">图片地址：<input type="text" name="indexPicUrl<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(1)%>"> 尺寸:246*160为佳</td>
  </tr>
  <tr>
    <td>链接网址：<input type="text" name="indexPicLink<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(2)%>"></td>
  </tr>
  <tr>
    <td>图片标题：<input type="text" name="indexPicTitle<%=indexPicAllStartID%>" size="30" value="<%=indexPicSmall(3)%>"></td>
  </tr>
</table>
		<%else%>
			<table width="97%" height="100" border="0" cellpadding="0" cellspacing="0"  style="margin-top:8px;border:1px solid #AAD2F6;">
<tr>
    <td colspan="2" bgcolor="#F0F8FF" height="20px">第个<%=indexPicAllStartID%>图片信息</td>
    </tr>
  <tr>
    <td width="24%" rowspan="3">还未设置图片</td>
    <td width="76%">图片地址：<input type="text" name="indexPicUrl<%=indexPicAllStartID%>" size="30"> 尺寸:246*160为佳</td>
  </tr>
  <tr>
    <td>链接网址：<input type="text" name="indexPicLink<%=indexPicAllStartID%>" size="30"></td>
  </tr>
  <tr>
    <td>图片标题：<input type="text" name="indexPicTitle<%=indexPicAllStartID%>" size="30"></td>
  </tr>
</table>
	<%end if%>

<%
next
%>
</div>
<div style="text-align:right;">
<input type="hidden" name="indexPicNum" value="<%=indexPicNum%>"/>
<input type="submit" value="提交更改"/>&nbsp;&nbsp;</div>
</form>
</body>
<%else%>
没有此数据，请向数据库插入一条数据
<%end if
	rs.close
	set rs=nothing
	%>
</html>

