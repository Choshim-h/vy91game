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
		html= "<br>&nbsp;<font color=red>����û������������Ϸ������һ�����°�!</font><br>&nbsp;���ڴ���վ����Ϸ�ģ���ϵͳ����ͳ�Ƴ���<br>&nbsp;��������ʲô��ͨ���������һ������<br>&nbsp;�ǳ�������������"&webname&"������Ϸ!"
		end if
		do while not rs.EOF
		html=html&"<li><a href=/"&makeUrl_flash&"/"&left(md5(rs("flashID")&md5Str),1)&""&rs("flashID")&"/ target=_blank&play>"&rs("online1Game")&"</a>("&rs("countOnline")&"��������)</li>"
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