<!--#include File="Conn.asp" -->
<!--#include file="Checkpost.asp"-->
<!--#include file="888wang_chkAdmin.asp"-->
<%CheckAdmin3%>
<%
if request("action")="del" then
	backUrl=request.ServerVariables("HTTP_REFERER")
	scoreID=Request("scoreID")
	tempUserScore=Request("userScore")
	userID=Request("userID")
	'删除ScoreRecored表记录
	Conn.Execute"Delete From ScoreRecord Where scoreID="&scoreID
	'减出用户表userScore积分
	set rs=server.CreateObject("ADODB.RecordSet")
	sql="select userScore from [user] where id="&userID
			rs.open sql,conn,3,3
				if not rs.eof then
					rs("userScore")=rs("userScore")-tempUserScore
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






