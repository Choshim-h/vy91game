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
	'ɾ��ScoreRecored���¼
	Conn.Execute"Delete From ScoreRecord Where scoreID="&scoreID
	'�����û���userScore����
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
	'ת��ҳ
	Response.write("<script>alert('ɾ���ɹ������ּ�¼��ɾ��������û������Ѽ���!');location.href='"&backUrl&"'</script>")
End if

%>






