<!--#include file="../conn.asp"-->
<!--#include file="../inc/config_list.Asp"-->
<!--#include file="../inc/md5.asp"-->
       <%
		i=1
		maxList=10
		set rs = server.CreateObject("ADODB.RecordSet")
		sql="select count(flashID) as countOnline,flashID,onlineGame from onlineGame group by flashID,onlineGame order by count(flashID) desc "
		rs.open sql,conn,1,1
		if  rs.bof and rs.EOF  then 
		html= "<br>&nbsp;<font color=red>现在没有人在线玩游戏，你玩一个试下吧!</font><br>&nbsp;正在此网站玩游戏的，此系统将给统计出来<br>&nbsp;别人在玩什么，通过这里，您将一览无余<br>&nbsp;非常高兴您来到《"&webname&"》玩游戏!"
		end if
		do while not rs.EOF
		html=html&"<li><a href=/"&makeUrl_flash&"/"&left(md5(rs("flashID")&md5Str),1)&""&rs("flashID")&"/ target=_blank&play>"&rs("online1Game")&"</a>("&rs("countOnline")&"个人在玩)</li>"
	  %>
	  	
	  <%
			i=i+1
			if i>maxList then exit do
			rs.movenext
			loop
			rs.close
			set rs=nothing
	  %>
document.write("<script language=javascript>www_888wang_com_onLine.innerHTML='<%=html%>'</script>")