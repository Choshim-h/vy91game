<%
'读取网站配置信息,888wang.com小游戏网站系统，QQ：56566918
	set rs = server.CreateObject("ADODB.RecordSet")
	sql="select top 1 * from [system]"
	rs.open sql,conn,1,1
	if not rs.EOF then
 	webName = rs("webName")
	webUrl = rs("webUrl")
	webemail = rs("webemail")
	zzname = rs("zzname")
	webqq = rs("webqq")
	makeUrl = rs("makeUrl")
	makeUrl_class = rs("makeUrl_class")
	makeUrl_tag = rs("makeUrl_tag")
	makeUrl_flash = rs("makeUrl_flash")
	keywords = rs("keywords")
	descriptions = rs("descriptions")
	record = rs("record")
	copyright = rs("copyright")
	countCode = rs("countCode")
	md5Str="888wang_game" '生成网址包含的，如果更改了，需生成全站所有网页
	makeUrl_flash_load=rs("makeUrl_flash_load")
	
	scoreLogin = rs("scoreLogin")
	scoreBrowse = rs("scoreBrowse")
	scoreSend = rs("scoreSend")
	warningTime = rs("warningTime")
	warningNum = rs("warningNum")
	scoreUnit = rs("scoreUnit")
	QmoneyUnit = rs("QmoneyUnit")
	
	end if
	rs.close
	set rs=nothing
	
	function urlNews(id)
		urlNews="/news/news.asp?id="&id
	end function

%>
