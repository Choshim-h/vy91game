<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><title>888��С��Ϸ,����С��Ϸ,ԭ��С��Ϸ,flashС��Ϸ</title>
<meta http-equiv=Content-Type content="text/html; charset=gbk">
<META name="Author" content="888��С��Ϸ:www.wpez.cn">
<meta name="description" content="888��С��Ϸ,С��Ϸ,����С��Ϸ,ԭ��С��Ϸ,flashС��Ϸ">
<meta name="keywords" content="888��С��Ϸ,����С��Ϸ,ԭ��С��Ϸ,flashС��Ϸ">
<link href="/images/public.css" rel="stylesheet" type="text/css" />
<link href="/images/888wang_index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
www_888wang_com_name=request.cookies("888wang")("username")
if (www_888wang_com_name)="" then
%>
����δ��½ | <a href="/user/userlogin.asp" target="_parent">��¼</a> | <a href="/user/reg.asp" target="_parent">ע��</a>
<%else%>

<a href="/u/<%=www_888wang_com_name%>/index.html" target="_parent"> <%=www_888wang_com_name%></a> | <a href="/user/logout.asp">�˳�</a>
<%end if
%>
</body>
</html>
