<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="pay" then
	backUrl=request.ServerVariables("HTTP_REFERER")
	scoreToID=Request("scoreToID")
	userID=Request("userID")
	scoreTo=Request("scoreTo")
	
	'减去user当前申请兑换Q币数,减去user积分数
	set rs=server.CreateObject("ADODB.RecordSet")
	sql="select userScore,currToScore from [user] where id="&userID
			rs.open sql,conn,3,3
				if not rs.eof then
					rs("userScore")=rs("userScore")-scoreTo
					rs("currToScore")=rs("currToScore")-scoreTo
					rs.update
				end if
			rs.close
			
		'更改状态为已支付
		sql="select state,payDate from userScoreTo where scoreToID="&scoreToID
			rs.open sql,conn,3,3
				if not rs.eof then
					rs("state")="已支付"
					rs("payDate")=now()
					rs.update
				end if
			rs.close
		
set rs=nothing
conn.close
set conn=nothing
	'转向页
	Response.write("<script>alert('删除成功，积分记录已删除，相关用户积分已减掉!');location.href='"&backUrl&"'</script>")
End if

%>






