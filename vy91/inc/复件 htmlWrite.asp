<%
www_888wang_com_id=session("userid")
www_888wang_com_name=session("username")
IsUser=Session("IsUser")
if IsUser <>true then
%>
document.write("<script language=javascript>user.innerHTML='您尚未登陆 | <a href=/user/userlogin.asp target=_parent>登录</a> | <a href=/user/reg.asp target=_parent>注册</a>'</script>")
<%else%>
document.write("<script language=javascript>user.innerHTML='您好:<a href=/user/usershow.asp?username=<%=www_888wang_com_name%> target=_parent> <%=www_888wang_com_name%></a> | <a href=/user/usershow.asp?username=<%=www_888wang_com_name%> target=_parent>我的游戏</a> | <a href=/user/logout.asp>退出</a>'</script>")
document.write("<script language=javascript>regMessage.innerHTML=''</script>")
<%
end if
%>


<!--#include file="../conn.asp"-->
<!--#include file="config_list.Asp"-->

<%

'浏览网页加积分
if IsUser=true then	
		
   ip=Request.ServerVariables("REMOTE_ADDR")
	set rs=server.createobject("adodb.recordset")	
	
	'如果此用户未报警，则执行加分并写入记录表,1 通过ID读到用户报警字段
	       sql="select userWarning from [user] where id="&www_888wang_com_id
			rs.open sql,conn,1,3
				if not rs.eof then
					userWarning=rs("userWarning")
					rs.update
				end if
			rs.close

	if 	userWarning <> "yes" or isNull(userWarning) then

	'写入用户表积分
	sql="select userScore from [user] where id="&www_888wang_com_id
			'res(sql)
			rs.open sql,conn,1,3
				if not rs.eof then
					rs("userScore")=rs("userScore")+scoreBrowse
					rs.update
				end if
			rs.close
	'添加积分记录
	    url=request.servervariables("HTTP_REFERER")		
	    sql="select * from ScoreRecord"
		rs.open sql,conn,1,3
					rs.addnew
					rs("userID")=www_888wang_com_id
					rs("userName")=www_888wang_com_name
					rs("scoreType")="浏览网页"
					rs("score")=scoreBrowse
					rs("addDate")=now()
					rs("IP")=ip
					rs("url")=url
				rs.update
				rs.close	
		'统计单位时间里，是否超出次数，有则更改用户表报警字段
		'sql与access不同
		if sqlconn=0 then
				sql="select count(scoreID) from ScoreRecord where DATEDIFF('n',addDate,now())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='浏览网页'"
			else
				sql="select count(scoreID) from ScoreRecord where DATEDIFF(n,addDate,getDATE())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='浏览网页'"
		end if
		

			rs.open sql,conn,1,3
					userWarningNum=rs(0)
			rs.close
			
			'如果超过，
			if userWarningNum>warningNum then
			
			'标识最后一次记录warning为yes
			sql="select top 1  warning from ScoreRecord where DATEDIFF(n,addDate,getDATE())<"&warningTime&" and userID="&www_888wang_com_id&" and ip='"&ip&"' and scoreType='浏览网页' order by addDate desc"
			rs.open sql,conn,1,3
			if not rs.eof then
				rs("warning")="yes"
				rs.update
			end if
			rs.close
			
			'更改用户表报警字段
				sql="select userWarning from [user] where id="&www_888wang_com_id
				rs.open sql,conn,1,3
					if not rs.eof then
						rs("userWarning")="yes"
						rs.update
					end if
				rs.close
				
			end if
			
	end if '是否报警结束	
end if '是否存在用户结束

set rs=nothing
conn.close
set conn=nothing
%>