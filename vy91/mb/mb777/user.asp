<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><title>888网小游戏,在线小游戏,原创小游戏,flash小游戏</title>
<meta http-equiv=Content-Type content="text/html; charset=gbk">
<META name="Author" content="888网小游戏:www.wpez.cn">
<meta name="description" content="888网小游戏,小游戏,在线小游戏,原创小游戏,flash小游戏">
<meta name="keywords" content="888网小游戏,在线小游戏,原创小游戏,flash小游戏">
<link href="/images/public.css" rel="stylesheet" type="text/css" />
<link href="/images/888wang_index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
www_888wang_com_name=request.cookies("888wang")("username")
if (www_888wang_com_name)="" then
%>
您尚未登陆 | <a href="/user/userlogin.asp" target="_parent">登录</a> | <a href="/user/reg.asp" target="_parent">注册</a>
<%else%>

<a href="/u/<%=www_888wang_com_name%>/index.html" target="_parent"> <%=www_888wang_com_name%></a> | <a href="/user/logout.asp">退出</a>
<%end if
%>
</body>
</html>
